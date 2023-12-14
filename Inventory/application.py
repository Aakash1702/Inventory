from bottle import route, run, template, request, redirect
import database  # Make sure this is the name of the file where CRUD operations are defined
from pymongo import MongoClient

# MongoDB Connection String
mongo_connection_string = "mongodb+srv://Aakash_17:Aakash2002@adds.w2f7rr6.mongodb.net/?retryWrites=true&w=majority"

# Connect to MongoDB
client = MongoClient(mongo_connection_string)

# Select or Create the Database
db = client["Inventory"]

# Now define your CRUD operations here...

# Home Page
@route('/')
def index():
    return template('index.tpl')

# User Routes
@route('/users')
def list_users():
    users = database.get_all_users()
    return template('list_users.tpl', users=users)

@route('/add_user', method=['GET', 'POST'])
def add_user():
    if request.method == 'POST':
        user_data = {
            "user_id": request.forms.get('user_id'),
            "name": request.forms.get('name'),
            "email": request.forms.get('email'),
            "age": int(request.forms.get('age'))
        }
        database.create_user(user_data)
        redirect('/users')
    return template('add_user.tpl')

@route('/update_user/<user_id>', method=['GET', 'POST'])
def update_user(user_id):
    if request.method == 'POST':
        user_data = {
            "name": request.forms.get('name'),
            "email": request.forms.get('email'),
            "age": int(request.forms.get('age'))
        }
        database.update_user(user_id, user_data)
        redirect('/users')
    user = database.get_user_by_id(user_id)
    return template('update_user.tpl', user=user)

@route('/delete_user/<user_id>')
def delete_user(user_id):
    database.delete_user(user_id)
    redirect('/users')
#-----------------------------------------------------------
@route('/search', method='GET')
def search():
    search_query = request.query.search.strip()
    if search_query:
        user = database.get_user_by_name(search_query)  # Assuming you have a function to find user by name
        if user:
            orders = database.get_orders_by_user(user['user_id'])
            return template('search_results.tpl', user=user, orders=orders)
        else:
            return "No user found with that name."
    else:
        return "Please enter a search query."

# Order Routes
@route('/orders')
def list_orders():
    orders = database.get_all_orders()
    return template('list_orders.tpl', orders=orders)

@route('/add_order', method=['GET', 'POST'])
def add_order():
    if request.method == 'POST':
        order_data = {
            "order_id": request.forms.get('order_id'),
            "user_id": request.forms.get('user_id'),
            "order_date": request.forms.get('order_date'),
            "total_amount": float(request.forms.get('total_amount'))
        }
        database.create_order(order_data)
        redirect('/orders')
    return template('add_order.tpl')

@route('/update_order/<order_id>', method=['GET', 'POST'])
def update_order(order_id):
    if request.method == 'POST':
        order_data = {
            "user_id": request.forms.get('user_id'),
            "order_date": request.forms.get('order_date'),
            "total_amount": float(request.forms.get('total_amount'))
        }
        database.update_order(order_id, order_data)
        redirect('/orders')
    order = database.get_order_by_id(order_id)
    return template('update_order.tpl', order=order)

@route('/delete_order/<order_id>')
def delete_order(order_id):
    database.delete_order(order_id)
    redirect('/orders')

run(host='localhost', port=8081, debug=True)
