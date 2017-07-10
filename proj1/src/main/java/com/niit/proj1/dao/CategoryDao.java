package com.niit.proj1.dao;

import java.util.List;

import com.niit.proj1.model.Category;
import com.niit.proj1.model.Product;

public interface CategoryDao {
	public List<Category> showAllCategory();	
	public List<Product> listByCategoryId(String categoryId);

}
