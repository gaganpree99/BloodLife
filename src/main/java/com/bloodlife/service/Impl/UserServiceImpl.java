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

	@Override
	public Users findById(long id) {
		// TODO Auto-generated method stub
		return userRepository.findById(id);
	}

	@Override
	public void update(Users users) {
		// TODO Auto-generated method stub
		try{
            userRepository.save(users);
        }catch(Exception ex){
            ex.printStackTrace();

        }

	}

	@Override
	public Users findByEmail(String email) {
		try{
			return userRepository.findByEmail(email);
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}
	}

}
