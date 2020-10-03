package application.controller.api;

import application.common.Common;
import application.data.entity.*;
import application.data.repository.*;
import application.data.service.ProductService;
import application.model.ResponseModel;
import application.model.dto.ProductVM;
import application.model.pojo.OrderDetailPJ;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.parameters.P;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.List;

@RestController
@RequestMapping("/api")
public class OrderController {

    @Autowired
    IOrderDetail iOrderDetail;

    @Autowired
    IProduct iProduct;

    @Autowired
    IOrderProduct iOrderProduct;

    @Autowired
    IOrder iOrder;

    @Autowired
    IPayment iPayment;

    @PostMapping("/order")
    ResponseModel addOrder(@RequestBody OrderDetailPJ o) {
        try {
            OrderDetail od = iOrderDetail.findByFoodIdAndOrderId(o.getProductId(), o.getOrderId());
            Product p = iProduct.getOne(o.getProductId());
            if (od == null) {
                od = new OrderDetail();
                od.setFoodId(p.getProductId());
                od.setOrderId(o.getOrderId());
                od.setPrice(p.getPrice());
                od.setQuantity(1L);
                iOrderDetail.save(od);
            } else {
                Long quantity = od.getQuantity();
                od.setQuantity(quantity + 1L);
                iOrderDetail.save(od);
            }
        } catch (Exception e) {
            e.printStackTrace();
            return Common.setMetaData(false);
        }
        return Common.setMetaData(true);
    }

    @PutMapping("/order")
    ResponseModel detailOrder(@RequestBody OrderDetailPJ o) {
        try {
            return Common.setMetaData(iOrderProduct.findByOrderId(o.getOrderId()));
        } catch (Exception e) {
            e.printStackTrace();
            return Common.setMetaData(false);
        }
    }

    @PostMapping("/order/qty")
    ResponseModel qty(@RequestBody OrderDetailPJ o) {
        try {
            OrderDetail od = iOrderDetail.getOne(o.getOrderDetailId());
            od.setQuantity(o.getQuantity());
            iOrderDetail.save(od);
            return Common.setMetaData(true);
        } catch (Exception e) {
            e.printStackTrace();
            return Common.setMetaData(false);
        }
    }

    @DeleteMapping("/order/{orderDetailId}")
    ResponseModel delete(@PathVariable("orderDetailId") Long orderDetailId) {
        try {
            iOrderDetail.deleteById(orderDetailId);
            return Common.setMetaData(true);
        } catch (Exception e) {
            e.printStackTrace();
            return Common.setMetaData(false);
        }
    }

    @PostMapping("/order/create")
    ResponseModel createBill(@RequestBody OrderDetailPJ o) {
        try {
            Payment payment = new Payment();
            payment.setOrderId(o.getOrderId());
            List<OrderProduct> orderProducts = iOrderProduct.findByOrderId(o.getOrderId());
            Double totalPrice = 0D;
            for (OrderProduct op : orderProducts) {
                Double price = op.getPrice().doubleValue();
                totalPrice += price * op.getQuantity();
            }
            payment.setPrice(new BigDecimal(totalPrice));
            iPayment.save(payment);
            Long type = o.getType();
            Order oo = iOrder.getOne(o.getOrderId());
            oo.setType(type);
            iOrder.save(oo);
            return Common.setMetaData(true);
        } catch (Exception e) {
            e.printStackTrace();
            return Common.setMetaData(false);
        }
    }

    @GetMapping("test")
    ResponseModel test(){
        return Common.setMetaData(iOrder.findAll());
    }


}
