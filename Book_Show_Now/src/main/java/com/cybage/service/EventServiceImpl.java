package com.cybage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cybage.repository.EventRepository;
import com.cybage.bean.EventBean;

@Service
public class EventServiceImpl implements EventService {

	@Autowired
	private EventRepository eventDao;

	public boolean addEvent(EventBean eventBean) {
		System.out.println("inside movie service");
		boolean result = eventDao.addEvent(eventBean);
		return result;
	}

	@Override
	public List<EventBean> displayAllEvents() {
		// TODO Auto-generated method stub
		return eventDao.displayAllEvents();
	}

	@Override
	public List<EventBean> searchEventsByName(String eventName) {
		// TODO Auto-generated method stub
		return eventDao.searchEventsByName(eventName);
	}

}
