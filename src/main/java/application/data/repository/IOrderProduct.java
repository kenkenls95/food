package application.data.repository;

import application.data.entity.OrderProduct;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IOrderProduct extends JpaRepository<OrderProduct, Long> {

    List<OrderProduct> findByOrderId(@Param("orderId") Long orderId);


}
