package com.emusicstore.service.impl;

import com.emusicstore.dao.ProductDao;
import com.emusicstore.model.product;
import com.emusicstore.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService{


    @Autowired
    private ProductDao productDao;

    public product getProductById(int productId) {
        return productDao.getProductById(productId);
    }

    public List<product> getProductList() {
        return productDao.getProductList();
    }

    public void addProduct(product product) {
        productDao.addProduct(product);
    }

    public void editProduct(product product) {
        productDao.editProduct(product);
    }

    public void deleteProduct(product product) {
        productDao.deleteProduct(product);
    }
}
