package com.niit.proj100.dao;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.proj100.model.User;

@Repository("usersDao")
@Transactional
public class UserDaoImpl implements UserDao {

	@Autowired
	private SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	protected Session getSession() {
		return sessionFactory.openSession();
	}

	public void addUsers(User users) {
		// TODO Auto-generated method stub

		Session session = getSession();

		String s = users.getUserName();

		session.save(users);

		session.flush();

		session.close();

	}

	public User getUsersById(int userId) {
		// TODO Auto-generated method stub
		Session session = getSession();
		return (User) session.get(User.class, userId);
	}

	public List<User> getAllUsers() {
		// TODO Auto-generated method stub
		Session session = getSession();

		Query query = session.createQuery("from User");
		List<User> customerList = query.list();

		return customerList;

	}

	public User getUsersByUsername(String userName) {
		// TODO Auto-generated method stub
		Session session = getSession();

		Query query = session.createQuery("from User where username = ?");
		query.setString(0, userName);

		return (User) query.uniqueResult();

	}

	public void updateUsers(User users) {
		// TODO Auto-generated method stub
		Session session = getSession();

		String s = users.getUserName();

		session.update(users);

		session.flush();

		session.close();
	}

	public void deleteUsers(int userId) {
		// TODO Auto-generated method stub
		
		Session session = getSession();

		Query query = session.createQuery("from User where userId = ?");
		query.setInteger(0, userId);

		User u=(User) query.uniqueResult();
		session.delete(u);
		session.flush();

		session.close();
		
	}
}
