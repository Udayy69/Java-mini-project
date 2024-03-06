package com.cybage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
/*import org.springframework.web.bind.annotation.PostMapping;*/
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class BookingController {

	@RequestMapping(value = "/add-booking", method = RequestMethod.GET)
	public String showBookingPage(Model model) {
		System.out.println("in add-booking");
		// Add logic to fetch available seats and meal coupons from the database
		// For demonstration purposes, let's assume we have some dummy data
		String[] availableSeats = { "A1", "A2", "A3", "A4", "A5", "A6", "A7", "A8", "A9", "B1", "B2", "B3", "B4", "B5",
				"B6", "B7", "B8", "B9" };
		String[] mealCoupons = { "Coupon 1", "Coupon 2", "Coupon 3" };

		// Populate the model with data needed for the booking page
		model.addAttribute("seats", availableSeats);
		model.addAttribute("mealCoupons", mealCoupons);

		return "booking"; // Corrected view name to match the JSP file name
	}

	@RequestMapping(value = "/add-confirm-booking", method = RequestMethod.POST)
	public String confirmBooking(@RequestParam("seats") String[] selectedSeats,
			@RequestParam(value = "mealCoupons", required = false) String[] selectedMealCoupons,
			@RequestParam("timeSlot") String timeSlot, @RequestParam("date") String selectedDate, Model model) {
		System.out.println("in add-confirm-booking");

		// Calculate the amount based on the selected seats and meal coupons
		int seatPrice = 50; // seat price
		int mealCouponPrice = 20; // meal coupon price
		int totalAmount = (selectedSeats.length * seatPrice);
		if (selectedMealCoupons != null) {
			totalAmount += (selectedMealCoupons.length * mealCouponPrice);
		}
		System.out.println("totalAmount=" + totalAmount);
		System.out.println("selectedSeats=" + selectedSeats);
		// Pass the calculated amount and selected seats to the confirmation page
		model.addAttribute("totalAmount", totalAmount);
		model.addAttribute("selectedSeats", selectedSeats); // Add selectedSeats attribute to the model
		if (selectedMealCoupons != null) {
			model.addAttribute("selectedCoupons", selectedMealCoupons);
		}

		model.addAttribute("selectedDate", selectedDate);
		// Add the selected time slots to the model
		model.addAttribute("timeSlot", timeSlot);
		// For demonstration purposes, let's assume booking is successful
		model.addAttribute("message", "Booking confirmed. Thank you!");

		return "confirm-booking"; // Redirect to a confirmation page
	}
}