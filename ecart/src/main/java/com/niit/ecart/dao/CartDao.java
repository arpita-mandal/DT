package com.niit.ecart.dao;

import java.util.List;

import com.niit.ecart.model.Cart;
import com.niit.ecart.model.CartItem;

public interface CartDao {

		public boolean saveOrUpdate(Cart cart);
		
		public boolean delete(Cart cart);
		
		public Cart getCartByUserId(String userId);

		public List<CartItem> getCartItemsByCartId(int cart);
		
	}


