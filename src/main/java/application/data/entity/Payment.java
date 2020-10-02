package application.data.entity;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Objects;

@Entity
public class Payment {
    private Long paymentId;
    private Long orderId;
    private BigDecimal price;
    private BigDecimal extra;
    private Long status;

    @Basic
    @Column(name = "status")
    public Long getStatus() {
        return status;
    }

    public void setStatus(Long status) {
        this.status = status;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "payment_id")
    public Long getPaymentId() {
        return paymentId;
    }

    public void setPaymentId(Long paymentId) {
        this.paymentId = paymentId;
    }

    @Basic
    @Column(name = "order_id")
    public Long getOrderId() {
        return orderId;
    }

    public void setOrderId(Long orderId) {
        this.orderId = orderId;
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
    @Column(name = "extra")
    public BigDecimal getExtra() {
        return extra;
    }

    public void setExtra(BigDecimal extra) {
        this.extra = extra;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Payment payment = (Payment) o;
        return paymentId == payment.paymentId &&
                Objects.equals(orderId, payment.orderId) &&
                Objects.equals(price, payment.price) &&
                Objects.equals(extra, payment.extra);
    }

    @Override
    public int hashCode() {
        return Objects.hash(paymentId, orderId, price, extra);
    }
}
