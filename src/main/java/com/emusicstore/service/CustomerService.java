package com.emusicstore.service;

import com.emusicstore.model.Customer;

import java.util.List;

public interface CustomerService {

    void addCustomer(Customer customer);

    Customer getCustomerById(int Customer);

    List<Customer> getAllCustomers();

    Customer getCustomerByUsername(String username);
}
