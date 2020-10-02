package application.data.entity;

import org.springframework.data.annotation.Immutable;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Immutable
@Table(name = "payment_detail", schema = "food" )
public class PaymentDetail {
    private int paymentId;
    private Integer orderId;
    private String name;
    private Double price;
    private Double extra;
    private String status;
    private String author;
    private String type;

    @Basic
    @Id
    @Column(name = "payment_id")
    public int getPaymentId() {
        return paymentId;
    }

    public void setPaymentId(int paymentId) {
        this.paymentId = paymentId;
    }

    @Basic
    @Column(name = "order_id")
    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
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
    @Column(name = "price")
    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    @Basic
    @Column(name = "extra")
    public Double getExtra() {
        return extra;
    }

    public void setExtra(Double extra) {
        this.extra = extra;
    }

    @Basic
    @Column(name = "status")
    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Basic
    @Column(name = "author")
    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    @Basic
    @Column(name = "type")
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        PaymentDetail that = (PaymentDetail) o;
        return paymentId == that.paymentId &&
                Objects.equals(orderId, that.orderId) &&
                Objects.equals(name, that.name) &&
                Objects.equals(price, that.price) &&
                Objects.equals(extra, that.extra) &&
                Objects.equals(status, that.status) &&
                Objects.equals(author, that.author) &&
                Objects.equals(type, that.type);
    }

    @Override
    public int hashCode() {
        return Objects.hash(paymentId, orderId, name, price, extra, status, author, type);
    }
}
