package com.bloodlife.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.bloodlife.models.FAQ;

@Service

public interface FAQService {

	

	public List<FAQ> findByTokenId(String email, String question);

	

}
