package com.niit.ecart.dao;

import java.util.List;

import com.niit.ecart.model.Product;
import com.niit.ecart.model.Subcategory;

public interface SubcategoryDao {
	public List<Product> listBySubcategoryId(String subcategoryId);
	public List<Subcategory> showAllSubcategory();
	public void addSubcategory(Subcategory subcategory);
}
