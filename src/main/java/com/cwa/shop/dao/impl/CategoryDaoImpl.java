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
    @Transactional
    public List<Category> getAllCategory() {
        Session session = sessionFactory.getCurrentSession();
        CriteriaBuilder cb  = session.getCriteriaBuilder();
        CriteriaQuery<Category> cq = cb.createQuery(Category.class);
        Root<Category> root = cq.from(Category.class);
        cq.select(root);
        Query query = session.createQuery(cq);
        return query.getResultList();
    }

    @Override
    @Transactional
    public void save(Category theCategory) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(theCategory);
    }


    @Override
    @Transactional
    public void deleteCategory(int categoryId) {
        Session session = sessionFactory.getCurrentSession();
        Category category = session.byId(Category.class).load(categoryId);
        session.delete(category);
    }

    @Override
    @Transactional
    public Category findById(int categoryId) {
        Session session = sessionFactory.getCurrentSession();
        Category theCategory = session.get(Category.class, categoryId);
        return theCategory;
    }
}
