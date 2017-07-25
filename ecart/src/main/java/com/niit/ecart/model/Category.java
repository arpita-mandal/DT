package com.niit.ecart.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Category implements Serializable {
	@Id
	@GeneratedValue
	private String categoryId;
	private String categoryName;
	
//	@OneToMany(mappedBy="category")
//	List<Product> products;

	@OneToMany(mappedBy="category")
	List<Subcategory> subcategory;
	
	public List<Subcategory> getSubcategory() {
		return subcategory;
	}
	public void setSubcategory(List<Subcategory> subcategory) {
		this.subcategory = subcategory;
	}
	public String getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
//	public List<Product> getProducts() {
//		return products;
//	}
//	public void setProducts(List<Product> products) {
//		this.products = products;
//	}


}
