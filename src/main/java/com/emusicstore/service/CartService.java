package com.emusicstore.service;

import com.emusicstore.model.Cart;

public interface CartService {

    Cart getCartById(int CartId);

    void update(Cart cart);
}
