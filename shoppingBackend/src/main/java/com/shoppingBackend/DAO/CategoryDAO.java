package com.shoppingBackend.DAO;

import java.util.List;

import com.shoppingBackend.model.Category;

public interface CategoryDAO {
	public boolean addCategory(Category category);
	public boolean updateCategory(Category category);
	public boolean DeleteCategory(int categoryid);
	public Category getSingleCategory(int categoryid);
	public List<Category> getAllCategory();
}
