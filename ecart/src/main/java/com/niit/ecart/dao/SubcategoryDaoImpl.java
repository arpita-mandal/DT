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
import com.niit.ecart.model.Subcategory;

@Repository("subcategoryDao")
@Transactional
public class SubcategoryDaoImpl implements SubcategoryDao {
	@Autowired 
	private SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	protected Session getSession() {
		return sessionFactory.openSession();
	}
	public List<Subcategory> showAllSubcategory() {
		// TODO Auto-generated method stub
		Session session = getSession();

		Query query = session.createQuery("from Subcategory");
		List<Subcategory> subcategoryList = query.list();

		return subcategoryList;
	}
	
		
		public List<Product> listBySubcategoryId(String subcategoryId) {
			// TODO Auto-generated method stub
			Session session = getSession();

			Query query = session.createQuery("from Product where subcategory.subcategoryId = ? and discontinue=false");
			query.setString(0, subcategoryId);
			List<Product> productList = query.list();
	        session.close();
	        System.out.println("list "+productList);
			return productList;
		}

		public void addSubcategory(Subcategory subcategory) {
			
			Session session = getSession();

			String s = subcategory.getSubcategoryName();

			
			session.save(subcategory);

			session.flush();

			session.close();

		}
	

}
