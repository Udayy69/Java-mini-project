<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta charset="UTF-8">
<title>Add Event Details</title>
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
	<form action="addEvent" method="post">
		<label for="eventName">Event Name:</label> <input type="text"
			id="eventName" name="eventName" placeholder="Enter the event name"
			required><br> <label for="language">Language:</label> <input
			type="text" id="language" name="language"
			placeholder="Enter the language of event" required><br>
		<label for="city">City:</label> <input type="text" id="city"
			name="city" placeholder="Enter the city" required><br> <label
			for="genre">Genre:</label> <input type="text" id="genre" name="genre"
			placeholder="Enter the genre of event" required><br> <label
			for="duration">Duration (minutes):</label> <input type="number"
			id="duration" name="duration" placeholder="Enter the duration"
			required><br> <label for="releaseDate">Release
			Date:</label> <input type="date" id="releaseDate" name="releaseDate" required><br>
		<label for="price">Price:</label> <input type="number" id="price"
			name="price" step="0.01" placeholder="Enter the price" required><br>
		<label for="posterUrl">Event Poster URL:</label> <input type="text"
			id="posterUrl" name="eventPosterUrl"
			placeholder="Enter the URL of event poster"><br> <input
			type="submit" value="Submit">
	</form>
</body>
</html>
</body>
</html>
