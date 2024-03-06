<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Admin Home Page</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-image: url('https://www.salthillhotel.com/wp-content/uploads/2021/09/omniplex.jpeg');
            background-size: cover; /* Cover the entire viewport */
            background-repeat: no-repeat; /* Do not repeat the background image */
            background-position: center; /* Center the background image */
            color: white;
            margin: 0;
            padding: 0;
            height:900px;
            box-sizing: border-box;
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
            line-height: inherit; /* Inherit line height from parent (.navbar) */
        }


        .container {
            display: flex;
            justify-content: space-around;
            align-items: center;
            padding: 80px;
            margin-top: 5px;
        }

        .card {
            background-color: rgba(252, 252, 252, 0.7); /* Transparent white */
            border-radius: 30px;
            padding: 50px;
            color: black;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 300px;
            height: 400px;
            text-align: center;
            margin: 0 20px; /* Added margin to create gap between cards */
        }

        .card h1 {
            font-size: 24px;
            font-weight: 700;
            margin-bottom: 20px;
        }

        .btn-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 30px;
            margin-top: 40px;
        }

        .btn {
            padding: 20px 40px;
            font-size: 16px;
            background-color: red;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #cc0000;
        }
    </style>
</head>

<body>
    <div class="navbar">
        <h1>Welcome Admin</h1>
    </div>
    <div class="container">
        <div class="card">
            <h1>MOVIES</h1>
            <div class="btn-container">
                <form action="movies" method="post">
                    <input class="btn" type="submit" value="  Add  Movies">
                </form>
                <form action="deletemovies" method="post">
                    <input class="btn" type="submit" value="Delete Movies">
                </form>
            </div>
        </div>

        <div class="card">
            <h1>EVENTS</h1>
            <div class="btn-container">
                <form action="events" method="post">
                    <input class="btn" type="submit" value="  Add  Events">
                </form>
                <form action="deleteevents" method="post">
                    <input class="btn" type="submit" value="Delete Events">
                </form>
            </div>
        </div>

        <div class="card">
            <h1> SPORTS</h1>
            <div class="btn-container">
                <form action="sports" method="post">
                    <input class="btn" type="submit" value="  Add  Sports">
                </form>
                <form action="deletesports" method="post">
                    <input class="btn" type="submit" value="Delete Sports">
                </form>
            </div>
        </div>
    </div>
</body>

</html>
