package com.cybage.service;

import java.util.List;

import com.cybage.bean.MovieBean;

public interface MovieService {

	boolean addMovie(MovieBean movieBean);

	List<MovieBean> displayAllMovies();

	List<MovieBean> searchMoviesByName(String movieName);

	

}
