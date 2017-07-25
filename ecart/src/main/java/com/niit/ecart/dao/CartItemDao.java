package com.niit.ecart.dao;

import java.util.List;

import com.niit.ecart.model.CartItem;

public interface CartItemDao 
{
public void saveOrUpdate(CartItem cartItem);
	
	public void delete(int cartitemId);
	
	public CartItem get(String cartItemId);
	
	public List<CartItem> getCartItemByUserId(String userId);
}
