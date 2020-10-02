package application.data.repository;

import application.data.entity.OrderDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface IOrderDetail extends JpaRepository<OrderDetail, Long> {

    OrderDetail findByFoodIdAndOrderId(@Param("foodId") Long foodId, @Param("orderId") Long orderId);

//    @Query("update OrderDetail o set o.quantity = :quantity where o.orderDetailId = :orderDetailId")
//    void updateQuantity(@Param("orderDetailId") Long orderDetailId, @Param("quantity") Long quantity);

}
