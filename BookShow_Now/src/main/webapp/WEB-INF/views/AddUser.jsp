<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Movie Portal - Register</title>
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

        form {
            max-width: 300px;
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
            background-color: #4caf50;
            color: #fff;
            cursor: pointer;
        }

        /* Add more styles as needed */
    </style>
</head>
<body>

    <h1>User Registration</h1>

    <form action="addUserProcess" method="post">
        <label for="userName">User Name:</label>
        <input type="text" id="userName" name="userName" required><br>

        <label for="userEmail">User Email:</label>
        <input type="email" id="userEmail" name="userEmail" required><br>

        <label for="userPassword">User Password:</label>
        <input type="password" id="userPassword" name="userPassword" required><br>
        
        <label for="userPhone">User Phone:</label>
         <input type="text" id="userPhone" name="userPhone" required><br>
        

        <input type="submit" value="Add User">
    </form>

</body>
</html>
