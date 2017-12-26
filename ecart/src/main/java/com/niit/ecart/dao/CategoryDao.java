package com.niit.ecart.dao;

import java.util.List;

import com.niit.ecart.model.Category;
import com.niit.ecart.model.Product;
//import com.niit.ecart.model.Subcategory;

public interface CategoryDao {
	public List<Category> showAllCategory();	
	public List<Product> listByCategoryId(String categoryId);
	public void addCategory(Category category);

}
