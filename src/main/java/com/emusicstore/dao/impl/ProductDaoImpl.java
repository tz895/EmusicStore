package com.emusicstore.dao.impl;

import com.emusicstore.dao.ProductDao;
import com.emusicstore.model.product;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import java.util.List;

@Repository
@Transactional  //what's that?
public class ProductDaoImpl implements ProductDao {

    @Autowired
    private SessionFactory sessionFactory;

    public product getProductById (int id) {
        Session session = sessionFactory.getCurrentSession();
        product product =(product)session.get(com.emusicstore.model.product.class,id);
        session.flush();

        return product;
    }

    public List<product> getProductList() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("From product");
        List<product> productList = query.list();
        session.flush();

        return productList;
    }

    public void addProduct (product product) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(product);
        session.flush();
    }

    public void editProduct (product product) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(product);
        session.flush();
    }

    public void deleteProduct (product product) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(product);
        session.flush();
    }




}
