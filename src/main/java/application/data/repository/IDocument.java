package application.data.repository;

import application.data.entity.Document;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;

import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public interface IDocument extends JpaRepository<Document,Long> {


    void deleteDocumentByParentId(@Param("parentId") Long parentId);

    List<Document> getAllByDocumentIdAndType(@Param("parentId") Long parentId, @Param("type") Long type);

    @Query("select d.path from Document d where d.parentId = :parentId and d.type = :type")
    List<String> getPathByParentIdAndType(@Param("parentId") Long parentId, @Param("type") Long type);

}
