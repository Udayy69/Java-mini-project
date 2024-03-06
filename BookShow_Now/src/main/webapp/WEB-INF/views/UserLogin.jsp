<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Login</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f5f5f5;
            text-align: center;
        }

        h1 {
            color: #333;
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
            background-color: #4caf50;
            color: #fff;
            cursor: pointer;
        }

        p {
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <h1>User Login</h1>
    <div class="login-container">
        <form action="userLoginProcess" method="post">
            <label for="username">User Username:</label>
            <input type="text" id="username" name="username" required><br>

            <label for="password">User Password:</label>
            <input type="password" id="password" name="password" required><br>

            <input type="submit" value="User Login">
        </form>

    </div>
</body>
</html>
