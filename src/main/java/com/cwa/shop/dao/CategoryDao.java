package com.cwa.shop.dao;

import com.cwa.shop.model.Category;

import java.util.List;

public interface CategoryDao {
    List<Category> getAllCategory();

    void save(Category theCategory);

    void deleteCategory(int id);

    Category findById(int categoryId);
}
