package com.niit.ecart.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;

import com.niit.ecart.model.Category;
import com.niit.ecart.model.Product;
import com.niit.ecart.model.User;

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
			Query query = session.createQuery("from Product where productId=:productId and discontinue=false");
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
			p.setDiscontinue(true);
			session.update(p);
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
			Query query = session.createQuery("from Product where productId = '"+ productId+"'");
			List<Product> productList = query.list();
			
			if(productList ==null || productList.size()==0)
			{
				return null;
			}
			else
			{
				return productList.get(0);
			}	
		}
		
		public List<Product> getAllProducts() {
			Session session = getSession();

			Query query = session.createQuery("from Product where discontinue=false");
			List<Product> productList = query.list();

			return productList;

		}
	}
