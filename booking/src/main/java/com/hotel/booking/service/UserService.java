package com.hotel.booking.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotel.booking.dao.Dao;
import com.hotel.booking.dto.User;

// class is used to provide service for controller and dao
@Service
public class UserService {

	@Autowired
	private Dao dao;

	public boolean register(User user) {
		return dao.registerUser(user);
	}

	public User login(User user) {
		return dao.userLogin(user);
	}

	public boolean update(User user) {
		return dao.updateUser(user);
	}

	public boolean deleteUser(String name, String password) {
		return dao.deleteUser(name,password);
	}




}
