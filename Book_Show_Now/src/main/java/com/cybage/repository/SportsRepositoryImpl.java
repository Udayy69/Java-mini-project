package com.cybage.repository;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.cybage.entity.MovieEntity;
import com.cybage.entity.SportsEntity;
import com.cybage.bean.MovieBean;
import com.cybage.bean.SportsBean;

@Repository
public class SportsRepositoryImpl implements SportsRepository {

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

	@Override
	public List<SportsBean> displayAllSports() {
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("unit"); // from
		// persistence.xml
		// file
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		SportsBean sportsBean = new SportsBean();
		SportsEntity sportsEntity = new SportsEntity();
		entityManager.getTransaction().begin();
// converting the bean to entity
		sportsEntity.setSportsId(sportsBean.getSportsId());
		sportsEntity.setSportsName(sportsBean.getSportsName());
		sportsEntity.setDate(sportsBean.getDate());
		sportsEntity.setLocation(sportsBean.getLocation());
		sportsEntity.setPrice(sportsBean.getPrice());
		sportsEntity.setSportsPosterUrl(sportsBean.getSportsPosterUrl());

		Query query = entityManager.createQuery("select m from SportsEntity m");
		/* query.setParameter("movieName", movieName); */
		List<SportsEntity> sportsList = query.getResultList();
		List<SportsBean> sportsBeanList = new ArrayList<SportsBean>();
		for (SportsEntity sportsEntity1 : sportsList) {
// convert entity to bean back...
			SportsBean sportsBean1 = new SportsBean();
			sportsBean1.setSportsId(sportsEntity1.getSportsId());
			sportsBean1.setSportsName(sportsEntity1.getSportsName());
			sportsBean1.setDate(sportsEntity1.getDate());
			sportsBean1.setLocation(sportsEntity1.getLocation());
			sportsBean1.setPrice(sportsEntity1.getPrice());
			sportsBean1.setSportsPosterUrl(sportsEntity1.getSportsPosterUrl());

// add to bean list
			sportsBeanList.add(sportsBean1);
		}
		entityManager.getTransaction().commit();
		return sportsBeanList;
	}

	@Override
	public List<SportsBean> searchSportsByName(String sportsName) {
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("unit"); // from
		// persistence.xml
		// file
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		SportsBean sportsBean = new SportsBean();
		SportsEntity sportsEntity = new SportsEntity();
		entityManager.getTransaction().begin();
		
		sportsEntity.setSportsId(sportsBean.getSportsId());
		sportsEntity.setSportsName(sportsBean.getSportsName());
		sportsEntity.setDate(sportsBean.getDate());
		sportsEntity.setLocation(sportsBean.getLocation());
		sportsEntity.setPrice(sportsBean.getPrice());
		sportsEntity.setSportsPosterUrl(sportsBean.getSportsPosterUrl());
		
		Query query = entityManager.createQuery("select s from SportsEntity s where s.sportsName = :sportsName");
		query.setParameter("sportsName", sportsName);
		
		List<SportsEntity> sportsList = query.getResultList();
		List<SportsBean> sportsBeanList = new ArrayList<SportsBean>();
		
		//convert entity to bean
		
		for (SportsEntity sportsEntity1 : sportsList) {
			SportsBean sportsBean1 = new SportsBean();
			sportsBean1.setSportsId(sportsEntity1.getSportsId());
			sportsBean1.setSportsName(sportsEntity1.getSportsName());
			sportsBean1.setDate(sportsEntity1.getDate());
			sportsBean1.setLocation(sportsEntity1.getLocation());
			sportsBean1.setPrice(sportsEntity1.getPrice());
			sportsBean1.setSportsPosterUrl(sportsEntity1.getSportsPosterUrl());

			// add to bean list
						sportsBeanList.add(sportsBean1);
		}
		entityManager.getTransaction().commit();
		
		return sportsBeanList;
	}

}
