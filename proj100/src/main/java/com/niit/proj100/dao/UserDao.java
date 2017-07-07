package com.niit.proj100.dao;

import java.util.List;

import com.niit.proj100.model.User;

public interface UserDao {
	
	public void addUsers(User users);
	public void updateUsers(User users);
	public void deleteUsers(int userId);
	public User getUsersById(int userId);

	public List<User> getAllUsers();

	public User getUsersByUsername(String userName);
	

}
