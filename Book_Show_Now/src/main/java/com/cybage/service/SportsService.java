package com.cybage.service;

import java.util.List;

import com.cybage.bean.SportsBean;

public interface SportsService {
	public boolean addSports(SportsBean sportsBean);
	
	List<SportsBean> displayAllSports();

	public List<SportsBean> searchSportsByName(String sportsName);

	//List<SportsBean> searchMoviesByName(String movieName);
}
