package com.emusicstore.dao;

import com.emusicstore.model.Cart;

import java.io.IOException;

public interface CartDao {

    Cart getCartById(int CartId);

    void update(Cart cart);

    Cart validate(int cartId) throws IOException;
}
