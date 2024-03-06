package com.cybage.entity;

import javax.persistence.*;

@Entity
@Table(name = "seats")
public class Seat {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Column(name = "seat_number")
	private String seatNumber;

	// Constructors, getters, and setters
	public String getSeatNumber() {
		return seatNumber;
	}

	public void setSeatNumber(String seatNumber) {
		this.seatNumber = seatNumber;
	}
}
