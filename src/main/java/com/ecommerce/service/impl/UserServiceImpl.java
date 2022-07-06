package com.ecommerce.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.ecommerce.entity.User;
import com.ecommerce.errorcodes.ErrorCodes;
import com.ecommerce.repository.UserRepository;
import com.ecommerce.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	
	private UserRepository userRepo;
	
	public UserServiceImpl(UserRepository userRepo) {
		super();
		this.userRepo = userRepo;
	}

	@Override
	public long authenticate(String userId, String pwd) {
		Long ID = null;
		try {
			ID = Long.parseLong(userId);
		}catch(Exception e) {
			return ErrorCodes.NONNUMERIC_ID.value;
		}
		User user = this.getUserById(ID);
		if(user == null) {
			return ErrorCodes.INVALID_ID.value;
		}else {
			if(!user.getPwd().equals(pwd)) {
				return ErrorCodes.INVALID_PASSWORD.value;
			}
		}
		return ID;
	}

	@Override
	public User getUserById(long id) {
		Optional<User> user = userRepo.findById(id);
		if(user.isEmpty())
			return null;
		return user.get();
	}

	@Override
	public User getUserByEmailId(String emailId) {
		List<User> users = userRepo.findAll();
		for(User user: users)
			if(user.getEmail().equalsIgnoreCase(emailId))
				return user;
		return null;
	}

	@Override
	public void updateUser(User user) {
		userRepo.save(user);		
	}

	@Override
	public List<User> getAllUsers() {
		return userRepo.findAll();
	}
	
	

}
