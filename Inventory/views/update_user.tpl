<!DOCTYPE html>
<html>
<head>
    <title>Update User</title>
</head>
body, html {
    height: 100%;
    margin: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    font-family: Arial, sans-serif;
    background-color: #f4f4f4; /* Optional: background color */
}

.container {
    text-align: center;
    padding: 20px;
    background-color: white;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

form {
    display: flex;
    flex-direction: column;
    align-items: center;
}

input[type="text"],
input[type="number"],
input[type="submit"] {
    margin-bottom: 10px;
    padding: 8px;
    border: 1px solid #ddd;
    border-radius: 4px;
}

input[type="submit"] {
    background-color: #007bff;
    color: white;
    border: none;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #0056b3;
}

label {
    margin-top: 10px;
}

<body>
    <h2>Update User</h2>
    <form action="/update_user/{{user['user_id']}}" method="post">
        Name: <input type="text" name="name" value="{{user['name']}}"><br>
        Email: <input type="text" name="email" value="{{user['email']}}"><br>
        Age: <input type="number" name="age" value="{{user['age']}}"><br>
        <input type="submit" value="Update User">
    </form>
</body>
</html>
