<!DOCTYPE html>
<html>
<head>
    <title>List of Orders</title>
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
        <h2>Orders</h2>
        <a href="/add_order" class="add-order-link">Add New Order</a>
        <table>
    <table border="1">
        <tr>
            <th>Order ID</th>
            <th>User ID</th>
            <th>Order Date</th>
            <th>Total Amount</th>
            <th>Actions</th>
        </tr>
        % for order in orders:
        <tr>
            <td>{{order['order_id']}}</td>
            <td>{{order['user_id']}}</td>
            <td>{{order['order_date']}}</td>
            <td>{{order['total_amount']}}</td>
            <td>
                <a href="/update_order/{{order['order_id']}}">Edit</a> | 
                <a href="/delete_order/{{order['order_id']}}">Delete</a>
            </td>
        </tr>
        % end
    </table>
</body>
</html>
