package application.data.service;

import application.data.entity.Category;
import application.data.repository.ICategory;
import application.data.repository.IOrder;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Service;

@Service
public class OrderService extends BaseService<IOrder, Category> {

    private static final Logger logger = LogManager.getLogger(OrderService.class);

    private IOrder orderRepository;

    public OrderService(IOrder orderRepository){
        setRepository(orderRepository);
        this.orderRepository = orderRepository;
    }
}
