package application.data.repository;

import application.data.entity.Product;
import application.data.entity.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IProduct extends JpaRepository<Product,Long> {

    @Query(value = "select p.* from product p join product_tag pt on pt.product_Id = p.product_id join category c on c.category_id = pt.category_id where p.name like CONCAT('%',:key,'%') or c.name like CONCAT('%',:key,'%')",nativeQuery = true)
    List<Product> searchProduct(@Param("key") String key);

    @Query("update Product set isActive = 0 where productId = :id")
    void deleteById(@Param("id") Long id);

    @Query("select p from Product p where p.isActive = 1 ")
    List<Product> findAll();

}
