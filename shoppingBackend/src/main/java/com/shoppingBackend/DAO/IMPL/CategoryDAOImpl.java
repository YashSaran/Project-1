package com.shoppingBackend.DAO.IMPL;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shoppingBackend.DAO.CategoryDAO;
import com.shoppingBackend.model.Category;

@Repository("categoryDAO")
@Transactional
public class CategoryDAOImpl implements CategoryDAO {
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public boolean addCategory(Category supplier) {
		try {
			sessionFactory.getCurrentSession().save(supplier);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return true;
		}
	}

	@Override
	public boolean updateCategory(Category supplier) {
		try {
			sessionFactory.getCurrentSession().update(supplier);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return true;
		}
	}

	@Override
	public boolean DeleteCategory(int supplierid) {
		try {
			sessionFactory.getCurrentSession().delete(getSingleCategory(supplierid));
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return true;
		}
	}

	@Override
	public Category getSingleCategory(int supplierid) {
		try {
			return sessionFactory.getCurrentSession().get(Category.class, supplierid);
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Category> getAllCategory() {
		try {
			return sessionFactory.getCurrentSession().createQuery("from Category").list();
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}

	}

}
