package com.cybage.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import com.cybage.entity.Booking;

@Repository
public class BookingDao {

	@PersistenceContext
	private EntityManager entityManager;

	public void saveBooking(Booking booking) {
		entityManager.persist(booking);
	}

	public List<Booking> findAll() {
		// Create a query to fetch all bookings
		String jpql = "SELECT b FROM Booking b";
		TypedQuery<Booking> query = entityManager.createQuery(jpql, Booking.class);

		// Execute the query and return the result
		return query.getResultList();
	}

	// Add more methods as needed for fetching data, updating bookings, etc.
}
