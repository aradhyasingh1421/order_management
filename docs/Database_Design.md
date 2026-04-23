## Entities

### Users
- id (PK)
- name
- email (UNIQUE)

### Products
- id (PK)
- name
- price

### Orders
- id (PK)
- user_id (FK)
- product_id (FK)
- quantity
- order_date

## Relationships
- users (1) → (N) orders
- products (1) → (N) orders

## Constraints
- email UNIQUE
- quantity > 0
- price > 0