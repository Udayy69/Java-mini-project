<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Movie</title>
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
        min-height: 100vh;
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
    .card {
        background-color: #fff;
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        margin-top: 100px; 
        margin-bottom: 100px; 
        width: 250px; 
        height: 250px; 
    }
    h1 {
        margin-top: 0;
    }
    form {
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    label {
        font-weight: bold;
        margin-bottom: 10px;
    }
    input[type="text"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
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
    }
    input[type="submit"]:hover {
        background-color: #cc0000;
    }
</style>
</head>
<body>
    <div class="navbar">
        <h1>DELETE MOVIES</h1>
    </div>
    <div class="card">
        <form action="deleteMovie" method="post">
            <label for="movieId">ENTER MOVIE ID:</label>
            <input type="text" name="movieId" placeholder="Enter the Id to delete" required><br>
            <input type="submit" value="Delete Movie">
        </form>
    </div>
</body>
</html>
