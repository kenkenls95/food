package application.data.service;

import application.data.entity.Category;
import application.data.repository.ICategory;
import org.springframework.stereotype.Service;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;


@Service
public class CategoryService extends BaseService<ICategory, Category> {

    private static final Logger logger = LogManager.getLogger(CategoryService.class);

    private ICategory categoryRepository;

    public CategoryService(ICategory categoryRepository){
        setRepository(categoryRepository);
        this.categoryRepository = categoryRepository;
    }
}
