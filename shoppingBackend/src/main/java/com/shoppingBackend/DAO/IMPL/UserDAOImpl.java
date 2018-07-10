package com.shoppingBackend.DAO.IMPL;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shoppingBackend.DAO.UserDAO;
import com.shoppingBackend.model.User;

@Repository("userDAO")
@Transactional
public class UserDAOImpl implements UserDAO {
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public boolean addUser(User user) {
		try {
			sessionFactory.getCurrentSession().save(user);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return true;
		}
	}

	@Override
	public boolean updateUser(User user) {
		try {
			sessionFactory.getCurrentSession().update(user);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return true;
		}
	}

	@Override
	public boolean DeleteUser(int userid) {
		try {
			sessionFactory.getCurrentSession().delete(getSingleUser(userid));
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return true;
		}
	}

	@Override
	public User getSingleUser(int userid) {
		try {
			return sessionFactory.getCurrentSession().get(User.class, userid);
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<User> getAllUser() {
		try {
			return sessionFactory.getCurrentSession().createQuery("from User").list();
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}

	}

}
