package com.cybage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cybage.repository.MovieRepository;
import com.cybage.bean.MovieBean;

@Service
public class MovieServiceImpl implements MovieService {

	@Autowired
	private MovieRepository movieDao;

	public boolean addMovie(MovieBean movieBean) {
		System.out.println("inside movie service");
		boolean result = movieDao.addMovie(movieBean);
		return result;
	}

	@Override
	public List<MovieBean> displayAllMovies() {
		// TODO Auto-generated method stub
		return movieDao.displayAllMovies();
	}

	@Override
	public List<MovieBean> searchMoviesByName(String movieName) {
		// TODO Auto-generated method stub
		return movieDao.searchMoviesByName(movieName);
	}

}
