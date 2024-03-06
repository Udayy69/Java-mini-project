package com.cybage.service;

import java.util.List;

import com.cybage.bean.EventBean;

public interface EventService {
	public boolean addEvent(EventBean eventBean);
	
	List<EventBean> displayAllEvents();

	public List<EventBean> searchEventsByName(String eventName);

	//List<EventBean> searchEventsByName(String eventName);
}
