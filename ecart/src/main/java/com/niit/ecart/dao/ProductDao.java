package com.niit.ecart.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.web.servlet.ModelAndView;

import com.niit.ecart.model.Category;
import com.niit.ecart.model.Product;
import com.niit.ecart.model.User;

public interface ProductDao {
public Product showdDetailsByProductId(String productId);

public void addProduct(Product product);

public void deleteProduct(String id);

public void updateProduct(Product product);

public Product getProductById(String id);

public List<Product> getAllProducts();

}
