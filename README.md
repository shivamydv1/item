Item Management REST API

A simple Java Spring Boot backend application that implements a RESTful API for managing a collection of items (E-commerce style example).

Features

Add a new item

Get item by ID

In-memory data storage using ArrayList

Manual input validation implemented

Dockerized and deployed on Render

Item Model

The Item class contains:

id (Long)

name (String)

description (String)

price (double)

Data Storage

In-memory storage using ArrayList

No external database used

Data resets when server restarts


Use in Postman
API Endpoints
1. Add Item

POST /items
https://item-2-bbgj.onrender.com/items/add
{
  "name": "Laptop",
  "description": "Gaming Laptop",
  "price": 75000
}
Validation Rules:

Name must not be null or empty

Price must be greater than 0

If validation fails:
{
  "timestamp": "...",
  "status": 500,
  "error": "Internal Server Error",
  "message": "Item name is required"
}
2.Get Item by ID

GET /items/{id}
https://item-2-bbgj.onrender.com/items/2


Run Locally
git clone https://github.com/shivamydv1/item.git
cd item
mvn clean install
java -jar target/item-0.0.1-SNAPSHOT.jar

Access at:
Add
http://localhost:8081/items/add
Get By id
http://localhost:8081/items/id
id = 1,2,etc

Docker Deployment

Built using Docker

Deployed on Render

Auto-build from GitHub repository
