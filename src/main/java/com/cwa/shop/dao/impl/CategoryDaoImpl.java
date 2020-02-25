package com.cwa.shop.dao.impl;

import com.cwa.shop.dao.CategoryDao;
import com.cwa.shop.model.Category;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.List;
@Repository
public class CategoryDaoImpl implements CategoryDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Category> getAllCategory() {
        Session session = sessionFactory.getCurrentSession();
        List<Category> categoryList = session.createQuery("from Category ").list();
        return categoryList;
    }

    @Override
    public void save(Category theCategory) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(theCategory);
    }


    @Override
    public void deleteCategory(int categoryId) {
        Session session = sessionFactory.getCurrentSession();
        Category category = session.byId(Category.class).load(categoryId);
        session.delete(category);
    }

    @Override
    public Category findById(int categoryId) {
        Session session = sessionFactory.getCurrentSession();
        Category theCategory = session.get(Category.class, categoryId);
        return theCategory;
    }
}
