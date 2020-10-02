package application.data.service;

import application.constant.ImageProductConstant;
import application.data.entity.Category;
import application.data.entity.Document;
import application.data.entity.Product;
import application.data.repository.ICategory;
import application.data.repository.IDocument;
import application.data.repository.IProduct;
import application.model.PaginableItemList;
import application.model.dto.CategoryVM;
import application.model.dto.DocumentVM;
import application.model.dto.ProductVM;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;


@Service
public class ProductService extends BaseService<IProduct, Product> {

    private static final Logger logger = LogManager.getLogger(ProductService.class);

    private IProduct iProduct;

    @Autowired
    IDocument iDocument;

    @Autowired
    DocumentService documentService;

    public ProductService(IProduct iProduct){
        setRepository(iProduct);
        this.iProduct = iProduct;
    }

    public List<ProductVM> getDataView(List<Product> lst){
        List<ProductVM> productVMList = lst
                .stream().map(product -> {
                    ProductVM p = modelMapper.map(product,ProductVM.class);
                    DocumentVM d = documentService.getDocumentByProduct(p.getProductId());
                    p.setDocumentVM(d);
                    return p;
                })
                .collect(Collectors.toList());
        return productVMList;
    }

    public PaginableItemList<ProductVM> getListProducts(int pageSize, int pageNumber) {

        PaginableItemList<ProductVM> paginableItemList = new PaginableItemList<>();
        paginableItemList.setPageSize(pageSize);
        paginableItemList.setPageNumber(pageNumber);

        Page<Product> pages = iProduct.findAll(PageRequest.of(pageNumber - 1,pageSize,Sort.by("name").descending()));
        paginableItemList.setTotalProducts(pages.getTotalElements());
        paginableItemList.setListData(getDataView(pages.getContent()));
        return paginableItemList;
    }

    public List<ProductVM> searchProduct(String key){
        List<Product> productList =  iProduct.searchProduct(key);
        return productList
                .stream().map(product -> modelMapper.map(product,ProductVM.class))
                .collect(Collectors.toList());
    }
}
