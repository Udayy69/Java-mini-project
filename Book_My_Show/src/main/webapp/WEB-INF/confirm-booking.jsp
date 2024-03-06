
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Booking Confirmation</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
/* Custom CSS for Booking Confirmation Page */
body {
	background-color: #f8f9fa; /* Light gray background */
	font-family: Arial, sans-serif; /* Default font */
	background:
		url("https://static.vecteezy.com/system/resources/previews/023/330/994/non_2x/two-cinema-tickets-realistic-movie-ticket-mockup-old-vintage-movies-show-entrance-pass-film-festival-admission-coupon-template-vector.jpg")
		no-repeat fixed center;
}

.container {
	max-width: 600px; /* Set maximum width for the container */
	margin: 50px auto;
	/* Center the container horizontally with top margin */
	padding: 30px; /* Add padding */
	background-color: #f5f5e8f7; /* White background */
	border-radius: 10px; /* Rounded corners */
	box-shadow: 0px 0px 20px 0px rgba(0, 0, 0, 0.1);
	/* Box shadow for card effect */
}

h1 {
	color: red; /* Brown heading color */
	text-align: center; /* Center the heading */
	margin-bottom: 30px; /* Add margin below the heading */
}

ul {
	list-style-type: none; /* Remove default list style */
	padding: 0; /* Remove default padding */
}

ul li {
	margin-bottom: 10px; /* Add margin between list items */
}

button[type="submit"] {
	width: 100%; /* Full width button */
	background-color: #d93535; /* Brown button background color */
	color: #fff; /* White text color */
	padding: 14px; /* Add padding */
	border: none; /* No border */
	border-radius: 5px; /* Rounded corners */
	cursor: pointer; /* Cursor on hover */
	transition: background-color 0.3s; /* Smooth transition on hover */
}

button[type="submit"]:hover {
	background-color: dark brown; /* Darker brown on hover */
}
</style>
</head>
<body>
	<div class="container mt-5">
		<h1>Booking Confirmation</h1>
		<form action="add-payment" method="post">
			<p style="color: green;">${message}</p>
			<%-- <p>
				<strong>Selected Seats:</strong>
				<!-- <ul> -->
				<c:forEach var="element" items="${selectedSeats}">
					<li>${element}</li>
				</c:forEach>
				<!-- </ul> -->
			</p> --%>
			<p>
				<strong>Selected Seats:</strong>
				<c:if test="${not empty selectedSeats}">
					<div style="display: flex;">
						<c:forEach var="element" items="${selectedSeats}">
							<div style="margin-right: 10px;">
								<li>${element}</li>
							</div>
						</c:forEach>
					</div>
				</c:if>
			</p>

			<p>
				<strong>Selected Meal Coupons:</strong>
				<c:if test="${not empty selectedCoupons}">
					<div style="display: flex;">
						<c:forEach var="coupon" items="${selectedCoupons}">
							<div style="margin-right: 10px;">
								<li>${coupon}</li>
							</div>
						</c:forEach>
					</div>
				</c:if>
			</p>

			<p>
				<strong>Selected Date:</strong>
				<c:forEach var="date" items="${selectedDate}">
					<li>${date}</li>
				</c:forEach>
			</p>


			<p>
				<strong>Selected Time Slot:</strong>
				<c:forEach var="time" items="${timeSlot}">
					<li>${time}</li>
				</c:forEach>
			</p>



			<p>
				<strong>Total Amount: ₹ ${totalAmount}</strong>
			</p>

			<!-- Add hidden input fields for selected tickets and coupons -->
			<input type="hidden" name="selectedSeats" value="${selectedSeats[0]}">
			<input type="hidden" name="selectedCoupons"
				value="${selectedCoupons}"> <input type="hidden"
				name="totalAmount" value="${totalAmount}">

			<button type="submit" class="btn btn-danger">Add Payment</button>
		</form>
	</div>
</body>
</html>
