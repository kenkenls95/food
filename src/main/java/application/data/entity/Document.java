package application.data.entity;

import javax.persistence.*;
import java.sql.Date;
import java.util.Objects;

@Entity
public class Document {
    private Long documentId;
    private Long type;
    private Long parentId;
    private String path;
    private Long isActive;

    @Id
    @Column(name = "document_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long getDocumentId() {
        return documentId;
    }

    public void setDocumentId(Long documentId) {
        this.documentId = documentId;
    }

    @Basic
    @Column(name = "type")
    public Long getType() {
        return type;
    }

    public void setType(Long type) {
        this.type = type;
    }

    @Basic
    @Column(name = "parent_id")
    public Long getParentId() {
        return parentId;
    }

    public void setParentId(Long parentId) {
        this.parentId = parentId;
    }

    @Basic
    @Column(name = "path")
    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }


    @Basic
    @Column(name = "is_active")
    public Long getIsActive() {
        return isActive;
    }

    public void setIsActive(Long isActive) {
        this.isActive = isActive;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Document document = (Document) o;
        return documentId == document.documentId &&
                type == document.type &&
                parentId == document.parentId &&
                isActive == document.isActive &&
                Objects.equals(path, document.path);
    }

    @Override
    public int hashCode() {
        return Objects.hash(documentId, type, parentId, path, isActive);
    }

    public Document(Long parentId, String path, Long type) {
        this.parentId = parentId;
        this.path = path;
        this.type = type;
    }


    public Document() {
    }
}
