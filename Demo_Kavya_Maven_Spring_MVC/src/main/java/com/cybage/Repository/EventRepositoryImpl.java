package com.cybage.Repository;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.stereotype.Repository;

import com.cybage.Entity.EventEntity;
import com.cybage.Entity.MovieEntity;
import com.cybage.beans.EventBean;



@Repository
public class EventRepositoryImpl implements EventRepository{
	
	public boolean addEvent(EventBean eventBean) {
		boolean result = false;
		System.out.println("Inside Event Repoistory");
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("unit"); 
		
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		EventEntity eventEntity = new EventEntity();
		
		// converting bean to entity
		
		eventEntity.setEventId(eventBean.getEventId());
		eventEntity.setEventName(eventBean.getEventName());
		eventEntity.setCity(eventBean.getCity());
		eventEntity.setLanguage(eventBean.getLanguage());
		eventEntity.setGenre(eventBean.getGenre());
		eventEntity.setDuration(eventBean.getDuration());
		eventEntity.setReleaseDate(eventBean.getReleaseDate());
		eventEntity.setPrice(eventBean.getPrice());
		eventEntity.setEventPosterUrl(eventBean.getEventPosterUrl());
		// BeanUtils.copyProperties(movieBean, movieEntity); // converting bean to
		// entity
		entityManager.getTransaction().begin();
		entityManager.persist(eventEntity);
		entityManager.getTransaction().commit(); // save operation
		result = true;
		if (result) {
			System.out.println("Event added successfully");
		} else {
			System.out.println("Event not added");
		}
		return result;
	}
	
	public boolean deleteEvent(int eventId) {
	    System.out.println("Inside Event Repository - Delete Movie");
	    
	    EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("unit");
	    EntityManager entityManager = entityManagerFactory.createEntityManager();
	    
	    
	    EventEntity eventEntity = entityManager.find(EventEntity.class, eventId);
	    System.out.println("Delete Event");
	    
	    if (eventEntity != null) {
	    	entityManager.getTransaction().begin();
	        entityManager.remove(eventEntity);
	        entityManager.getTransaction().commit();
	        System.out.println("Event deleted successfully");
	        return true;
	    } else {
	        entityManager.getTransaction().rollback();
	        System.out.println("Event not found");
	        return false;
	    }
	}

}
