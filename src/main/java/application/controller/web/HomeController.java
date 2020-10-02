package application.controller.web;

import application.constant.ImageProductConstant;
import application.data.entity.Category;
import application.data.entity.Document;
import application.data.entity.Product;
import application.data.entity.User;
import application.data.repository.IProduct;
import application.data.service.DocumentService;
import application.data.service.ProductService;
import application.model.PaginableItemList;
import application.model.dto.CategoryVM;
import application.model.dto.DocumentVM;
import application.model.dto.ProductVM;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/")
public class HomeController {
    @Autowired
    ModelMapper modelMapper;

    @Autowired
    IProduct iProduct;

    @Autowired
    ProductService productService;

    @Autowired
    DocumentService documentService;

    @GetMapping
    String home(Model model,  @RequestParam(required = false) String page) {
        PaginableItemList<ProductVM> rs = productService.getListProducts(10, page == null ? 1 : new Long(page).intValue());
        model.addAttribute("page", rs);
        if (rs.getPageSize() != 0) {
            model.addAttribute("totalPage", Math.ceil(rs.getTotalProducts() / rs.getPageSize()));
        }
        return "index";
    }

    @GetMapping("/product/{id}")
    String product(Model model, @PathVariable("id") Long id){
        Product p = iProduct.findById(id).get();
        ProductVM productVM = modelMapper.map(p, ProductVM.class);
        DocumentVM d = documentService.getDocumentByProduct(productVM.getProductId());
        productVM.setDocumentVM(d);
        model.addAttribute("p", productVM);
        return "detail";
    }

    @GetMapping("/history")
    String history() {
        return "history";
    }

    @GetMapping("/help")
    String help() {
        return "help";
    }

    @GetMapping("/login")
    String login(Model model) {
        model.addAttribute("user", new User());
        return "login";
    }

    @GetMapping("/logout")
    String logout() {
        return "logout";
    }

    @GetMapping("/403")
    String error() {
        return "error/403";
    }
}
