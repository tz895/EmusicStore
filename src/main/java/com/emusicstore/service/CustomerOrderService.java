package com.emusicstore.service;

import com.emusicstore.model.CustomerOrder;

import java.util.List;

public interface CustomerOrderService {
    void addCustomerOrder(CustomerOrder customerOrder);

    double getCustomerOrderGrandTotal(int cartId);

    List<CustomerOrder> getAllCustomerOrders();
}
