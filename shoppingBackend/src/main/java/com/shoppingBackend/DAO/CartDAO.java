package com.shoppingBackend.DAO;

import java.util.List;

import com.shoppingBackend.model.Cart;
import com.shoppingBackend.model.CartLine;
//import com.shoppingBackend.model.OrderDetail;


public interface CartDAO {

	public List<CartLine> list(int cartId);
	public CartLine get(int id);	
	public boolean add(CartLine cartLine);
	public boolean addCart(Cart cart);

	public boolean update(CartLine cartLine);
	public boolean remove(CartLine cartLine);
	
	// fetch the CartLine based on cartId and productId
	public CartLine getByCartAndProduct(int cartId, int productId);		
		
	// updating the cart
	boolean updateCart(Cart cart);
	
	// list of available cartLine
	public List<CartLine> listAvailable(int cartId);
	public Cart getByEmailid(String email);		
	// adding order details
	//boolean addOrderDetail(OrderDetail orderDetail);

	
}