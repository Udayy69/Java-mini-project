<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Movie Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://www.salthillhotel.com/wp-content/uploads/2021/09/omniplex.jpeg');
            background-size: cover; 
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
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
            margin: 0; 
            line-height: inherit; 
        }

        form {
            background-color: #fff;
            border: 2px solid #ccc;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 400px;
        }

        label {
            font-weight: bold;
            margin-top: 10px;
            display: block;
        }

        input[type="text"],
        input[type="number"],
        input[type="date"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: red;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s ease;
            margin-top: 20px;
        }

        input[type="submit"]:hover {
            background-color: #cc0000;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <h1>ADD MOVIES</h1>
    </div>
    <form action="addMovie" method="post">
        <label for="movieName">Movie Name:</label>
        <input type="text" id="movieName" name="movieName" placeholder="Enter the movie name" required>

        <label for="city">City:</label>
        <input type="text" id="city" name="city" placeholder="Enter the city" required>

        <label for="language">Language:</label>
        <input type="text" id="language" name="language" placeholder="Enter the language of movie" required>

        <label for="genre">Genre:</label>
        <input type="text" id="genre" name="genre" placeholder="Enter the genre of movie" required>

        <label for="duration">Duration (minutes):</label>
        <input type="number" id="duration" name="duration" placeholder="Enter the duration" required>

        <label for="releaseDate">Release Date:</label>
        <input type="date" id="releaseDate" name="releaseDate" required>

        <label for="price">Price:</label>
        <input type="number" id="price" name="price" step="0.01" placeholder="Enter the price" required>

        <label for="posterUrl">Poster URL:</label>
        <input type="text" id="posterUrl" name="posterUrl" placeholder="Enter the URL of movie poster">

        <input type="submit" value="Submit">
    </form>
</body>
</html>
