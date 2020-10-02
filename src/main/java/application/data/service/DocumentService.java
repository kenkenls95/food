package application.data.service;

import application.constant.ImageProductConstant;
import application.data.entity.Category;
import application.data.entity.Document;
import application.data.repository.ICategory;
import application.data.repository.IDocument;
import application.model.dto.DocumentVM;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DocumentService extends BaseService<IDocument, Document> {

    private static final Logger logger = LogManager.getLogger(DocumentService.class);

    private IDocument iDocument;

    public DocumentService(IDocument iDocument) {
        setRepository(iDocument);
        this.iDocument = iDocument;
    }

    public List<Document> getAllByDocumentIdAndType(Long parentId, Long type) {
        return iDocument.getAllByDocumentIdAndType(parentId, type);
    }

    public DocumentVM getDocumentByProduct(Long parentId) {
        List<String> mainImages = iDocument.getPathByParentIdAndType(parentId, ImageProductConstant.MAIN);
        String mainImage = mainImages.size() == 0 ? "" : mainImages.get(0);
        List<String> childImages = iDocument.getPathByParentIdAndType(parentId, ImageProductConstant.CHILD);
        return new DocumentVM(mainImage, childImages);
    }
}
