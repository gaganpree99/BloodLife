package com.bloodlife.DAO;


import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.bloodlife.models.Users;

@Repository
public interface UserRepository extends CrudRepository<Users, Long>{

	public List<Users> findAll();
	public List<Users> findByFirstName(String firstName);
	public Users findById(long id);
	public Users save(Users users);
	public Users findByEmail(String email);
}
