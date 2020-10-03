package application.controller.api;

import application.common.Common;
import application.controller.BaseController;
import application.data.entity.Category;
import application.data.entity.Product;
import application.data.repository.IPayment;
import application.data.repository.IPaymentDetail;
import application.data.repository.IProduct;
import application.data.service.CategoryService;
import application.data.service.ProductService;
import application.model.ResponseModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/product")
public class TestController extends BaseController<ProductService, Product> {

    private ProductService productService;
//
//    @Autowired
//    IPaymentDetail iPaymentDetail;
//
//
//    public TestController(ProductService productService) {
//        setService(productService);
//        this.productService = productService;
//    }
//
//    @GetMapping("/test")
//    public ResponseModel get(){
//        return Common.setMetaData(iPaymentDetail.chart());
//    }
}
