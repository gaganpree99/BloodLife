package com.bloodlife.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bloodlife.DAO.FAQRepository;
import com.bloodlife.models.FAQ;
import com.bloodlife.service.FAQService;





@Service
public class FAQServiceImpl implements FAQService {

	
	@Autowired
	FAQRepository FAQRepository;

	@Override
	public List<FAQ> findByTokenId(String email, String question) {
		// TODO Auto-generated method stub
		return null;
	}
	
//	@Override
//	public List<FAQ> findByTokenId(String email,String question) {
//		return FAQRepository.findByTokenId(email, question);
//	}

	
	

}
