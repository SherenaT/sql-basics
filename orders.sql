-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  person_id NUMERIC(6), 
  product_name VARCHAR(20), 
  product_price NUMERIC(4, 2), 
  quantity NUMERIC(3)
  );

-- Add 5 orders to the orders table.
--    Make orders for at least two different people.
--    person_id should be different for different people.
INSERT INTO orders(person_id, product_name, product_price, quantity)
VALUES (646123, 'strawberry danish', 1.99, 5);

INSERT INTO orders(person_id, product_name, product_price, quantity)
VALUES (644813, 'red velvet cupcate', 2.75, 20);

-- Select all the records from the orders table.
SELECT SUM(quantity) FROM orders

-- Calculate the total number of products ordered.
SELECT SUM(product_price) FROM orders;

-- Calculate the total order price.
SELECT SUM(quantity * product_price) from orders;

-- Calculate the total order price by a single person_id.
SELECT person_id, (quantity * product_price) from orders;