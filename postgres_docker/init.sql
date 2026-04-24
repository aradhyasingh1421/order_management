CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price NUMERIC CHECK (price > 0)
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id) ON DELETE CASCADE,
    product_id INT REFERENCES products(id) ON DELETE CASCADE,
    quantity INT CHECK (quantity > 0) NOT NULL,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (name, email) VALUES
('Aradhya', 'aradhya@gmail.com'),
('sonam', 'sonam@gmail.com'),
('simran', 'simran@gmail.com'),
('vishal', 'vishal@gmail.com'),
('vashu', 'vashu@gmail.com');

INSERT INTO products (name, price) VALUES
('television', 60000),
('Phone', 80000),
('Headphones', 20000),
('Keyboard', 15000),
('Mouse', 8000);

INSERT INTO orders (user_id, product_id, quantity) VALUES
(1,1,1),
(2,2,2),
(3,3,1),
(1,2,1),
(4,5,3);

/*CRUD*/

-- CREATE
INSERT INTO products (name, price) VALUES ('Tablet', 15000);

-- READ
SELECT * FROM products;
SELECT * FROM orders;
select * from users;
-- UPDATE
UPDATE orders SET quantity = 5 WHERE id = 1;


--basic queries

-- Orders of a user
SELECT * FROM orders WHERE user_id = 1;

-- Search product
SELECT * FROM products WHERE name ILIKE '%phone%';

-- Top selling products
SELECT product_id, SUM(quantity) as total
FROM orders
GROUP BY product_id
ORDER BY total DESC;

-- JOIN
SELECT u.name, p.name, o.quantity
FROM orders o
JOIN users u ON o.user_id = u.id
JOIN products p ON o.product_id = p.id;

-- GROUP BY
SELECT p.name, SUM(o.quantity) as total_sales
FROM orders o
JOIN products p ON o.product_id = p.id
GROUP BY p.name;