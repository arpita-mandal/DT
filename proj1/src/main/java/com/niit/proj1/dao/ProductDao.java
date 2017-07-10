package com.niit.proj1.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.web.servlet.ModelAndView;

import com.niit.proj1.model.Category;
import com.niit.proj1.model.Product;
import com.niit.proj1.model.User;

public interface ProductDao {
public Product showdDetailsByProductId(String productId);

public void addProduct(Product product);

public void deleteProduct(String id);

public void updateProduct(Product product);

public Product getProductById(String id);

public List<Product> getAllProducts();

}
