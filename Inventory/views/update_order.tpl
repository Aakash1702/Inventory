<!DOCTYPE html>
<html>
<head>
    <title>Update Order</title>
</head>
<body>
    <h2>Update Order</h2>
    <form action="/update_order/{{order['order_id']}}" method="post">
        User ID: <input type="text" name="user_id" value="{{order['user_id']}}"><br>
        Order Date: <input type="date" name="order_date" value="{{order['order_date']}}"><br>
        Total Amount: <input type="number" name="total_amount" value="{{order['total_amount']}}" step="0.01"><br>
        <input type="submit" value="Update Order">
    </form>
</body>
</html>
