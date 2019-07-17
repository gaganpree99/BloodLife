package com.bloodlife.service;

import java.util.List;

import com.bloodlife.models.Events;

public interface EventService {
	public List<Events> findAll();
	public Events Save(Events event);
	public void deleteByEventId(long id);

}
