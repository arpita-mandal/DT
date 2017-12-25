package com.niit.ecart.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
public class Subcategory  implements Serializable {

	@Id
	@GeneratedValue
	private String subcategoryId;
	private String subcategoryName;
	
	@OneToMany(mappedBy="subcategory")
	List<Product> products;
	
	@ManyToOne
	@JoinColumn(name="categoryId")
	Category  category;
	@Transient
	private MultipartFile file;
	private String subcategoryImage;
	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public String getSubcategoryImage() {
		return subcategoryImage;
	}

	public void setSubcategoryImage(String subcategoryImage) {
		this.subcategoryImage = subcategoryImage;
	}

	public String getSubcategoryId() {
		return subcategoryId;
	}

	public void setSubcategoryId(String subcategoryId) {
		this.subcategoryId = subcategoryId;
	}

	public String getSubcategoryName() {
		return subcategoryName;
	}

	public void setSubcategoryName(String subcategoryName) {
		this.subcategoryName = subcategoryName;
	}

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}
	
}
