package com.niit.proj1.dao;

import java.util.List;

import com.niit.proj1.model.CartItem;

public interface CartItemDao {
public boolean saveOrUpdate(CartItem cartItem);
	
	public boolean delete(CartItem cartItem);
	
	public CartItem get(String cartItemId);
	
	public List<CartItem> getCartItemByUserId(String userId);
}
