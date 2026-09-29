-- 1. Create Tables
CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    customer_name TEXT,
    city TEXT
);

CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    order_date DATE,
    amount REAL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- 2. Insert Data
INSERT INTO customers VALUES 
(1, 'Aarti Sharma', 'Delhi'),
(2, 'Rahul Verma', 'Mumbai'),
(3, 'Priya Singh', 'Bangalore'),
(4, 'Amit Patel', 'Delhi'),
(5, 'Neha Gupta', 'Mumbai');

INSERT INTO orders VALUES 
(101, 1, '2024-01-15', 2500.00),
(102, 2, '2024-01-18', 1200.50),
(103, 1, '2024-02-10', 3100.00),
(104, 3, '2024-02-14', 4500.00),
(105, 4, '2024-03-01', 800.00),
(106, 2, '2024-03-05', 2200.00),
(107, 5, '2024-03-12', 1500.00),
(108, 1, '2024-03-20', 1800.00);

-- 3. Business Analysis Queries
-- Query 1: Total Revenue by Customer
SELECT 
    c.customer_name,
    c.city,
    SUM(o.amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name, c.city
ORDER BY total_spent DESC;

-- Query 2: City-wise Sales Distribution
SELECT 
    c.city,
    COUNT(o.order_id) AS total_orders,
    SUM(o.amount) AS total_revenue
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.city;
