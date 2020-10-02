package application.data.repository;

import application.data.entity.Category;
import application.data.entity.Order;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IOrder extends JpaRepository<Order,Long> {

}
