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
	<form action="addMovie" method="post">
		<label for="movieName">Movie Name:</label> <input type="text"
			id="movieName" name="movieName" placeholder="Enter the movie name"
			required> <br> <label for="city">City:</label> <input
			type="text" id="city" name="city" placeholder="Enter the city"
			required><br> <label for="language">Language:</label> <input
			type="text" id="language" name="language"
			placeholder="Enter the language of movie" required><br>
		<label for="genre">Genre:</label> <input type="text" id="genre"
			name="genre" placeholder="Enter the genre of movie" required><br>
		<label for="duration">Duration (minutes):</label> <input type="number"
			id="duration" name="duration" placeholder="Enter the duration"
			required><br> <label for="releaseDate">Release
			Date:</label> <input type="date" id="releaseDate" name="releaseDate" required><br>
		<label for="price">Price:</label> <input type="number" id="price"
			name="price" step="0.01" placeholder="Enter the price" required><br>
		<label for="posterUrl">Poster URL:</label> <input type="text"
			id="posterUrl" name="posterUrl"
			placeholder="Enter the URL of movie poster"><br> <input
			type="submit" value="Submit">
	</form>
</body>
</html>
