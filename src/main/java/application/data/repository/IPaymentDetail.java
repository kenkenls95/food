package application.data.repository;

import application.data.entity.PaymentDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IPaymentDetail extends JpaRepository<PaymentDetail, Long> {
 

}
