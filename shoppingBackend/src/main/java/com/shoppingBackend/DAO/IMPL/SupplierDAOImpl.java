package com.shoppingBackend.DAO.IMPL;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shoppingBackend.DAO.ProductDAO;
import com.shoppingBackend.DAO.SupplierDAO;
import com.shoppingBackend.model.Supplier;

@Repository("supplierDAO")
@Transactional
public class SupplierDAOImpl implements SupplierDAO {
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public boolean addSupplier(Supplier supplier) {
		try {
			sessionFactory.getCurrentSession().save(supplier);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return true;
		}
	}

	@Override
	public boolean updateSupplier(Supplier supplier) {
		try {
			sessionFactory.getCurrentSession().update(supplier);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return true;
		}
	}

	@Override
	public boolean DeleteSupplier(int supplierid) {
		try {
			sessionFactory.getCurrentSession().delete(getSingleSupplier(supplierid));
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return true;
		}
	}

	@Override
	public Supplier getSingleSupplier(int supplierid) {
		try {
			return sessionFactory.getCurrentSession().get(Supplier.class, supplierid);
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Supplier> getAllSupplier() {
		try {
			return sessionFactory.getCurrentSession().createQuery("from Supplier").list();
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}

	}

}
