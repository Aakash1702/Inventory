from pymongo import MongoClient

# MongoDB Connection String
mongo_connection_string = "mongodb+srv://Aakash_17:Aakash2002@adds.w2f7rr6.mongodb.net/?retryWrites=true&w=majority"

# Connect to MongoDB
client = MongoClient(mongo_connection_string)

# Select or Create the Database
db = client['Inventory']

# Collection References
users_collection = db['Users']
orders_collection = db['Orders']

# Clear Existing Data
users_collection.delete_many({})
orders_collection.delete_many({})

# User Data
users = [
    {"user_id": "u123", "name": "Aakash", "email": "Aakash@iv.com", "age": 30},
    {"user_id": "u124", "name": "Shankar", "email": "bob@iv.com", "age": 25},
     {"user_id": "u125", "name": "Charlie", "email": "charlie@example.com", "age": 28}
]

# Orders Data
orders = [
    {"order_id": "o001", "user_id": "u123", "order_date": "2023-01-15", "total_amount": 150},
    {"order_id": "o002", "user_id": "u123", "order_date": "2023-02-10", "total_amount": 200},
    {"order_id": "o003", "user_id": "u124", "order_date": "2023-03-05", "total_amount": 100}
]

# Insert Data into Collections
users_collection.insert_many(users)
orders_collection.insert_many(orders)

print("Database setup completed successfully.")
