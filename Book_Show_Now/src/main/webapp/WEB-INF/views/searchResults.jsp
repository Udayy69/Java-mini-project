
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Results</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
	crossorigin="anonymous">
<style>
* {
	font-family: 'Poppins', sans-serif;
	-webkit-user-select: none;
	-moz-user-select: -moz-none;
	-o-user-select: none;
	user-select: none;
}

img {
	-webkit-user-drag: none;
	-moz-user-drag: none;
	-o-user-drag: none;
	user-drag: none;
}

img {
	pointer-events: none;
}

.movie_card {
	padding: 0 !important;
	width: 20rem;
	margin: 14px;
	border-radius: 10px;
	box-shadow: 0 3px 4px 0 rgba(0, 0, 0, 0.2), 0 4px 15px 0
		rgba(0, 0, 0, 0.19);
}

.movie_card img {
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
	height: 25rem;
}

.movie_info {
	color: #5e5c5c;
}

.movie_info i {
	font-size: 20px;
}

.card-title {
	width: 80%;
	height: 4rem;
}

.play_button {
	background-color: #ff3d49;
	position: absolute;
	width: 60px;
	height: 60px;
	border-radius: 50%;
	right: 20px;
	bottom: 111px;
	font-size: 27px;
	padding-left: 21px;
	padding-top: 16px;
	color: #FFFFFF;
	cursor: pointer;
}

.credits {
	margin-top: 20px;
	margin-bottom: 20px;
	border-radius: 8px;
	border: 2px solid #8e24aa;
	font-size: 18px;
}

.credits .card-body {
	padding: 0;
}

.credits p {
	padding-top: 15px;
	padding-left: 18px;
}

.credits .card-body i {
	color: #8e24aa;
}

.btn-book-tickets {
	background-color: #ff3d49;
	position: absolute;
	width: 60px;
	height: 60px;
	border-radius: 50%;
	right: 20px;
	bottom: 111px;
	font-size: 27px;
	padding-left: 21px;
	padding-top: 16px;
	color: #FFFFFF;
	cursor: pointer;
}

.btn-book-tickets:hover {
	background-color: #b30000;
	/* Darker red */
}

.btn-primary {
	color: #fff;
	background-color: red;
	border-color: red;
}

.rounded-circle {
	border-radius: 56%;
}
</style>
</head>
<body>
	<h3 class="text-center">Search Results</h3>
	<div class="row justify-content-center">
		<c:forEach items="${movieList}" var="movie">
			<div class="card movie_card">
				<img src="${movie.posterUrl}" class="card-img-top" alt="...">
				<div class="card-body">
					<button class="btn btn-primary rounded-circle"
						data-toggle="tooltip" data-placement="bottom" title="Book Tickets"
						style="width: 51px; height: 47px; margin-left: 235px">
						<i class="fas fa-ticket-alt"></i>
					</button>
					<h5 class="card-title">${movie.movieName}</h5>
					<span class="movie_info">${movie.releaseDate}</span> <span
						class="movie_info float-right"><i class="fas fa-star"></i>
						${movie.genre}</span>
				</div>
			</div>
		</c:forEach>
	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script>
		$(function() {
			$('[data-toggle="tooltip"]').tooltip()
		})
	</script>
</body>
</html>



