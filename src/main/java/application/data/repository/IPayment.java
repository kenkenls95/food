package application.data.repository;

import application.data.entity.Payment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface IPayment extends JpaRepository<Payment,Long> {
    Payment findByOrderId(@Param("orderId") Long orderId);
}
