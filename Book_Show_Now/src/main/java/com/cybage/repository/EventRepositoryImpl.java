package com.cybage.repository;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.cybage.entity.EventEntity;
import com.cybage.entity.MovieEntity;
import com.cybage.bean.EventBean;
import com.cybage.bean.MovieBean;

@Repository
public class EventRepositoryImpl implements EventRepository {

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
		// BeanUtils.copyProperties(eventBean, eventEntity); // converting bean to
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

	@Override
	public List<EventBean> displayAllEvents() {

		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("unit"); 
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		
		EventBean eventBean = new EventBean();
		EventEntity eventEntity = new EventEntity();
		entityManager.getTransaction().begin();
		
		// converting the bean to entity
		
		eventEntity.setEventId(eventBean.getEventId());
		eventEntity.setEventName(eventBean.getEventName());
		eventEntity.setCity(eventBean.getCity());
		eventEntity.setLanguage(eventBean.getLanguage());
		eventEntity.setGenre(eventBean.getGenre());
		eventEntity.setDuration(eventBean.getDuration());
		eventEntity.setReleaseDate(eventBean.getReleaseDate());
		eventEntity.setPrice(eventBean.getPrice());
		eventEntity.setEventPosterUrl(eventBean.getEventPosterUrl());
		
		Query query = entityManager.createQuery("select e from EventEntity e");
		
		List<EventEntity> eventList = query.getResultList();
		List<EventBean> eventBeanList = new ArrayList<EventBean>();
		
		for (EventEntity eventEntity1 : eventList) {	
			// convert entity to bean back...
			EventBean eventBean1 = new EventBean();
			eventBean1.setEventId(eventEntity1.getEventId());
			eventBean1.setEventName(eventEntity1.getEventName());
			eventBean1.setCity(eventEntity1.getCity());
			eventBean1.setLanguage(eventEntity1.getLanguage());
			eventBean1.setGenre(eventEntity1.getGenre());
			eventBean1.setDuration(eventEntity1.getDuration());
			eventBean1.setReleaseDate(eventEntity1.getReleaseDate());
			eventBean1.setPrice(eventEntity1.getPrice());
			eventBean1.setEventPosterUrl(eventEntity1.getEventPosterUrl());
// add to bean list
			eventBeanList.add(eventBean1);
		}
		entityManager.getTransaction().commit();
		return eventBeanList;

	}

	@Override
	public List<EventBean> searchEventsByName(String eventName) {
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("unit"); 
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		
		EventBean eventBean = new EventBean();
		EventEntity eventEntity = new EventEntity();
		
		entityManager.getTransaction().begin();
		
		//converting the bean to entity
		
		eventEntity.setEventId(eventBean.getEventId());
		eventEntity.setEventName(eventBean.getEventName());
		eventEntity.setCity(eventBean.getCity());
		eventEntity.setLanguage(eventBean.getLanguage());
		eventEntity.setGenre(eventBean.getGenre());
		eventEntity.setDuration(eventBean.getDuration());
		eventEntity.setReleaseDate(eventBean.getReleaseDate());
		eventEntity.setPrice(eventBean.getPrice());
		eventEntity.setEventPosterUrl(eventBean.getEventPosterUrl());

		Query query = entityManager.createQuery("select e from EventEntity e where e.eventName = :eventName");
		query.setParameter("eventName", eventName);

		List<EventEntity> eventList = query.getResultList();
		List<EventBean> eventBeanList = new ArrayList<EventBean>();
		
		//converting entity to bean
		
		for (EventEntity eventEntity1 : eventList) {
			EventBean eventBean1 = new EventBean();
			eventBean1.setEventId(eventEntity1.getEventId());
			eventBean1.setEventName(eventEntity1.getEventName());
			eventBean1.setCity(eventEntity1.getCity());
			eventBean1.setLanguage(eventEntity1.getLanguage());
			eventBean1.setGenre(eventEntity1.getGenre());
			eventBean1.setDuration(eventEntity1.getDuration());
			eventBean1.setReleaseDate(eventEntity1.getReleaseDate());
			eventBean1.setPrice(eventEntity1.getPrice());
			eventBean1.setEventPosterUrl(eventEntity1.getEventPosterUrl());

			//add to bean list
			eventBeanList.add(eventBean1);
		}
		entityManager.getTransaction().commit();

		return eventBeanList;
	}

}
