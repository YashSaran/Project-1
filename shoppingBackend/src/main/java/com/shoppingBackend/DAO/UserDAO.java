
package com.shoppingBackend.DAO;

import java.util.List;


import com.shoppingBackend.model.User;

public interface UserDAO {
	public boolean addUser(User user);
	public boolean updateUser(User user);
	public boolean DeleteUser(int userid);
	public User getSingleUser(int userid);
	public List<User> getAllUser();
}