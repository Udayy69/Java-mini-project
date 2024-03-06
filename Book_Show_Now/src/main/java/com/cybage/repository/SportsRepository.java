package com.cybage.repository;

import java.util.List;

import com.cybage.bean.SportsBean;

public interface SportsRepository {
	
	public boolean addSports(SportsBean sportsBean);
	
	List<SportsBean> displayAllSports();


	List<SportsBean> searchSportsByName(String movieName);
}
