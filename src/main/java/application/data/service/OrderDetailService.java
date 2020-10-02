package application.data.service;

import application.data.entity.Category;
import application.data.repository.IOrder;
import application.data.repository.IOrderDetail;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Service;

@Service
public class OrderDetailService extends  BaseService<IOrderDetail, Category> {

    private static final Logger logger = LogManager.getLogger(OrderDetailService.class);

    private IOrderDetail orderDetailRepository;

    public OrderDetailService(IOrderDetail orderDetailRepository){
        setRepository(orderDetailRepository);
        this.orderDetailRepository = orderDetailRepository;
    }
}
