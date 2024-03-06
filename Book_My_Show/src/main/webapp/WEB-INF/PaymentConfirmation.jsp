
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Payment Confirmation</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
/* Custom CSS for Booking Confirmation Page */
body {
	background-color: #f8f9fa; /* Light gray background */
	font-family: Arial, sans-serif; /* Default font */
	background:
		url("https://th.bing.com/th/id/OIP.1WLaNjvQVzx_BZUvhqpC5AHaHo?rs=1&pid=ImgDetMain")
		no-repeat fixed center;
	/* background-size: cover;*/
}

.container {
	max-width: 600px; /* Set maximum width for the container */
	margin: 50px auto;
	/* Center the container horizontally with top margin */
	padding: 30px; /* Add padding */
	background-color: #f5f5dcd9; /* White background */
	border-radius: 10px; /* Rounded corners */
	box-shadow: 0px 0px 20px 0px rgba(0, 0, 0, 0.1);
	/* Box shadow for card effect */
}

h1 {
	color: red; /* Brown heading color */
	text-align: center; /* Center the heading */
	margin-bottom: 30px; /* Add margin below the heading */
}
</style>
</head>
<body>
	<div class="container mt-5">
		<h1>Payment Confirmation</h1>
		<p th:text="${message}" style="text-align: center;">
			<strong>Payment successful. Thank you!</strong>
		</p>



	</div>
</body>
</html>






