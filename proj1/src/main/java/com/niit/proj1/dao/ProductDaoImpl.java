package com.niit.proj1.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;

import com.niit.proj1.model.Category;
import com.niit.proj1.model.Product;
import com.niit.proj1.model.User;

@Repository("productDao")
@Transactional

public class ProductDaoImpl implements ProductDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	protected Session getSession() {
		return sessionFactory.openSession();
	}
	

	public Product showdDetailsByProductId(String productId)
		{
			Session session = getSession();
			Query query = session.createQuery("from Product where productId=:productId");
			query.setParameter("productId", productId);
			Product product = (Product)query.uniqueResult();
		
			session.close();
			return product;
		}
		public void addProduct(Product product) {
			// TODO Auto-generated method stub

			Session session = getSession();

			String s = product.getProductName();

			
			session.save(product);

			session.flush();

			session.close();

		}
		public void deleteProduct(String productId) {
			// TODO Auto-generated method stub
			Session session = getSession();

			Query query = session.createQuery("from Product where productId=?");
			query.setString(0, productId);
			Product p=(Product) query.uniqueResult();
			session.delete(p);
			session.flush();

			session.close();
			
		}
		public void updateProduct(Product product) {
			// TODO Auto-generated method stub
			Session session = getSession();

			String s = product.getProductName();

			session.update(product);

			session.flush();

			session.close();
			
		}
		public Product getProductById(String productId) {
			Session session = getSession();
			return (Product) session.get(Product.class,productId);
		}
		
		public List<Product> getAllProducts() {
			Session session = getSession();

			Query query = session.createQuery("from Product");
			List<Product> productList = query.list();

			return productList;

		}
	}
