package com.cybage.repository;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.stereotype.Repository;

import com.cybage.entity.UserEntity;
import com.cybage.bean.UserBean;

@Repository
public class UserDaoImpl implements UserDao {

	public boolean addUser(UserBean userBean) {
		boolean result = false;
		System.out.println("Inside User Repository");
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("unit");

		EntityManager entityManager = entityManagerFactory.createEntityManager();
		UserEntity userEntity = new UserEntity();

		// converting bean to entity
		userEntity.setUserName(userBean.getUserName());
		userEntity.setUserEmail(userBean.getUserEmail());
		userEntity.setUserPassword(userBean.getUserPassword());

		entityManager.getTransaction().begin();
		entityManager.persist(userEntity);
		entityManager.getTransaction().commit(); // save operation
		result = true;

		if (result) {
			System.out.println("User added successfully");
		} else {
			System.out.println("User not added");
		}

		return result;
	}

	

}