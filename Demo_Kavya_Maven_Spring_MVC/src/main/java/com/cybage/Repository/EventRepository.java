package com.cybage.Repository;

import com.cybage.beans.EventBean;
import com.cybage.beans.MovieBean;

public interface EventRepository {
	public boolean addEvent(EventBean eventBean) ;
	public boolean deleteEvent(int eventId);
}
