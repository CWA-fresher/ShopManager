package com.cwa.shop.dao.impl;

import com.cwa.shop.dao.ProductDAO;
import com.cwa.shop.model.Product;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ProductDAOImpl implements ProductDAO {
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void saveProduct(Product product) {
        Session session = sessionFactory.getCurrentSession();
        session.save(product);
    }

    @Override
    public void deleteProduct(Product product) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(product);
    }

    @Override
    public void updateProduct(Product product) {
        Session session = sessionFactory.getCurrentSession();
        session.update(product);
    }

    @Override
    public Product findById(int id) {
        Session session = sessionFactory.getCurrentSession();
        Product product = session.get(Product.class, id);
        return product;
    }

    @Override
    public List<Product> findAll() {
        Session session =sessionFactory.getCurrentSession();
        List<Product> listProduct = session.createQuery("FROM Product ").list();
        return listProduct;
    }
}
