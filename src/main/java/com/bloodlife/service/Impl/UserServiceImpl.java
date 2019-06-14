package com.bloodlife.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bloodlife.DAO.UserRepository;
import com.bloodlife.models.Users;
import com.bloodlife.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	UserRepository userRepository;

	@Override
	public List<Users> findAll() {
		return userRepository.findAll();
	}

	@Override
	public List<Users> findByFirstName(String firstName) {
		return userRepository.findByFirstName(firstName);
	}

}
