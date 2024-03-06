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

body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background: #fff;
	color: #000;
	font-size: 15px;
	line-height: 1.5;
	margin-top: 20px;
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
	height: 17rem;
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

a {
	color: #262626;
	text-decoration: none;
}

ul {
	list-style: none;
}

.container {
	width: 90%;
	max-width: 1100px;
	margin: auto;
}

/* Nav */
.main-nav {
	display: flex;
	align-items: center;
	justify-content: space-between;
	height: 60px;
	padding: 20px 0;
	font-size: 13px;
}

.main-nav .logo {
	width: 110px;
}

.main-nav ul {
	display: flex;
}

.main-nav ul li {
	padding: 0 10px;
}

.main-nav ul li a {
	padding-bottom: 2px;
}

.main-nav ul li a:hover {
	border-bottom: 2px solid #262626;
}

.main-nav ul.main-menu {
	flex: 1;
	margin-left: 20px;
}

.menu-btn {
	cursor: pointer;
	position: absolute;
	top: 20px;
	right: 30px;
	z-index: 2;
	display: none;
}

/* Showcase */
.showcase {
	width: 100%;
	height: 400px;
	background: url('https://i.ibb.co/zGSDGCL/slide1.png') no-repeat center
		center/cover;
	display: flex;
	flex-direction: column;
	align-items: center;
	text-align: center;
	justify-content: flex-end;
	padding-bottom: 50px;
	margin-bottom: 20px;
}

.showcase h2, .showcase p {
	margin-bottom: 10px;
}

.showcase .btn {
	margin-top: 20px;
}

/* Home cards */
.home-cards {
	display: grid;
	grid-template-columns: repeat(4, 1fr);
	grid-gap: 20px;
	margin-bottom: 40px;
}

.home-cards img {
	width: 100%;
	margin-bottom: 20px;
	height: auto;
	border-radius: 7px;
}

.home-cards h3 {
	margin-bottom: 5px;
}

.home-cards a {
	display: inline-block;
	padding-top: 10px;
	color: #0067b8;
	text-transform: uppercase;
	font-weight: bold;
}

.home-cards a:hover i {
	margin-left: 10px;
}

/* Xbox */
.xbox {
	width: 100%;
	height: 350px;
	background:
		url('https://assets-in.bmscdn.com/nmcms/events/banner/desktop/media-desktop-indian-street-premier-league-2024-0-2024-3-4-t-7-46-44.jpg')
		no-repeat center center/cover;
	color: white;
	margin-bottom: 20px;
}

.xbox .content {
	width: 40%;
	padding: 50px 0 0 30px;
}

.xbox p, .carbon p {
	margin: 10px 0 20px;
}

/* Carbon */
.carbon {
	width: 100%;
	height: 350px;
	background:
		url('https://demonslayer-anime.com/worldtour2024/assets/img/main_vj.jpg')
		no-repeat center center/cover;
}

.carbon .content {
	width: 55%;
	padding: 100px 0 0 30px;
}

/* Follow */
.follow {
	display: flex;
	align-items: center;
	justify-content: flex-start;
	margin: 30px 0 30px;
}

.follow * {
	margin-right: 10px;
}

/* Links */
.links {
	background: #f2f2f2;
	color: #616161;
	font-size: 12px;
	padding: 35px 0;
}

.links-inner {
	max-width: 1100px;
	margin: 0 auto;
	padding: 0 20px;
	display: grid;
	grid-template-columns: repeat(6, 1fr);
	grid-gap: 10px;
	align-items: flex-start;
	justify-content: center;
}

.links li {
	line-height: 2.8;
}

/* Footer */
.footer {
	background: #f2f2f2;
	color: #616161;
	font-size: 12px;
	padding: 20px 0;
}

.footer-inner {
	max-width: 1100px;
	margin: 0 auto;
	padding: 0 20px 0 20px;
	display: flex;
	align-items: center;
	justify-content: space-between;
}

.footer div {
	margin-bottom: 20px;
	display: flex;
	align-items: center;
}

.footer div i {
	margin-right: 10px;
}

