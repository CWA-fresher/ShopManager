package com.cwa.shop.dao;

import com.cwa.shop.model.Product;

import java.util.List;

public interface ProductDAO {

    void saveProduct(Product product);

    void deleteProduct(Product product);

    void updateProduct(Product product);

    Product findById(int id);

    List<Product> findAll();
}
