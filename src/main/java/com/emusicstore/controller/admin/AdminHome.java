package com.emusicstore.controller.admin;

import com.emusicstore.model.Customer;
import com.emusicstore.model.CustomerOrder;
import com.emusicstore.model.product;
import com.emusicstore.service.CustomerOrderService;
import com.emusicstore.service.CustomerService;
import com.emusicstore.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminHome {

    @Autowired
    ProductService productService;

    @Autowired
    CustomerService customerService;

    @Autowired
    CustomerOrderService customerOrderService;

    @RequestMapping
    public String adminPage() {
        return "admin";
    }

    @RequestMapping("/productInventory")
    public String productInventory(Model model) {
        List<product> productList = productService.getProductList();
        model.addAttribute("products",productList);

        return "productInventory";
    }

    @RequestMapping("/customer")
    public String customerManagement(Model model) {


        List<Customer> customerList = customerService.getAllCustomers();
        model.addAttribute("customerList",customerList);

        return "customerManagement";
    }

    @RequestMapping("/orderHistory")
    public String orderHistory(Model model) {
        List<CustomerOrder> customerOrders = customerOrderService.getAllCustomerOrders();
        List<Customer> customerList = new ArrayList<Customer>();
        for(CustomerOrder customerOrder: customerOrders) {
            Customer customer = customerOrder.getCustomer();
            customerList.add(customer);
        }
        model.addAttribute(customerOrders);
        model.addAttribute(customerList);

        return "orderHistory";
    }


}
