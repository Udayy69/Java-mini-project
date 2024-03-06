package com.cybage.entity;

import javax.persistence.*;

@Entity
@Table(name = "meals")
public class Meal {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Column(name = "meal_name")
	private String mealName;

	// Constructors, getters, and setters
	public String getMealName() {
		return mealName;
	}

	public void setMealName(String mealName) {
		this.mealName = mealName;
	}
}
