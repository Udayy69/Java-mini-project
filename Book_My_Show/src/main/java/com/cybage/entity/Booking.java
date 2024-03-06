package com.cybage.entity;

import javax.persistence.*;

import java.util.List;

@Entity
@Table(name = "bookings")
public class Booking {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Column(name = "user_name")
	private String userName;

	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "booking_id")
	private List<Seat> selectedSeats;

	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "booking_id")
	private List<Meal> selectedMeals;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "payment_id")
	private Payment payment;

	// Constructors, getters, and setters
	public List<Seat> getSelectedSeats() {
		return selectedSeats;
	}

	public void setSelectedSeats(List<Seat> selectedSeats) {
		this.selectedSeats = selectedSeats;
	}

	public List<Meal> getSelectedMeals() {
		return selectedMeals;
	}

	public void setSelectedMeals(List<Meal> selectedMeals) {
		this.selectedMeals = selectedMeals;
	}
}
