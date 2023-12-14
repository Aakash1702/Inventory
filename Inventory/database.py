from pymongo import MongoClient

# MongoDB Connection
client = MongoClient("mongodb+srv://Aakash_17:Aakash2002@adds.w2f7rr6.mongodb.net/?retryWrites=true&w=majority")
db = client["Inventory"]

# Users Collection
users_collection = db['Users']

# Orders Collection
orders_collection = db['Orders']

# User CRUD Operations

def create_user(user_data):
    users_collection.insert_one(user_data)

def get_all_users():
    return list(users_collection.find())

def get_user_by_id(user_id):
    return users_collection.find_one({"user_id": user_id})

def update_user(user_id, user_data):
    users_collection.update_one({"user_id": user_id}, {"$set": user_data})

def delete_user(user_id):
    users_collection.delete_one({"user_id": user_id})

# Order CRUD Operations

def create_order(order_data):
    orders_collection.insert_one(order_data)

def get_all_orders():
    return list(orders_collection.find())

def get_order_by_id(order_id):
    return orders_collection.find_one({"order_id": order_id})

def update_order(order_id, order_data):
    orders_collection.update_one({"order_id": order_id}, {"$set": order_data})

def delete_order(order_id):
    orders_collection.delete_one({"order_id": order_id})

def get_orders_by_user(user_id):
    return list(orders_collection.find({"user_id": user_id}))

def get_user_by_name(name):
    return users_collection.find_one({"name": name})

# Example Usage
# Uncomment to test the functions
# create_user({"user_id": "u126", "name": "Dave", "email": "dave@example.com", "age": 32})
# print(get_all_users())
# print(get_user_by_id("u123"))
# update_user("u126", {"name": "David"})
# delete_user("u126")

# create_order({"order_id": "o004", "user_id": "u123", "order_date": "2023-04-01", "total_amount": 250})
# print(get_all_orders())
# print(get_order_by_id("o001"))
# update_order("o004", {"total_amount": 300})
# delete_order("o004")
