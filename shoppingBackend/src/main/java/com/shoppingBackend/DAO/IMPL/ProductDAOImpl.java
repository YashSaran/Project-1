package com.shoppingBackend.DAO.IMPL;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shoppingBackend.DAO.ProductDAO;
import com.shoppingBackend.model.Product;

@Repository("productDAO")
@Transactional
public class ProductDAOImpl implements ProductDAO {
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public boolean addProduct(Product product) {
		try {
			sessionFactory.getCurrentSession().save(product);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return true;
		}
	}

	@Override
	public boolean updateProduct(Product product) {
		try {
			sessionFactory.getCurrentSession().update(product);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return true;
		}
	}

	@Override
	public boolean DeleteProduct(int productid) {
		try {
			sessionFactory.getCurrentSession().delete(getSingleProduct(productid));
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return true;
		}
	}

	@Override
	public Product getSingleProduct(int productid) {
		try {
			return sessionFactory.getCurrentSession().get(Product.class, productid);
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> getAllProduct() {
		try {
			return sessionFactory.getCurrentSession().createQuery("from Product").list();
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}

	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Product> getByCategory(String categoryid) {
		try {
			return sessionFactory.getCurrentSession().createQuery("from Product where categoryid=:categoryid").setParameter("categoryid", categoryid).list();
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}

	}

}
