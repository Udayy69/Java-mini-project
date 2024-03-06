package com.cybage.Repository;

import com.cybage.beans.SportsBean;

public interface SportsRepository {
	public boolean addSports(SportsBean sportsBean);
	public boolean deleteSport(int sportsId);
}
