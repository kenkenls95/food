package application.model.dto;

import java.math.BigDecimal;
import java.util.List;

public class ProductVM {
    private Long productId;
    private String name;
    private BigDecimal price;
    private Long saleOff;
    private String description;
    private List<CategoryVM> category;
    private List<String> categoryTag;
    private String childImages;
    private String mainImage;
    private DocumentVM documentVM;

    public DocumentVM getDocumentVM() {
        return documentVM;
    }

    public void setDocumentVM(DocumentVM documentVM) {
        this.documentVM = documentVM;
    }

    public String getMainImage() {
        return mainImage;
    }

    public void setMainImage(String mainImage) {
        this.mainImage = mainImage;
    }

    public List<String> getCategoryTag() {
        return categoryTag;
    }

    public void setCategoryTag(List<String> categoryTag) {
        this.categoryTag = categoryTag;
    }

    public String getChildImages() {
        return childImages;
    }

    public void setChildImages(String childImages) {
        this.childImages = childImages;
    }

    public Long getProductId() {
        return productId;
    }

    public void setProductId(Long productId) {
        this.productId = productId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public Long getSaleOff() {
        return saleOff;
    }

    public void setSaleOff(Long saleOff) {
        this.saleOff = saleOff;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<CategoryVM> getCategory() {
        return category;
    }

    public void setCategory(List<CategoryVM> category) {
        this.category = category;
    }
}
