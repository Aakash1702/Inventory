<!DOCTYPE html>
<html>
<head>
    <title>Search Results</title>
</head>
<body>
    <h2>User Details</h2>
    <p>Name: {{user['name']}}</p>
    <p>Email: {{user['email']}}</p>
    <p>Age: {{user['age']}}</p>

    <h2>User Orders</h2>
    <table border="1">
        <tr>
            <th>Order ID</th>
            <th>Order Date</th>
            <th>Total Amount</th>
        </tr>
        % for order in orders:
        <tr>
            <td>{{order['order_id']}}</td>
            <td>{{order['order_date']}}</td>
            <td>{{order['total_amount']}}</td>
        </tr>
        % end
    </table>
    <a href="/">Back to Home</a>
</body>
</html>
