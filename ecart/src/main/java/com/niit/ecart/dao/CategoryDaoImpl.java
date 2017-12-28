package com.niit.ecart.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ecart.model.Category;
import com.niit.ecart.model.Product;

@Repository("categoryDao")
@Transactional
public class CategoryDaoImpl implements CategoryDao {
	@Autowired 
	private SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	protected Session getSession() {
		return sessionFactory.openSession();
	}

	public List<Category> showAllCategory() {
		// TODO Auto-generated method stub
		Session session = getSession();

		Query query = session.createQuery("from Category");
		List<Category> categoryList = query.list();

		return categoryList;
	}
	
		
		public List<Product> listByCategoryId(String categoryId) {
			// TODO Auto-generated method stub
			Session session = getSession();

			Query query = session.createQuery("from Product where category.categoryId = :categoryId");
			query.setParameter("categoryId", categoryId);
			List<Product> productList = query.list();
	        session.close();
	        System.out.println("list "+productList);
			return productList;
		}

	public void addCategory(Category category) {
		
			Session session = getSession();

			String s = category.getCategoryName();

			
			session.save(category);

			session.flush();

			session.close();

		
	}

}
