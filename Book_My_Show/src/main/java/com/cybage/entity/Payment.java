package com.cybage.entity;

import javax.persistence.*;

@Entity
@Table(name = "payments")
public class Payment {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Column(name = "amount")
	private double amount;

	// Constructors, getters, and setters
}
