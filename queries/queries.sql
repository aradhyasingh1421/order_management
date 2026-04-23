/*CRUD*/

-- CREATE
INSERT INTO products (name, price) VALUES ('Tablet', 15000);

-- READ
SELECT * FROM products;

-- UPDATE
UPDATE orders SET quantity = 5 WHERE id = 1;

-- DELETE
DELETE FROM orders WHERE id = 3;

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