<!DOCTYPE html>
<html>
<head>
    <title>List of Users</title>
</head>
    <style>
      body, html {
    height: 100%;
    margin: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    font-family: Arial, sans-serif;
    background-color: #f4f4f4; /* Light grey background */
}

.container {
    text-align: center;
    width: 100%; /* Adjust this as needed */
    padding: 20px;
    background-color: white;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

table {
    border-collapse: collapse;
    width: 100%; /* Full width of the container */
    margin-top: 20px;
}

th, td {
    border: 1px solid #ddd;
    padding: 8px;
    text-align: left;
}

th {
    background-color: #f2f2f2;
}

.add-order-link {
    display: inline-block;
    margin-bottom: 20px;
    background-color: #007bff;
    color: white;
    padding: 10px 15px;
    border-radius: 5px;
    text-decoration: none;
}

.add-order-link:hover {
    background-color: #0056b3;
}

    </style>
<body>
    <div class="container">
        <h2>Users</h2>
        <a href="/add_order" class="add-order-link">Add New user</a>
        <table>
        <tr>
            <th>User ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Age</th>
            <th>Actions</th>
        </tr>
        % for user in users:
        <tr>
            <td>{{user['user_id']}}</td>
            <td>{{user['name']}}</td>
            <td>{{user['email']}}</td>
            <td>{{user['age']}}</td>
            <td>
                <a href="/update_user/{{user['user_id']}}">Edit</a> | 
                <a href="/delete_user/{{user['user_id']}}" onclick="return confirm('Are you sure?')">Delete</a>
            </td>
        </tr>
        % end
    </table>
</body>
</html>
