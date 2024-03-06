<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Sports Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://www.salthillhotel.com/wp-content/uploads/2021/09/omniplex.jpeg');
            background-size: cover; 
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column; /* Added */
            align-items: center;
            height: 100vh;
        }
        .navbar {
            width: 100%;
            background-color: red;
            text-align: center;
            color: white;
            padding: 20px 0;
            height: 40px;
            margin-bottom: 20px;
            line-height: 40px; /* Center text vertically */
        }

        .navbar h1 {
            margin: 0; /* Remove default margin */
            line-height: inherit; 
        }

        form {
            background-color: #fff;
            margin: 0 auto;
            width: 400px;
            padding: 20px;
            border: 2px solid #ccc;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        label {
            font-weight: bold;
            display: block;
            margin-bottom: 10px;
        }
        input[type="text"], input[type="number"], input[type="date"] {
            width: calc(100% - 22px);
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            width: calc(100% - 22px);
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: red;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #cc0000;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <h1>ADD SPORTS</h1>
    </div>
    <form action="addsports" method="post">
        <label for="sportsName">Sport Name:</label>
        <input type="text" id="sportsName" name="sportsName" placeholder="Enter the sport Name" required>
        
        <label for="releaseDate">Date:</label>
        <input type="date" id="Date" name="Date" required>
        
        <label for="duration">Location:</label>
        <input type="text" id="location" name="location" placeholder="Enter the location" required>
        
        <label for="price">Price:</label>
        <input type="number" id="price" name="price" step="0.01" placeholder="Enter the price" required>
        
        <label for="posterUrl">Sports Poster URL:</label>
        <input type="text" id="posterUrl" name="sportsPosterUrl" placeholder="Enter the URL of sports poster">
        
        <input type="submit" value="Submit">
    </form>
</body>
</html>
