INSERT INTO users (name, email, password)
VALUES ('Jugdernamjil', 'jugee416@gmail.com', 'secret'),
       ('bold', 'bold11@gmail.com', 'password');

INSERT INTO products (name, description, price, stock)
VALUES ('Iphone', 'The latest Iphone 14 pro max model', 1000.00, 10),
       ('Laptop', 'Acer aspire 5 powerful laptop for work and play', 1500.00, 5);

INSERT INTO orders (user_id, total_price)
VALUES (1, 2000.00),
       (2, 1000.00);

INSERT INTO order_items (order_id, product_id, quantity, price)
VALUES (1, 1, 2, 2000.00),
       (1, 2, 1, 1500.00),
       (2, 2, 2, 3000.00);