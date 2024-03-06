package com.cybage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PaymentController {

	@RequestMapping(value = "/add-payment", method = RequestMethod.POST)
	public String showPaymentPage(@RequestParam(value = "selectedSeats", required = false) String[] selectedSeats,
			@RequestParam(value = "selectedCoupons", required = false) String[] selectedCoupons,
			@RequestParam(value = "totalAmount", required = false) Integer totalAmount, // Retrieve totalAmount from the
																						// request parameters
			Model model) {
		System.out.println("in add-payment");

		// Handling the case where mealCoupons parameter is missing
		if (selectedCoupons == null) {
			selectedCoupons = new String[0]; // Assign an empty array if no meal coupons are selected
		}

		// Add the total amount to the model
		model.addAttribute("totalAmount", totalAmount);
		model.addAttribute("selectedSeats", selectedSeats);
		model.addAttribute("selectedCoupons", selectedCoupons);

		return "Payment"; // Corrected view name to match the JSP file name
	}

	@RequestMapping(value = "/add-confirm-payment", method = RequestMethod.POST)
	public String confirmPayment(@RequestParam("card_number") String cardNumber,
			@RequestParam("expiry_date") String expiryDate, @RequestParam("cvv") String cvv,

			Model model) {
		// Process payment here (for demonstration, just return a success message)
		model.addAttribute("message", "Payment successful. Thank you!");

		// Extracting month and year from expiry date and formatting to MMYYYY
		String[] expiryParts = expiryDate.split("/");
		String month = String.format("%02d", Integer.parseInt(expiryParts[0]));
		String year = expiryParts[1];
		String formattedExpiryDate = month + year;
		model.addAttribute("expiryDate", formattedExpiryDate);

		return "PaymentConfirmation"; // Corrected view name to match the JSP file name
	}

}
