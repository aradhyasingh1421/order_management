#users

GET /users

Description: Retrieve a list of all users
Response Status Codes:

200 → Success
404 → Not Found

GET /users/{id}

Description: Retrieve details of a specific user by ID
Response Status Codes:

200 → Success
404 → User Not Found

POST /users

Description: Create a new user
Response Status Codes:

201 → User Created
400 → Bad Request

PATCH /users/{id}

Description: Update user details
Response Status Codes:

200 → Updated Successfully
400 → Bad Request
404 → User Not Found

DELETE /users/{id}
Description: Delete a user
Response Status Codes:

204 → Deleted Successfully (No Content)
404 → User Not Found

#products

get/product

Description: Retrieve all products
Response Status Codes:

200 → Success
404 → Not Found

get/products/{id}

Description: Retrieve a specific product
Response Status Codes:

200 → Success
404 → Product Not Found

post/products

Description: Add a new product
Response Status Codes:

201 → Product Created
400 → Bad Request

patch/products/{id}

Description: Update product details
Response Status Codes:

200 → Updated Successfully
400 → Bad Request
404 → Product Not Found

delete/products/{id}
Description: Delete a product
Response Status Codes:

204 → Deleted Successfully
404 → Product Not Found

#orders

GET /orders
Description: Retrieve all orders
Response Status Codes:

200 → Success
404 → Not Found

POST /orders
Description: Create a new order
Request Body Example:
    {
  "user_id": 1,
  "product_id": 2,
  "quantity": 3
}
Response Status Codes:

201 → Order Created
400 → Bad Request

PATCH /orders/{id}
Description: Update order details
Response Status Codes:

200 → Updated Successfully
400 → Bad Request
404 → Order Not Found

DELETE /orders/{id}
Description: Delete an order
Response Status Codes:

204 → Deleted Successfully
404 → Order Not Found

#example request

POST /orders

{
  "user_id": 1,
  "product_id": 2,
  "quantity": 3
}

#Example Response

{
  "id": 10,
  "message": "Order created"
}

Status Codes

200 → Success
201 → Created
204 → No Content
400 → Bad Request
404 → Not Found

