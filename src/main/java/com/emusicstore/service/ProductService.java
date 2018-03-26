package com.emusicstore.service;

import com.emusicstore.model.product;

import java.util.List;

public interface ProductService {

    List<product> getProductList();

    product getProductById(int id);

    void addProduct(product product);

    void editProduct(product product);

    void deleteProduct(product product);

}
