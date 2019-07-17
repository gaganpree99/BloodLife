package com.bloodlife.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bloodlife.DAO.EventRepository;
import com.bloodlife.models.Events;
import com.bloodlife.service.EventService;

@Service
public class EventServiceImpl implements EventService {

	@Autowired
	EventRepository eventRepository;

	@Override
	public List<Events> findAll() {
		return eventRepository.findAll();
	}

	@Override
	public Events Save(Events event) {
		return eventRepository.save(event);
	}


	@Override
	public void deleteByEventId(long id) {
		eventRepository.deleteById(id);
		
	}

}