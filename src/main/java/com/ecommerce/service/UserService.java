package com.ecommerce.service;

import java.util.List;

import com.ecommerce.entity.User;

public interface UserService {
	public long authenticate(String userId, String pwd);

	public User getUserById(long id);

	public User getUserByEmailId(String emailId);

	public void updateUser(User user);

	public List<User> getAllUsers();
}
