package com.cybage.service;

import com.cybage.beans.MovieBean;

public interface MovieService {

	public boolean addMovie(MovieBean movieBean);
	public boolean deleteMovie(int movieId);
}
