<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Sports Details</title>
<style>
body {
	font-family: Arial, sans-serif;
}

form {
	margin: 0 auto;
	width: 400px;
	padding: 20px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

input[type="text"], input[type="number"], input[type="date"] {
	width: 100%;
	padding: 10px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

input[type="submit"] {
	width: 100%;
	padding: 10px;
	border: none;
	border-radius: 5px;
	background-color: #007bff;
	color: #fff;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>
	<form action="addsports" method="post">
		<label for="sportsName">Sport Name:</label> <input type="text"
			id="sportsName" name="sportsName" placeholder="Enter the sport Name"
			required><br> <label for="releaseDate">Date:</label> <input
			type="date" id="Date" name="Date" required><br> <label
			for="duration">Location:</label> <input type="text" id="location"
			name="location" placeholder="Enter the location" required><br>
		<label for="price">Price:</label> <input type="number" id="price"
			name="price" step="0.01" placeholder="Enter the price" required><br>
		<label for="posterUrl">SportsPoster URL:</label> <input type="text"
			id="posterUrl" name="sportsPosterUrl"
			placeholder="Enter the URL of sports poster"><br> <input
			type="submit" value="Submit">
	</form>
</body>
</html>
