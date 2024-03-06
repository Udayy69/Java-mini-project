package com.cybage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cybage.Repository.EventRepository;
import com.cybage.beans.EventBean;



@Service
public class EventServiceImpl implements EventService{

	@Autowired
	private EventRepository movieDao;

	public boolean addEvent(EventBean eventBean) {
		System.out.println("inside movie service");
		boolean result = movieDao.addEvent(eventBean);
		return result;
	}
	
	 public boolean deleteEvent(int eventId)  {
		boolean result = movieDao.deleteEvent(eventId);
		return result;
	}
	
	
}
