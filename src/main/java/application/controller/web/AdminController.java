package application.controller.web;

import application.constant.ImageProductConstant;
import application.constant.OrderConstant;
import application.constant.ReadNumber;
import application.data.entity.*;
import application.data.repository.*;
import application.data.service.ProductService;
import application.model.dto.CategoryVM;
import application.model.dto.ProductVM;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.math.BigDecimal;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {
    private static final Logger logger = LogManager.getLogger(AdminController.class);

    @Autowired
    ModelMapper modelMapper;

    @Autowired
    IProduct iProduct;

    @Autowired
    ICategory iCategory;

    @Autowired
    IDocument iDocument;

    @Autowired
    IPayment iPayment;

    @Autowired
    IOrderProduct iOrderProduct;

    @Autowired
    ProductService productService;

    @Autowired
    IOrder iOrder;

    @Autowired
    IPaymentDetail iPaymentDetail;

    @GetMapping
    String index(Model model) {
        return "admin/index";
    }

    @GetMapping("/invoice")
    String invoice(Model model) {
        model.addAttribute("invoices", iPaymentDetail.findAll());
        return "admin/invoice";
    }

    @GetMapping("/booking")
    String booking(Model model) {
        try {
            List<Product> lst = iProduct.findAll();
            model.addAttribute("lstProduct", productService.getDataView(lst));
            Order o = new Order();
            long unixTimestamp = Instant.now().getEpochSecond();
            String name = "Order No." + unixTimestamp;
            o.setName(name);
            o.setType(OrderConstant.TABLE);
            Date d = new Date();
            o.setDate(new java.sql.Date(d.getTime()));
            model.addAttribute("orderId", iOrder.save(o).getOrderId());
        } catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage());
        }
        return "admin/booking";
    }

    @PostMapping("/booking/pay")
    String pay(Model model, @Valid Payment payment) {
        try {
            payment.setStatus(1L);
            iPayment.save(payment);
        } catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage());
        }
        return "updateAndClose";
    }

    @GetMapping("/booking/bill/{orderId}")
    String bill(Model model, @PathVariable("orderId") Long orderId) {
        List<OrderProduct> orderProducts = iOrderProduct.findByOrderId(orderId);
        Double totalPrice = 0D;
        for (OrderProduct od : orderProducts) {
            Double price = od.getPrice().doubleValue();
            Double total = price * od.getQuantity();
            totalPrice += total;
        }
        model.addAttribute("order", iOrder.findById(orderId).get());
        model.addAttribute("content", orderProducts);
        model.addAttribute("totalPrice", new BigDecimal(totalPrice));
        model.addAttribute("totalPriceText", ReadNumber.numberToString(new BigDecimal(totalPrice)));
        model.addAttribute("payment",iPayment.findByOrderId(orderId));
        return "admin/bill";
    }

    @GetMapping("/lstCat")
    String lstCat(Model model) {
        try {
            List<CategoryVM> rs = new ArrayList<>();
            iCategory.findAll().forEach(x -> {
                CategoryVM c = modelMapper.map(x, CategoryVM.class);
                rs.add(c);
            });
            model.addAttribute("lstCat", rs);
        } catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage());
        }
        return "admin/lstCat";
    }

    @GetMapping("/lstProduct")
    String lstProduct(Model model) {
        try {
            List<Product> lst = iProduct.findAll();
            model.addAttribute("lstProduct", productService.getDataView(lst));
        } catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage());
        }
        return "admin/listProduct";
    }

    @GetMapping("/prepareInsertProduct")
    String prepareInsertProduct(Model model) {
        try {
            model.addAttribute("product", new ProductVM());
            model.addAttribute("category", iCategory.findAll());
        } catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage());
        }
        return "admin/prepareProduct";
    }

    @GetMapping("/prepareUpdateProduct/{id}")
    String prepareUpdateProduct(Model model, @PathVariable("id") Long id) {
        try {
            Product p = iProduct.findById(id).get();
            model.addAttribute("product", modelMapper.map(p, ProductVM.class));
            model.addAttribute("category", iCategory.findAll());
            model.addAttribute("url", "/admin/updateProduct");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage());
        }
        return "admin/prepareProduct";
    }

    @PostMapping("/updateProduct")
    String updateProduct(Model model, @Valid ProductVM p) {
        try {
            Product product = modelMapper.map(p, Product.class);
            List<String> pathImage = Arrays.asList(p.getChildImages().split(";"));
            String mainImage = Arrays.asList(p.getMainImage().split(";")).get(0);
            List<String> cat = p.getCategoryTag();
            List<Category> lstCat = new ArrayList<>();
            for (int i = 0; i < cat.size(); i++) {
                Category c = iCategory.findById(new Long(cat.get(i))).get();
                lstCat.add(c);
            }
            product.setCategory(lstCat);
            product.setIsActive(1L);
            Long parentId = iProduct.save(product).getProductId();
            iDocument.deleteDocumentByParentId(p.getProductId());
            iDocument.save(new Document(parentId, mainImage, ImageProductConstant.MAIN));
            pathImage.forEach(x -> {
                Document doc = new Document(parentId, x, ImageProductConstant.CHILD);
                iDocument.save(doc);
            });

        } catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage());
        }
        return "updateAndClose";
    }

    @GetMapping("/prepareInsertCat")
    String prepareInsertCat(Model model) {
        try {
            model.addAttribute("category", new CategoryVM());
        } catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage());
        }
        return "admin/prepareCat";
    }

    @GetMapping("/prepareUpdateCat/{id}")
    String prepareUpdateCat(Model model, @PathVariable("id") Long id) {
        try {
            model.addAttribute("category", modelMapper.map(iCategory.findById(id).get(), CategoryVM.class));
        } catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage());
        }
        return "admin/prepareCat";
    }

    @PostMapping("/updateCat")
    String updateCat(Model model, @Valid CategoryVM c) {
        try {
            Category category = modelMapper.map(c, Category.class);
            category.setIsActive(1L);
            iCategory.save(category);
        } catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage());
        }
        return "updateAndClose";
    }

    @GetMapping("/deleteCat/{id}")
    String deleteCat(Model model, @PathVariable("id") Long id) {
        try {
            iCategory.deleteById(id);
        } catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage());
        }
        return "updateAndClose";
    }

    @GetMapping("/deleteProduct/{id}")
    String deleteProduct(Model model, @PathVariable("id") Long id) {
        try {
            iProduct.deleteById(id);
        } catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage());
        }
        return "updateAndClose";
    }

    @GetMapping("/chart")
    String chart(Model model) {
        try {
            model.addAttribute("category", new CategoryVM());
        } catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage());
        }
        return "admin/prepareCat";
    }

}
