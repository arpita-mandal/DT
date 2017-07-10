package com.niit.proj1.dao;

import com.niit.proj1.model.Cart;

public interface CartDao {

		public boolean saveOrUpdate(Cart cart);
		
		public boolean delete(Cart cart);
		
		public Cart getCartByUserId(String userId);
		
	}


