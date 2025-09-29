-- INNER JOIN (common records)
SELECT Customers.name, Orders.product, Orders.amount
FROM Customers
INNER JOIN Orders ON Customers.customer_id = Orders.customer_id;

-- LEFT JOIN (all customers, even if no orders)
SELECT Customers.name, Orders.product, Orders.amount
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id;

-- RIGHT JOIN (all orders, even if no customer exists)
SELECT Customers.name, Orders.product, Orders.amount
FROM Customers
RIGHT JOIN Orders ON Customers.customer_id = Orders.customer_id;

-- FULL OUTER JOIN (all data from both tables)
SELECT Customers.name, Orders.product, Orders.amount
FROM Customers
FULL OUTER JOIN Orders ON Customers.customer_id = Orders.customer_id;

-- CROSS JOIN (cartesian product)
SELECT Customers.name, Orders.product
FROM Customers
CROSS JOIN Orders;

-- SELF JOIN (example: customers in same city)
SELECT A.name AS Customer1, B.name AS Customer2, A.city
FROM Customers A
JOIN Customers B ON A.city = B.city AND A.customer_id <> B.customer_id;

-- NATURAL JOIN (if both tables have column with same name)
SELECT * 
FROM Customers
NATURAL JOIN Orders;
