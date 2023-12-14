<!DOCTYPE html>
<html>
<head>
    <title>Add Order</title>
    <link rel="stylesheet" href="styles.css">
</head>
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
<body>
    <div class="container">
        <h2>Add New Order</h2>
        <form action="/add_order" method="post" class="form-style">
            <label for="order_id">Order ID:</label>
            <input type="text" name="order_id" id="order_id"><br>
            <label for="user_id">User ID:</label>
            <input type="text" name="user_id" id="user_id"><br>
            <label for="order_date">Order Date:</label>
            <input type="date" name="order_date" id="order_date"><br>
            <label for="total_amount">Total Amount:</label>
            <input type="number" name="total_amount" id="total_amount" step="0.01"><br>
            <input type="submit" value="Add Order">
        </form>
    </div>
</body>
</html>
