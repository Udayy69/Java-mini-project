package com.cybage.Repository;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.stereotype.Repository;

import com.cybage.Entity.MovieEntity;
import com.cybage.Entity.SportsEntity;
import com.cybage.beans.SportsBean;



@Repository
public class SportsRepositoryImpl implements SportsRepository{
	
	public boolean addSports(SportsBean sportsBean) {
		boolean result = false;
		System.out.println("Inside sports Repoistory");
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("unit"); 
		
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		SportsEntity sportsEntity = new SportsEntity();
		
		// converting bean to entity
		
		sportsEntity.setSportsId(sportsBean.getSportsId());
		sportsEntity.setSportsName(sportsBean.getSportsName());
		sportsEntity.setDate(sportsBean.getDate());
		sportsEntity.setLocation(sportsBean.getLocation());
		sportsEntity.setPrice(sportsBean.getPrice());
		sportsEntity.setSportsPosterUrl(sportsBean.getSportsPosterUrl());
		// BeanUtils.copyProperties(movieBean, movieEntity); // converting bean to
		// entity
		entityManager.getTransaction().begin();
		entityManager.persist(sportsEntity);
		entityManager.getTransaction().commit(); // save operation
		result = true;
		if (result) {
			System.out.println("sports added successfully");
		} else {
			System.out.println("sport not added");
		}
		return result;
	}
	
	
	public boolean deleteSport(int sportsId) {
	    System.out.println("Inside sport Repository - Delete sport");
	    
	    EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("unit");
	    EntityManager entityManager = entityManagerFactory.createEntityManager();
	    
	    
	    SportsEntity sportsEntity = entityManager.find(SportsEntity.class, sportsId);
	    System.out.println("Delete Sport");
	    
	    if (sportsEntity != null) {
	    	entityManager.getTransaction().begin();
	        entityManager.remove(sportsEntity);
	        entityManager.getTransaction().commit();
	        System.out.println("Sport deleted successfully");
	        return true;
	    } else {
	        entityManager.getTransaction().rollback();
	        System.out.println("Sport not found");
	        return false;
	    }
	}
	

}
