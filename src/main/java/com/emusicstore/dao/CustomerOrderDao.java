package com.emusicstore.dao;

import com.emusicstore.model.CustomerOrder;

import java.util.List;

public interface CustomerOrderDao {
    void addCustomerOrder(CustomerOrder customerOrder);

    List<CustomerOrder> getAllCustomerOrders();
}
