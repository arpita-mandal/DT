package com.niit.proj1.dao;
import java.util.List;

import com.niit.proj1.model.User;

public interface UserDao {

	public void addUsers(User users);

	public List<User> getAllUsers();

	public User getUsersById(String id);

	public void updateUsers(User users);

	public void deleteUsers(String id);


	


}
