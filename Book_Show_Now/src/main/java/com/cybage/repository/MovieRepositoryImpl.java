package com.cybage.repository;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.cybage.entity.MovieEntity;
import com.cybage.bean.MovieBean;

@Repository
public class MovieRepositoryImpl implements MovieRepository {

	public boolean addMovie(MovieBean movieBean) {
		boolean result = false;
		System.out.println("Inside Movie Repoistory");
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("unit");

		EntityManager entityManager = entityManagerFactory.createEntityManager();
		MovieEntity movieEntity = new MovieEntity();

		// converting bean to entity

		movieEntity.setMovieId(movieBean.getMovieId());
		movieEntity.setMovieName(movieBean.getMovieName());
		movieEntity.setCity(movieBean.getCity());
		movieEntity.setLanguage(movieBean.getLanguage());
		movieEntity.setGenre(movieBean.getGenre());
		movieEntity.setDuration(movieBean.getDuration());
		movieEntity.setReleaseDate(movieBean.getReleaseDate());
		movieEntity.setPrice(movieBean.getPrice());
		movieEntity.setPosterURL(movieBean.getPosterUrl());
		// BeanUtils.copyProperties(movieBean, movieEntity); // converting bean to
		// entity
		entityManager.getTransaction().begin();
		entityManager.persist(movieEntity);
		entityManager.getTransaction().commit(); // save operation
		result = true;
		if (result) {
			System.out.println("Movie added successfully");
		} else {
			System.out.println("Movie not added");
		}
		return result;
	}

	public List<MovieBean> displayAllMovies() {
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("unit"); // from
																									// persistence.xml
																									// file
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		MovieBean movieBean = new MovieBean();
		MovieEntity movieEntity = new MovieEntity();
		entityManager.getTransaction().begin();
		// converting the bean to entity
		movieEntity.setMovieId(movieBean.getMovieId());
		movieEntity.setMovieName(movieBean.getMovieName());
		movieEntity.setCity(movieBean.getCity());
		movieEntity.setLanguage(movieBean.getLanguage());
		movieEntity.setGenre(movieBean.getGenre());
		movieEntity.setDuration(movieBean.getDuration());
		movieEntity.setReleaseDate(movieBean.getReleaseDate());
		movieEntity.setPrice(movieBean.getPrice());
		movieEntity.setPosterURL(movieBean.getPosterUrl());
		Query query = entityManager.createQuery("select m from MovieEntity m");
		/* query.setParameter("movieName", movieName); */
		List<MovieEntity> movieList = query.getResultList();
		List<MovieBean> movieBeanList = new ArrayList<MovieBean>();
		for (MovieEntity movieEntity1 : movieList) {
			// convert entity to bean back...
			MovieBean movieBean1 = new MovieBean();
			movieBean1.setMovieId(movieEntity1.getMovieId());
			movieBean1.setMovieName(movieEntity1.getMovieName());
			movieBean1.setCity(movieEntity1.getCity());
			movieBean1.setLanguage(movieEntity1.getLanguage());
			movieBean1.setGenre(movieEntity1.getGenre());
			movieBean1.setDuration(movieEntity1.getDuration());
			movieBean1.setReleaseDate(movieEntity1.getReleaseDate());
			movieBean1.setPrice(movieEntity1.getPrice());
			movieBean1.setPosterUrl(movieEntity1.getPosterURL());
			// add to bean list
			movieBeanList.add(movieBean1);
		}
		entityManager.getTransaction().commit();
		return movieBeanList;
	}

	@Override
	public List<MovieBean> searchMoviesByName(String movieName) {
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("unit"); // from
																									// persistence.xml
																									// file
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		MovieBean movieBean = new MovieBean();
		MovieEntity movieEntity = new MovieEntity();
		entityManager.getTransaction().begin();
		// converting the bean to entity
		movieEntity.setMovieId(movieBean.getMovieId());
		movieEntity.setMovieName(movieBean.getMovieName());
		movieEntity.setCity(movieBean.getCity());
		movieEntity.setLanguage(movieBean.getLanguage());
		movieEntity.setGenre(movieBean.getGenre());
		movieEntity.setDuration(movieBean.getDuration());
		movieEntity.setReleaseDate(movieBean.getReleaseDate());
		movieEntity.setPrice(movieBean.getPrice());
		movieEntity.setPosterURL(movieBean.getPosterUrl());
		
		//sql query
		
		Query query = entityManager.createQuery("select m from MovieEntity m where m.movieName = :movieName");
		query.setParameter("movieName", movieName);
		
		List<MovieEntity> movieList = query.getResultList();
		List<MovieBean> movieBeanList = new ArrayList<>();
		
		//convert entity to bean
		for (MovieEntity movieEntity1 : movieList) {
			MovieBean movieBean1 = new MovieBean();
			movieBean1.setMovieId(movieEntity1.getMovieId());
			movieBean1.setMovieName(movieEntity1.getMovieName());
			movieBean1.setCity(movieEntity1.getCity());
			movieBean1.setLanguage(movieEntity1.getLanguage());
			movieBean1.setGenre(movieEntity1.getGenre());
			movieBean1.setDuration(movieEntity1.getDuration());
			movieBean1.setReleaseDate(movieEntity1.getReleaseDate());
			movieBean1.setPrice(movieEntity1.getPrice());
			movieBean1.setPosterUrl(movieEntity1.getPosterURL());
			movieBeanList.add(movieBean1);
		}
		entityManager.getTransaction().commit();
		return movieBeanList;

	}

}