.footer ul {
	display: flex;
	flex-wrap: wrap;
}

.footer li {
	margin-right: 30px;
	margin-bottom: 20px;
}

@media ( max-width : 700px) {
	.menu-btn {
		display: block;
	}
	.menu-btn:hover {
		opacity: 0.5;
	}
	.main-nav ul.right-menu {
		margin-right: 50px;
	}
	.main-nav ul.main-menu {
		display: block;
		position: absolute;
		top: 0;
		left: 0;
		background: #f2f2f2;
		color: #616161;
		width: 50%;
		height: 100%;
		border-right: #ccc 1px solid;
		opacity: 0.9;
		padding: 30px;
		transform: translateX(-500px);
		transition: transform 0.5s ease-in-out;
	}
	.main-nav ul.main-menu li {
		padding: 10px;
		border-bottom: #ccc solid 1px;
		font-size: 14px;
	}
	.main-nav ul.main-menu li:last-child {
		border-bottom: 0;
	}
	.main-nav ul.main-menu.show {
		transform: translateX(-20px);
	}
	.home-cards {
		grid-template-columns: repeat(2, 1fr);
	}
	.xbox .content p {
		display: none;
	}
	.xbox .content h2 {
		margin-bottom: 20px;
	}
	.carbon .content {
		width: 85%;
	}
	.links .links-inner {
		grid-template-columns: repeat(2, 1fr);
	}
}

@media ( max-width : 500px) {
	.home-cards {
		grid-template-columns: 1fr;
	}
	.links .links-inner {
		grid-template-columns: 1fr;
	}
	.links .links-inner ul {
		margin-bottom: 20px;
	}
}
</style>
</head>

<body>
	<!-- <h3 class="text-center">Movies</h3> -->

	<div class="menu-btn">
		<i class="fas fa-bars fa-2x"></i>
	</div>

	<div class="container">
		<!-- Nav -->
		<nav class="main-nav">
			<img src="https://imagetolink.com/ib/zjnYGx9Dti.png" alt="Microsoft"
				class="logo" style="margin-bottom: 20px;">

			<ul class="main-menu">
				<li><a href="displayAllMovies.html">Movies</a></li>
				<li><a href="displayAllEvents.html">Events</a></li>
				<li><a href="displayAllSports.html">Sports</a></li>
			</ul>

			<ul class="right-menu">
				<li>

					<form action="searchSportsByName" method="post">
						<input type="text" id="sportsName" name="sportsName"
							placeholder="Search Sports" required> &nbsp; <input
							type="submit" value="Search">
					</form>
			</ul>
		</nav>


		<!-- <h3 class="text-center">Sports</h3> -->
		<div class="row justify-content-center">
			<c:forEach items="${sportsList}" var="sports">
				<div class="card movie_card">
					<img src="${sports.sportsPosterUrl}" class="card-img-top" alt="...">
					<div class="card-body">
						<button class="btn btn-primary rounded-circle"
							data-toggle="tooltip" data-placement="bottom"
							title="Book Tickets"
							style="width: 51px; height: 47px; margin-left: 235px">
							<i class="fas fa-ticket-alt"></i>
						</button>
						<h5 class="card-title">${sports.sportsName}</h5>
						<span class="movie_info">${sports.date}</span> <span
							class="movie_info float-right"><i class="fas fa-star"></i>
							${sports.location}</span>
					</div>
				</div>
			</c:forEach>
		</div>
		<footer class="footer">
			<div class="footer-inner">
				<div>
					<i class="fas fa-globe fa-2x"></i> English (United States)
				</div>
				<ul>
					<li><a href="#">Sitemap</a></li>
					<li><a href="#">Contact BookShowNow</a></li>
					<li><a href="#">Privacy & cookies</a></li>
					<li><a href="#">Terms of use</a></li>
					<li><a href="#">Trademarks</a></li>
					<li><a href="#">Safety & eco</a></li>
					<li><a href="#">About our ads</a></li>
					<li><a href="#">&copy; BookShowNow 2024</a></li>
				</ul>
			</div>
		</footer>
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