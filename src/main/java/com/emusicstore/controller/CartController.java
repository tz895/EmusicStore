package com.emusicstore.controller;

import com.emusicstore.model.Customer;
import com.emusicstore.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/customer/cart")
public class CartController {

    @Autowired
    CustomerService customerService;

    @RequestMapping
    public String getCart(@AuthenticationPrincipal User activeUser) {
        Customer customer = customerService.getCustomerByUsername (activeUser.getUsername());
        int cardId = customer.getCart().getCartId();

        return "redirect:/customer/cart/" + cardId;

    }

    @RequestMapping("/{cartId}")
    public String getCartRedirect(@PathVariable (value = "cartId")int cartId, Model model) {
        model.addAttribute("cardId",cartId);

        return "cart";
    }
}
