package com.bloodlife.DAO;


import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.bloodlife.models.Users;

public interface UserRepository extends CrudRepository<Users, Long>{

	public List<Users> findAll();
	public List<Users> findByFirstName(String firstName);
	
}
