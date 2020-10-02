package application.model.dto;

import application.data.entity.Document;

import java.util.List;

public class DocumentVM {
    private String mainImage;
    private List<String> childImages;

    public String getMainImage() {
        return mainImage;
    }

    public void setMainImage(String mainImage) {
        this.mainImage = mainImage;
    }

    public List<String> getChildImages() {
        return childImages;
    }

    public void setChildImages(List<String> childImages) {
        this.childImages = childImages;
    }

    public DocumentVM(String mainImage, List<String> childImages) {
        this.mainImage = mainImage;
        this.childImages = childImages;
    }

    public DocumentVM() {
    }
}
