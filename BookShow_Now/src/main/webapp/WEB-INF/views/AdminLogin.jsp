<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<style>
body {
	font-family: 'Arial', sans-serif;
	background-color: #f5f5f5;
	text-align: center;
	background:
		url("https://www.salthillhotel.com/wp-content/uploads/2021/09/omniplex.jpeg")
		no-repeat fixed center;
	background-size: cover;
}

h1 {
	color: #fff;
	margin-top: 50px;
}

.login-container {
	max-width: 300px;
	margin: 50px auto;
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
}

p {
	margin-top: 10px;
}
</style>
</head>
<body>
	<h1>Admin Login</h1>
	<div class="login-container">
		<form action="adminLoginProcess" method="post">
			<label for="adminUsername">Admin Username:</label> <input type="text"
				id="adminUsername" name="adminUsername" required><br> <label
				for="adminPassword">Admin Password:</label> <input type="password"
				id="adminPassword" name="adminPassword" required><br> <input
				type="submit" value="Admin Login">
		</form>

	</div>
</body>
</html>
