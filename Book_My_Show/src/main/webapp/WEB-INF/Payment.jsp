<%@ page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Payment</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">

<style>
/* Custom CSS for Payment Page */
body {
	background-color: #f8f9fa; /* Light gray background */
	font-family: Arial, sans-serif; /* Default font */
	background:
		url("https://th.bing.com/th/id/OIP.81jStr6-ngYfqCN3nA-VVAAAAA?rs=1&pid=ImgDetMain")
		no-repeat fixed center;
	background-size: cover;
}

.container {
	max-width: 600px; /* Set maximum width for the container */
	margin: 50px auto;
	/* Center the container horizontally with top margin */
	padding: 30px; /* Add padding */
	background-color: #f3f3f3de; /* White background */
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
	background-color: #dd283a; /* Brown button background color */
	color: white; /* White text color */
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
		<h1>Payment</h1>
		<p style="text-align: center;">Please proceed with your payment.</p>
		<p><strong>Total Amount:</strong> ₹ ${totalAmount}</p>
		<!-- Display the total amount -->
		<!-- 
    <form action="add-confirm-payment" method="post">
        Other payment fields
        No need for hidden input field for total amount as it's already passed from confirm-booking.jsp

        <label for="card_number">Card Number:</label> <input type="text" id="card_number" name="card_number" maxlength="12" required><br>
        <br> <label for="expiry_date">Expiry Date (MM/YY):</label> <input type="text" id="expiry_date" name="expiry_date" pattern="(0[1-9]|1[0-2])\/[0-9]{2}" placeholder="MM/YY" maxlength="5" required><br> <label for="cvv">CVV:</label>
        <input type="password" id="cvv" name="cvv" pattern="[0-9]{3}" title="CVV must be 3 digits" maxlength="3" required><br>
        <br>

        <button type="submit" class="btn btn-primary">Pay Now</button>
    </form> -->
		<form action="add-confirm-payment" method="post">
			<!-- Other payment fields -->

			<!-- Card Number -->
			<div class="form-group">
				<label for="card_number"><strong>Card Number:</strong></label>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
					type="text" id="card_number" name="card_number" maxlength="12"
					placeholder="xxxxxxxxxxxx" required>
			</div>

			<!-- Expiry Date -->
			<div class="form-group">
				<label for="expiry_date"><strong>Expiry Date (MM/YY):</strong></label> <input
					type="text" id="expiry_date" name="expiry_date"
					pattern="(0[1-9]|1[0-2])\/[0-9]{2}" placeholder="MM/YY"
					maxlength="5" required>
			</div>

			<!-- CVV -->
			<div class="form-group">
				<label for="cvv"><strong>CVV:</strong></label>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="password" id="cvv" name="cvv" pattern="[0-9]{3}"
					title="CVV must be 3 digits" maxlength="3" placeholder="xxx"
					required>
			</div>

			<!-- Submit Button -->
			<div class="form-group">
				<button type="submit" class="btn btn-danger">Pay Now</button>
			</div>
		</form>

	</div>
</body>
</html>



