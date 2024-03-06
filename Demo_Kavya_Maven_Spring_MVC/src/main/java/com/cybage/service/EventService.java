package com.cybage.service;

import com.cybage.beans.EventBean;

public interface EventService {
	public boolean addEvent(EventBean eventBean);
	 public boolean deleteEvent(int eventId)  ;
}
