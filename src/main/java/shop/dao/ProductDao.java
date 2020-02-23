package shop.dao;

import shop.model.Product;

public interface ProductDao {
    public Product findById (int id);
}
