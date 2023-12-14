<!DOCTYPE html>
<html>
<head>
    <title>Home Page</title>
    <style>
        html, body {
            height: 100%; /* Full height for the body */
            margin: 0; /* Remove default margin */
            display: flex; /* Enables flexbox */
            justify-content: center; /* Centers content horizontally */
            align-items: center; /* Centers content vertically */
            text-align: center; /* Centers text */
            font-family: Arial, sans-serif; /* Optional: Sets a default font */
        }

        .container {
            display: flex;
            flex-direction: column; /* Stack children vertically */
            align-items: center; /* Align children in the center */
        }

        nav ul {
            list-style-type: none; /* Removes bullet points from the list */
            padding: 0; /* Removes default padding */
            display: flex; /* Enables flexbox for the list */
            justify-content: center; /* Centers list items horizontally */
        }

        nav li {
            margin: 0 10px; /* Adds horizontal spacing between list items */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to the User and Order Management System</h1>
        <form action="/search" method="get">
            <input type="text" name="search" placeholder="Search by User Name">
            <input type="submit" value="Search">
        </form>
        <nav>
            <ul>
                <li><a href="/users">Manage Users</a></li>
                <li><a href="/orders">Manage Orders</a></li>
            </ul>
        </nav>
    </div>
</body>
</html>
