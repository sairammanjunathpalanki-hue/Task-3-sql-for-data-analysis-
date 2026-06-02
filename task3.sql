use task3;
SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM orders
WHERE amount > 5000;
SELECT * FROM orders
ORDER BY amount DESC;
SELECT customer_id,
SUM(amount) AS total_sales
FROM orders
GROUP BY customer_id;
SELECT AVG(amount) AS average_order_value
FROM orders;
SELECT SUM(amount) AS total_revenue
FROM orders;
SELECT c.customer_name,
o.product,
o.amount
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;
SELECT c.customer_name,
o.product
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;
SELECT c.customer_name,
o.product
FROM customers c
RIGHT JOIN orders o
ON c.customer_id = o.customer_id;
SELECT *
FROM orders
WHERE amount >
(
SELECT AVG(amount)
FROM orders
);
CREATE VIEW customer_sales AS
SELECT c.customer_name,
SUM(o.amount) AS total_sales
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name;
SELECT * FROM customer_sales;
CREATE INDEX idx_customer
ON orders(customer_id);


