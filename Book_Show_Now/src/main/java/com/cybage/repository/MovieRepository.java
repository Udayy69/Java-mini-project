package com.cybage.repository;

import java.util.List;

import com.cybage.bean.MovieBean;

public interface MovieRepository {

	boolean addMovie(MovieBean movieBean);

	List<MovieBean> displayAllMovies();

	List<MovieBean> searchMoviesByName(String movieName);
	

}
