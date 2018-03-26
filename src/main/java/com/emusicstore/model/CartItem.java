package com.emusicstore.model;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.io.Serializable;

@Entity
public class CartItem implements Serializable{


    private static final long serialVersionUID = -5070419362225195042L;

    @Id
    @GeneratedValue
    private int cartItemId;

    @ManyToOne
    @JoinColumn(name = "cardId")
    @JsonIgnore
    private Cart cart;

    @ManyToOne
    @JoinColumn(name = "productId")
    private product product;

    private int quantity;

    private double totalPrice;

    public int getCartItemId() {
        return cartItemId;
    }

    public void setCartItemId(int cartItemId) {
        this.cartItemId = cartItemId;
    }

    public Cart getCart() {
        return cart;
    }

    public void setCart(Cart cart) {
        this.cart = cart;
    }

    public com.emusicstore.model.product getProduct() {
        return product;
    }

    public void setProduct(com.emusicstore.model.product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }
}
