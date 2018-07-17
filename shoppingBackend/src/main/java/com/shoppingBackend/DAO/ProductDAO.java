package com.shoppingBackend.DAO;

import java.util.List;

import com.shoppingBackend.model.Product;

public interface ProductDAO {
	public boolean addProduct(Product product);
	public boolean updateProduct(Product product);
	public boolean DeleteProduct(int prodid);
	public Product getSingleProduct(int prodid);
	public List<Product> getAllProduct();
	public List<Product> getByCategory(String categoryid);
	public List<Product> getByFilter(String min,String max);
	public List<Product> getByPriceDesc();
	public List<Product> getByPriceAsc();

	

}
