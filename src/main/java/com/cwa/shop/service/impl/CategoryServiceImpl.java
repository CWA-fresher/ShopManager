package com.cwa.shop.service.impl;

import com.cwa.shop.dao.CategoryDao;
import com.cwa.shop.model.Category;
import com.cwa.shop.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
//cai nay ko phai để đây@Transactional(rollbackFor = Exception.class)
public class CategoryServiceImpl implements CategoryService {
    @Autowired
    private CategoryDao categoryDao;
    @Override
    public List<Category> getAllCategory() {
        return categoryDao.getAllCategory();
    }

    @Override
    public void save(Category theCategory) {
        categoryDao.save(theCategory);

    }

    @Override
    public void deleteCategory(int id) {
         categoryDao.deleteCategory(id);

    }

    @Override
    public Category findById(int categoryId) {
        return categoryDao.findById(categoryId);
    }
}
