package application.data.repository;

import application.data.entity.Category;
import application.data.entity.Product;
import application.data.entity.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ICategory extends JpaRepository<Category,Long> {

    @Query("update Category set isActive = 0 where categoryId = :id")
    void deleteById(@Param("id") Long id);

    @Query("select c from Category c where c.isActive = 1 ")
    List<Category> findAll();
}
