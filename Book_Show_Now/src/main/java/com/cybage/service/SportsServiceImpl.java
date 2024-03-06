package com.cybage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cybage.repository.MovieRepository;
import com.cybage.repository.SportsRepository;
import com.cybage.bean.MovieBean;
import com.cybage.bean.SportsBean;

@Service
public class SportsServiceImpl implements SportsService {

	@Autowired
	private SportsRepository sportsDao;

	public boolean addSports(SportsBean sportsBean) {
		System.out.println("inside movie service");
		boolean result = sportsDao.addSports(sportsBean);
		return result;
	}

	@Override
	public List<SportsBean> displayAllSports() {
		
		return sportsDao.displayAllSports();
	}

	@Override
	public List<SportsBean> searchSportsByName(String sportsName) {
		// TODO Auto-generated method stub
		return sportsDao.searchSportsByName(sportsName);
	}

}
