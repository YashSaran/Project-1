package com.shoppingBackend.DAO.IMPL;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shoppingBackend.DAO.OrderDAO;
import com.shoppingBackend.model.Order;
@Repository("orderDAO")
@Transactional
public class OrderDAOImpl implements OrderDAO {
	@Autowired
	SessionFactory sessionFactory;
	@Override
	public boolean addOrder(Order order) {
		
		try {
			sessionFactory.getCurrentSession().save(order);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return true;
		}
	}

}
