package com.cybage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cybage.Repository.MovieRepository;
import com.cybage.beans.MovieBean;

@Service
public class MovieServiceImpl implements MovieService {

	@Autowired
	private MovieRepository movieDao;

	public boolean addMovie(MovieBean movieBean) {
		System.out.println("inside movie service");
		boolean result = movieDao.addMovie(movieBean);
		return result;
	}
	
	 public boolean deleteMovie(int movieId)  {
		boolean result = movieDao.deleteMovie(movieId);
		return result;
	}

}
