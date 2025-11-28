CREATE DATABASE IF NOT EXISTS restaurant_app;
USE restaurant_app;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255),
    password_hash VARCHAR(255),
    email VARCHAR(255),
    phone_number VARCHAR(20)
);

CREATE TABLE menus (
    id SERIAL PRIMARY KEY,
    price DOUBLE PRECISION
);

CREATE TABLE burgers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    description VARCHAR(255),
    price DOUBLE PRECISION
);

CREATE TABLE side_dishes (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    description VARCHAR(255),
    price DOUBLE PRECISION
);

CREATE TABLE drinks (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    description VARCHAR(255),
    liters DOUBLE PRECISION,
    price DOUBLE PRECISION
);

CREATE TABLE ingredients (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    description VARCHAR(255)
);

CREATE TABLE burgers_x_ingredients (
    id SERIAL PRIMARY KEY,
    burger_id INT REFERENCES burgers(id),
    ingredient_id INT REFERENCES ingredients(id)
);

CREATE TABLE side_dishes_x_ingredients (
    id SERIAL PRIMARY KEY,
    side_dish_id INT REFERENCES side_dishes(id),
    ingredient_id INT REFERENCES ingredients(id)
);

CREATE TABLE menus_x_burgers (
    id SERIAL PRIMARY KEY,
    menu_id INT REFERENCES menus(id),
    burger_id INT REFERENCES burgers(id)
);

CREATE TABLE menus_x_side_dishes (
    id SERIAL PRIMARY KEY,
    menu_id INT REFERENCES menus(id),
    side_dish_id INT REFERENCES side_dishes(id)
);

CREATE TABLE menus_x_drinks (
    id SERIAL PRIMARY KEY,
    menu_id INT REFERENCES menus(id),
    drink_id INT REFERENCES drinks(id)
);

CREATE TABLE tables (
    id SERIAL PRIMARY KEY,
    capacity SMALLINT
);

CREATE TABLE reservations (
    id SERIAL PRIMARY KEY,
    table_id INT REFERENCES tables(id),
    user_id INT REFERENCES users(id),
    reserved_from TIMESTAMP,
    reserved_to TIMESTAMP
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id),
    table_id INT REFERENCES tables(id),
    ordered_at TIMESTAMP,
    status VARCHAR(50),
    total_price DOUBLE PRECISION
);

CREATE TABLE orders_x_menus (
    id SERIAL PRIMARY KEY,
    order_id INT REFERENCES orders(id),
    menu_id INT REFERENCES menus(id),
    quantity INT
);

CREATE TABLE orders_x_burgers (
    id SERIAL PRIMARY KEY,
    order_id INT REFERENCES orders(id),
    burger_id INT REFERENCES burgers(id),
    quantity INT
);

CREATE TABLE orders_x_side_dishes (
    id SERIAL PRIMARY KEY,
    order_id INT REFERENCES orders(id),
    side_dish_id INT REFERENCES side_dishes(id),
    quantity INT
);

CREATE TABLE orders_x_drinks (
    id SERIAL PRIMARY KEY,
    order_id INT REFERENCES orders(id),
    drink_id INT REFERENCES drinks(id),
    quantity INT
);

INSERT INTO users (username, password_hash, email, phone_number) VALUES
('john_doe', 'hash123', 'john@example.com', '+36201234567'),
('emma_smith', 'hash456', 'emma@example.com', '+36207654321');

INSERT INTO ingredients (name, description) VALUES
('Beef Patty', 'Grilled 100% beef'),
('Cheddar Cheese', 'Melted cheddar'),
('Lettuce', 'Fresh iceberg'),
('Tomato', 'Sliced tomatoes'),
('Ketchup', 'Tomato ketchup'),
('Fries', 'Crispy potato fries'),
('Salt', 'Fine salt');

INSERT INTO burgers (name, description, price) VALUES
('Classic Burger', 'Beef, lettuce, tomato, cheese', 6.99),
('Cheeseburger Deluxe', 'Extra cheese & beef', 7.99);

INSERT INTO burgers_x_ingredients (burger_id, ingredient_id) VALUES
(1, 1), (1, 2), (1, 3), (1, 4),
(2, 1), (2, 2), (2, 2), (2, 5);

INSERT INTO side_dishes (name, description, price) VALUES
('French Fries', 'Classic salted fries', 2.50),
('Onion Rings', 'Crispy beer-battered rings', 3.00);

INSERT INTO side_dishes_x_ingredients (side_dish_id, ingredient_id) VALUES
(1, 6), (1, 7);

INSERT INTO drinks (name, description, liters, price) VALUES
('Coca-Cola', 'Cold soda', 0.5, 1.80),
('Water', 'Still mineral water', 0.5, 1.20);

INSERT INTO menus (price) VALUES
(9.99),
(10.99);

INSERT INTO menus_x_burgers (menu_id, burger_id) VALUES
(1, 1),
(2, 2);

INSERT INTO menus_x_side_dishes (menu_id, side_dish_id) VALUES
(1, 1),
(2, 2);

INSERT INTO menus_x_drinks (menu_id, drink_id) VALUES
(1, 1),
(2, 2);

INSERT INTO tables (capacity) VALUES
(2), (4), (4), (6);

INSERT INTO reservations (table_id, user_id, reserved_from, reserved_to) VALUES
(2, 1, '2025-01-15 18:00', '2025-01-15 20:00'),
(3, 2, '2025-01-16 19:00', '2025-01-16 21:00');

INSERT INTO orders (user_id, table_id, ordered_at, status, total_price) VALUES
(1, 2, '2025-01-15 18:30', 'served', 14.29),
(2, 3, '2025-01-16 19:15', 'preparing', 12.99);

INSERT INTO orders_x_menus (order_id, menu_id, quantity) VALUES
(1, 1, 1);

INSERT INTO orders_x_burgers (order_id, burger_id, quantity) VALUES
(2, 2, 1);

INSERT INTO orders_x_side_dishes (order_id, side_dish_id, quantity) VALUES
(2, 2, 1);

INSERT INTO orders_x_drinks (order_id, drink_id, quantity) VALUES
(2, 2, 1);