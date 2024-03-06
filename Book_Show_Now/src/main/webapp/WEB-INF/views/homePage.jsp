<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<style>
* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}

body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background: #fff;
	color: #000;
	font-size: 15px;
	line-height: 1.5;
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

.btn {
	cursor: pointer;
	display: inline-block;
	border: 0;
	font-weight: bold;
	padding: 10px 20px;
	background: #f4f4f4;
	color: #333;
	font-size: 15px;
	;
}

.btn:hover {
	opacity: 0.9;
}

.dark {
	color: #fff;
}

.dark .btn {
	background: #f4f4f4;
	color: #333;
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
	<div class="menu-btn">
		<i class="fas fa-bars fa-2x"></i>
	</div>

	<div class="container">
		<!-- Nav -->
		<nav class="main-nav">
			<img
				src="https://imagetolink.com/ib/zjnYGx9Dti.png"
				alt="Microsoft" class="logo">

			<ul class="main-menu">
				<li><a href="displayAllMovies.html">Movies</a></li>
				<li><a href="displayAllEvents.html">Events</a></li>
				<li><a href="displayAllSports.html">Sports</a></li>
			</ul>

			<ul class="right-menu">
				<li><a href="#"> <i class="bi bi-search"></i> <svg
							xmlns="http://www.w3.org/2000/svg" width="16" height="16"
							fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                            <path
								d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0" />
                        </svg>
				</a>
				<li><a href="#">Login/Register</a></li>
				<li><a href="#">Orgainser Login</a></li>
				</li>
				<li><a href="#"> <i class="fas fa-shopping-cart"></i>
				</a></li>
			</ul>
		</nav>

		<!-- Showcase -->
		<header class="showcase">
			<h2>Surface Deals</h2>
			<p>Select Surfaces are on sale now - save while supplies last</p>
			<a href="#" class="btn"> Book Now <i class="fas fa-chevron-right"></i>
			</a>
		</header>

		<!-- Home cards 1 -->
		<section class="home-cards">
			<div>
				<img
					src="https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/salaar-cease-fire--part-1-et00301886-1702971289.jpg"
					alt="">
				<h3>Salaar : Cease Fire Part1</h3>
				<p>Telugu</p>
				<a href="#">Book Now <i class="fas fa-chevron-right"></i></a>
			</div>
			<div>
				<img
					src="https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/dune-part-two-et00331567-1706167890.jpg"
					alt="" />
				<h3>Dune part Two</h3>
				<p>English , Hindi</p>
				<a href="#">Book Now <i class="fas fa-chevron-right"></i></a>
			</div>
			<div>
				<img
					src="https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/article-370-et00384444-1708669471.jpg"
					alt="" />
				<h3>Article 370</h3>
				<p>Hindi</p>
				<a href="#">Book Now <i class="fas fa-chevron-right"></i></a>
			</div>
			<div>
				<img
					src="https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/gaami-et00386605-1708581638.jpg"
					alt="" />
				<h3>Gaami</h3>
				<p>Telugu</p>
				<a href="#">Book Now <i class="fas fa-chevron-right"></i></a>
			</div>
		</section>

		<!-- Xbox -->
		<section class="xbox">
			<div class="content">
				<h2>Indian Street Premier League 2024</h2>
				<p>The ISPL T10 is the first ever tennis ball T10 cricket
					league. This league is touted to bring the finest tennis ball
					cricketers under one roof and give them a platform to showcase
					their talent.</p>
				<a href="#" class="btn"> Book Now <i
					class="fas fa-chevron-right"></i>
				</a>
			</div>
		</section>

		<!-- Home cards 2 -->
		<section class="home-cards">
			<div>
				<img
					src="https://images.everydayhealth.com/images/healthy-living/fitness/all-about-yoga-mega-722x406.jpg?sfvrsn=c26482ac_3"
					alt="" />
				<h3>Yoga Retreat</h3>
				<p>Join us for an invigorating yoga experience and demo session
					designed to strengthen bonds and ignite connections.</p>
				<a href="#">Book Now <i class="fas fa-chevron-right"></i></a>
			</div>
			<div>
				<img
					src="https://assets-in.bmscdn.com/nmcms/events/banner/desktop/media-desktop-lumiere-lantern-carnival-0-2024-2-22-t-7-29-59.jpg"
					alt="" />
				<h3>Lumiere Lantern Carnival</h3>
				<p>Witness thousands of flickering lanterns flying in the sky
					carrying loads of wishes</p>
				<a href="#">Book Now <i class="fas fa-chevron-right"></i></a>
			</div>
			<div>
				<img
					src="https://assets-in.bmscdn.com/nmcms/events/banner/desktop/media-desktop-telugu-standup-comedy-open-mic-at-kukatpally-0-2023-6-19-t-8-9-47.jpg"
					alt="" />
				<h3>Telugu Comedy Open mic</h3>
				<p>Live Telugu Standup comedy is pretty much non-existent in
					Hyderabad or on Youtube</p>
				<a href="#">Book Now <i class="fas fa-chevron-right"></i></a>
			</div>
			<div>
				<img
					src="https://assets-in.bmscdn.com/nmcms/events/banner/desktop/media-desktop-botanical-candle-making-workshop-0-2024-3-2-t-10-21-40.jpg"
					alt="" />
				<h3>Botanical candle making workshop</h3>
				<p>Join us for a botanical candle making workshop where nature
					meets creativity!</p>
				<a href="#">Book Now <i class="fas fa-chevron-right"></i></a>
			</div>
		</section>

		<!-- Carbon -->
		<section class="carbon dark">
			<div class="content">
				<h2>Demon Slayer: Kimetsu no Yaiba</h2>
				<p>Demon Slayer: Kimetsu no Yaiba (鬼滅の刃, Kimetsu no Yaiba, rgh.
					"Blade of Demon Destruction") is a Japanese manga series written
					and illustrated by Koyoharu Gotouge.</p>
				<a href="#" class="btn"> Book Now <i
					class="fas fa-chevron-right"></i>
				</a>
			</div>
		</section>

		<!-- Follow -->
		<section class="follow">
			<p>Follow BookShowNow</p>
			<a href="https://facebook.com"> <img
				src="https://i.ibb.co/LrVMXNR/social-fb.png" alt="Facebook">
			</a> <a href="https://twitter.com"> <img
				src="https://i.ibb.co/vJvbLwm/social-twitter.png" alt="Twitter">
			</a> <a href="https://linkedin.com"> <img
				src="https://i.ibb.co/b30HMhR/social-linkedin.png" alt="Linkedin">
			</a>
		</section>
	</div>
	<!-- Links -->
	<!-- <section class="links">
        <div class="links-inner">
            <ul>
                <li>
                    <h3>What's New</h3>
                </li>
                <li><a href="#">Surface Pro X</a></li>
                <li><a href="#">Surface Laptop 3</a></li>
                <li><a href="#">Surface Pro 7</a></li>
                <li><a href="#">Windows 10 apps</a></li>
                <li><a href="#">Office apps</a></li>
            </ul>
            <ul>
                <li>
                    <h3>Microsoft Store</h3>
                </li>
                <li><a href="#">Account Profile</a></li>
                <li><a href="#">Download Center</a></li>
                <li><a href="#">Microsoft Store support</a></li>
                <li><a href="#">Returns</a></li>
                <li><a href="#">Older tracking</a></li>
            </ul>
            <ul>
                <li>
                    <h3>Education</h3>
                </li>
                <li><a href="#">Microsfot in education</a></li>
                <li><a href="#">Office for students</a></li>
                <li><a href="#">Office 365 for schools</a></li>
                <li><a href="#">Deals for studentss</a></li>
                <li><a href="#">Microsfot Azure</a></li>
            </ul>
            <ul>
                <li>
                    <h3>Enterprise</h3>
                </li>
                <li><a href="#">Azure</a></li>
                <li><a href="#">AppSource</a></li>
                <li><a href="#">Automotive</a></li>
                <li><a href="#">Government</a></li>
                <li><a href="#">Healthcare</a></li>
            </ul>
            <ul>
                <li>
                    <h3>Developer</h3>
                </li>
                <li><a href="#">Visual Studio</a></li>
                <li><a href="#">Windowszs Dev Center</a></li>
                <li><a href="#">Developer Network</a></li>
                <li><a href="#">TechNet</a></li>
                <li><a href="#">Microsoft Developer</a></li>
            </ul>
            <ul>
                <li>
                    <h3>Company</h3>
                </li>
                <li><a href="#">Careers</a></li>
                <li><a href="#">About Microsoft</a></li>
                <li><a href="#">Company news</a></li>
                <li><a href="#">Privacy at Microsoft</a></li>
                <li><a href="#">Inverstors</a></li>
            </ul>
        </div>
    </section> -->

	<!-- Footer -->
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
	<script>
        document.querySelector('.menu-btn').addEventListener('click', () => document.querySelector('.main-menu').classList.toggle('show'));
    </script>
</body>

</html>