/**
 * 
 */
package com.niit.proj1.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.proj1.model.Cart;
import com.niit.proj1.model.CartItem;


@EnableTransactionManagement
@Repository("cartItemDao")
public class CartItemDaoImpl implements CartItemDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public CartItemDaoImpl(SessionFactory sessionFactory){
		this.sessionFactory=sessionFactory;
	}
	
	public CartItemDaoImpl(){}

	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	protected Session getSession(){
		return sessionFactory.openSession();
	}
	
	@Transactional
	public boolean saveOrUpdate(CartItem cartItem){
		try{
			Session session = getSession();
			session.saveOrUpdate(cartItem);
			session.flush();
			session.close();
			
			return true;
			}catch(Exception e){
				e.printStackTrace();
				return false;
			}
	}
	
	@Transactional
	public boolean delete(CartItem cartItem)
	{
		try{
			Session session = getSession();
			session.delete(cartItem);
			session.flush();
			session.close();
			
			return true;
		}catch (Exception e){
			e.printStackTrace();
			return false;
		}
	}

	public CartItem get(String cartItemId){

		String hql = "from CartItem where cartItemId=" + "'" + cartItemId + "'";
		
		Session session = getSession();
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		
		List<CartItem> list = query.list();
		
		session.flush();
		session.close();
		if(list == null || list.isEmpty())
		{
			
			return null;
		}
		else
		{
			
			return list.get(0);
		}
	}

	@SuppressWarnings("unchecked")
	@Transactional
	public List<CartItem> getCartItemByUserId(String userId){
		Session session = getSession();
		String hql = "from CartItem where cart.user.userId=" + "'" + userId + "'" + "and status = 'N'";
		Query query = session.createQuery(hql);
		return query.list();
	}

}
