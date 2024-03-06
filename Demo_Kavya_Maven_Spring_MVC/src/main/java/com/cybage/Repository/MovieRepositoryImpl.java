package com.cybage.Repository;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.stereotype.Repository;

import com.cybage.Entity.MovieEntity;
import com.cybage.beans.MovieBean;

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

	public boolean deleteMovie(int movieId) {
	    System.out.println("Inside Movie Repository - Delete Movie");
	    
	    EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("unit");
	    EntityManager entityManager = entityManagerFactory.createEntityManager();
	    
	    
	    MovieEntity movieEntity = entityManager.find(MovieEntity.class, movieId);
	    System.out.println("Delete Movie");
	    
	    if (movieEntity != null) {
	    	entityManager.getTransaction().begin();
	        entityManager.remove(movieEntity);
	        entityManager.getTransaction().commit();
	        System.out.println("Movie deleted successfully");
	        return true;
	    } else {
	        entityManager.getTransaction().rollback();
	        System.out.println("Movie not found");
	        return false;
	    }
	}

}
