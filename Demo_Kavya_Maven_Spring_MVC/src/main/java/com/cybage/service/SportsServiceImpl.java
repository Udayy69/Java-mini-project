package com.cybage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cybage.Repository.MovieRepository;
import com.cybage.Repository.SportsRepository;
import com.cybage.beans.MovieBean;
import com.cybage.beans.SportsBean;
@Service
public class SportsServiceImpl implements SportsService{
	
	
	@Autowired
	private SportsRepository sportsDao;

	public boolean addSports(SportsBean sportsBean) {
		System.out.println("inside movie service");
		boolean result = sportsDao.addSports(sportsBean);
		return result;
	}
	
	 public boolean deleteSport(int sportsId)  {
		boolean result = sportsDao.deleteSport(sportsId);
		return result;
	}

}
