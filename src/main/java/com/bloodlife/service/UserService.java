package com.bloodlife.service;

import java.util.List;

import com.bloodlife.models.Users;

public interface UserService {
	public List<Users> findAll();
	public List<Users> findByFirstName(String firstName);
	public Users findById(long id);
	public void update(Users users);
	public  Users findByEmail(String email);
}
