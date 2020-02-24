package com.cwa.shop.service;

import com.cwa.shop.model.Category;

import java.util.List;

public interface CategoryService {
    List<Category> getAllCategory();

    void save(Category theCategory);

    void deleteCategory(int id);

    Category findById(int categoryId);
}
