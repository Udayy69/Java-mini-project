package com.cybage.Repository;

import com.cybage.beans.MovieBean;

public interface MovieRepository {
	

	public boolean addMovie(MovieBean movieBean);
	public boolean deleteMovie(int movieId);

}
