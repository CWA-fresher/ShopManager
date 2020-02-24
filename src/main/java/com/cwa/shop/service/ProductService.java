package com.cwa.shop.service;

import com.cwa.shop.dto.ProductDto;
import com.cwa.shop.model.Product;

import java.util.List;

public interface ProductService {

    void createProduct(ProductDto productDto);

    void removeProduct(Product product);

    void editProduct(ProductDto productDto);

    List<Product> getAllProduct();

    Product getProduct(int id);
}
