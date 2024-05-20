USE CUSTOMERS;
CREATE TABLE orders (
  order_id INT,
  customer_id INT,
  delivery_date DATE,
  status VARCHAR(20)
);

INSERT INTO orders (order_id, customer_id, delivery_date, status)
VALUES
  (1, 101, '2022-01-05', 'Pending'),
  (2, 102, '2022-01-07', 'Completed'),
  (3, 103, NULL, 'Pending'),
  (4, 104, '2022-01-10', 'Completed');
  
#   25.	How can you retrieve orders where the delivery_date is NOT NULL and the status is 'Completed'?
SELECT * FROM orders WHERE  delivery_date IS NOT NULL AND  status ='Completed';

# 26.	How can you retrieve orders where the delivery_date is NULL and the status is 'Pending'?
SELECT * FROM orders WHERE  delivery_date IS  NULL AND  status ='Pending';
