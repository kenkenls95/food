package application.data.entity;



import javax.persistence.*;
import java.math.BigDecimal;
import java.util.*;

@Entity
public class Product {
    private Long productId;
    private String name;
    private String description;
    private BigDecimal price;
    private Long saleOff;
    private Long isActive;
    private List<Category> category = new ArrayList<>();

    @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinTable(name = "product_tag", //Tạo ra một join Table tên là "address_person"
            joinColumns = @JoinColumn(name = "product_Id"),  // TRong đó, khóa ngoại chính là address_id trỏ tới class hiện tại (Address)
            inverseJoinColumns = @JoinColumn(name = "category_id") //Khóa ngoại thứ 2 trỏ tới thuộc tính ở dưới (Person)
    )
    public List<Category> getCategory() {
        return category;
    }

    public void setCategory(List<Category> category) {
        this.category = category;
    }

    @Id
    @Column(name = "product_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long getProductId() {
        return productId;
    }

    public void setProductId(Long productId) {
        this.productId = productId;
    }

    @Basic
    @Column(name = "name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "description")
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Basic
    @Column(name = "price")
    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    @Basic
    @Column(name = "sale_off")
    public Long getSaleOff() {
        return saleOff;
    }

    public void setSaleOff(Long saleOff) {
        this.saleOff = saleOff;
    }

    @Basic
    @Column(name = "is_active")
    public Long getIsActive() {
        return isActive;
    }

    public void setIsActive(Long isActive) {
        this.isActive = isActive;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Product product = (Product) o;
        return productId == product.productId &&
                price == product.price &&
                saleOff == product.saleOff &&
                isActive == product.isActive &&
                Objects.equals(name, product.name) &&
                Objects.equals(description, product.description);
    }

    @Override
    public int hashCode() {
        return Objects.hash(productId, name, description, price, saleOff, isActive);
    }
}
