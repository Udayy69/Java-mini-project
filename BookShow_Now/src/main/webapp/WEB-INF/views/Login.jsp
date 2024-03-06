<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Movie Portal - Login</title>
<style>
body {
	font-family: 'Arial', sans-serif;
	text-align: center;
	background:
		url("https://www.salthillhotel.com/wp-content/uploads/2021/09/omniplex.jpeg")
		no-repeat fixed center;
	background-size: cover;
}

h1 {
	color: #fff; /* Set title color to white */
	margin-top: 50px;
}

.login-container {
	max-width: 400px;
	margin: 0 auto;
	padding: 20px;
	background-color: #fff;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

label {
	display: block;
	margin-bottom: 10px;
}

input {
	width: 100%;
	padding: 8px;
	margin-bottom: 10px;
	box-sizing: border-box;
}

input[type="submit"] {
	background-color: #ff0000;
	color: #fff;
	cursor: pointer;
	width: 100%;
}

p {
	margin-top: 10px;
}

p a {
	color: #000; /* Set link color to white */
	text-decoration: none;
}

p a:hover {
	text-decoration: underline;
}
</style>
</head>
<body>
	<h1>Movie Portal Login</h1>
	<div class="login-container">
		<form action="userLoginProcess" method="post">
			<label for="username">Username:</label> <input type="text"
				id="username" name="username" required><br> <label
				for="password">Password:</label> <input type="password"
				id="password" name="password" required><br> <input
				type="submit" value="Login">
		</form>

		<p>
			Not a member? <a href="add-User">Sign up now</a>
		</p>
	</div>

	<p>
		<a href="add-user-login" style="color: #fff;">User Login</a> | <a
			href="add-admin-login" style="color: #fff;">Admin Login</a>
	</p>
</body>
</html>
