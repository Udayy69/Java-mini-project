<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Movies , Events , Sports</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
}

.container {
	text-align: center;
	margin-top: 100px;
}

.btn {
	padding: 10px 20px;
	font-size: 16px;
	background-color: #007bff;
	color: #fff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

.btn:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>

	<div class="container">
		<h1>ADD THE MOVIES</h1>
		<form action="movies" method="post">
			<input class="btn" type="submit" value="Add Movies">
		</form>
	</div>
	<div class="container">
		<h1>ADD THE EVENTS</h1>
		<form action="events" method="post">
			<input class="btn" type="submit" value="Add Events">
		</form>
	</div>
	<div class="container">
		<h1>ADD THE SPORTS</h1>
		<form action="sports" method="post">
			<input class="btn" type="submit" value="Add Sports">
		</form>
	</div>
	<a href = "displayAllMovies.html">display movies</a>
	<br><br>
	<a href = "displayAllEvents.html">display events</a>
	<br><br>
	<a href = "displayAllSports.html">display sports</a>

	<br><br>
	<a href = "searchMovie.html">Search Movies</a>
	<br><br>
	<a href = "searchEvent.html">Search Events</a>
	
	<br><br>
	<a href = "searchSports.html">Search Sports</a>
	<br><br>
	<a href = "home.html">Home</a>
	<br>
	
</body>
</html>

