<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Movie Details</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

form {
	background-color: #fff;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

label {
	font-weight: bold;
}

input[type="text"], input[type="number"], input[type="date"] {
	width: 100%;
	padding: 10px;
	margin: 5px 0;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-sizing: border-box;
}

input[type="submit"] {
	width: 100%;
	padding: 10px;
	border: none;
	border-radius: 5px;
	background-color: #007bff;
	color: #fff;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

input[type="submit"]:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>
	<form action="searchEventsByName" method="post">
		<label for="eventName">Event Name:</label> 
		<input type="text" id="eventName" name="eventName" placeholder="Enter the event name" required> 
		<br> 			
		<input type="submit" value="Search">
	</form>
</body>
</html>
