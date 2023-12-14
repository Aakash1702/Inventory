<!DOCTYPE html>
<html>
<head>
    <title>Add User</title>
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
    <h2>Add New User</h2>
    <form action="/add_user" method="post">
        User ID: <input type="text" name="user_id"><br>
        Name: <input type="text" name="name"><br>
        Email: <input type="text" name="email"><br>
        Age: <input type="number" name="age"><br>
        <input type="submit" value="Add User">
    </form>
</body>
</html>
