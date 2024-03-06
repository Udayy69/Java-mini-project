<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Inside Movies.jsp</h1>
	<form action="addMovie" method="post">
		<div>
			<label for="movieName">Movie Name:</label><br> 
			<input type="text" id="movieName" name="movieName" required><br>
		</div>
		<div>
			<label for="city">City:</label><br> 
			<input type="text" id="city" name="city" required><br>
		</div>
		<div>
			<label for="language">Language:</label><br> 
			<input type="text" id="language" name="language" required><br>
		</div>
		<div>
			<label for="genere">Genere:</label><br> 
			<input type="text" id="genere" name="genere" required><br>
		</div>
		<div>
			<label for="duration">Duration (in minutes):</label><br> 
			<input type="number" id="duration" name="duration" min="1" max="500"
				required><br>
		</div>
		<div>
			<label for="releaseDate">Release Date:</label><br> 
			<input type="date" id="releaseDate" name="releaseDate" required><br>
		</div>
		<div>
			<label for="price">Price:</label><br> 
			<input type="number" step="0.01" id="price" name="price" min="0" required><br>
		</div>
		<input type="submit" value="Submit">
	</form>
</body>
</html>