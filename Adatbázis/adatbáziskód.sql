CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    username VARCHAR(100) NOT NULL UNIQUE,
    passwordhash VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20)
);

CREATE TABLE reservation (
    reservation_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    table_id INT NOT NULL,
    datetime DATETIME NOT NULL,
    number_of_people INT NOT NULL,
    status VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (table_id) REFERENCES table_entity(table_id)
);

CREATE TABLE table_entity (
    table_id INT PRIMARY KEY,
    capacity INT NOT NULL
);

CREATE TABLE menu_item (
    menu_item_id INT PRIMARY KEY,
    price DECIMAL(10,2) NOT NULL
);

CREATE TABLE `order` (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    payment_type VARCHAR(50),
    status VARCHAR(50),
    address VARCHAR(255),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE order_menu_item (
    order_id INT NOT NULL,
    menu_item_id INT NOT NULL,
    PRIMARY KEY (order_id, menu_item_id),
    FOREIGN KEY (order_id) REFERENCES `order`(order_id),
    FOREIGN KEY (menu_item_id) REFERENCES menu_item(menu_item_id)
);

-- CUSTOMER
INSERT INTO customer (customer_id, email, username, password_hash, phone_number) VALUES
(1, 'alice@example.com', 'alice', 'hash1', '1234567890'),
(2, 'bob@example.com', 'bob', 'hash2', '1234567891'),
(3, 'charlie@example.com', 'charlie', 'hash3', '1234567892'),
(4, 'diana@example.com', 'diana', 'hash4', '1234567893'),
(5, 'edward@example.com', 'edward', 'hash5', '1234567894'),
(6, 'fiona@example.com', 'fiona', 'hash6', '1234567895'),
(7, 'george@example.com', 'george', 'hash7', '1234567896'),
(8, 'hannah@example.com', 'hannah', 'hash8', '1234567897'),
(9, 'ian@example.com', 'ian', 'hash9', '1234567898'),
(10, 'jane@example.com', 'jane', 'hash10', '1234567899'),
(11, 'kevin@example.com', 'kevin', 'hash11', '1234567800'),
(12, 'lisa@example.com', 'lisa', 'hash12', '1234567801'),
(13, 'mike@example.com', 'mike', 'hash13', '1234567802'),
(14, 'nina@example.com', 'nina', 'hash14', '1234567803'),
(15, 'oliver@example.com', 'oliver', 'hash15', '1234567804'),
(16, 'paula@example.com', 'paula', 'hash16', '1234567805'),
(17, 'quentin@example.com', 'quentin', 'hash17', '1234567806'),
(18, 'rachel@example.com', 'rachel', 'hash18', '1234567807'),
(19, 'steve@example.com', 'steve', 'hash19', '1234567808'),
(20, 'tina@example.com', 'tina', 'hash20', '1234567809');

INSERT INTO dining_table (table_id, capacity) VALUES
(1, 2),(2, 4),(3, 4),(4, 6),(5, 2),
(6, 8),(7, 2),(8, 4),(9, 6),(10, 2),
(11, 4),(12, 6),(13, 8),(14, 4),(15, 2),
(16, 6),(17, 4),(18, 8),(19, 2),(20, 10);

INSERT INTO reservation (reservation_id, customer_id, table_id, datetime, number_of_people, status) VALUES
(1, 1, 1, '2025-08-16 18:00:00', 2, 'confirmed'),
(2, 2, 2, '2025-08-16 19:00:00', 4, 'pending'),
(3, 3, 3, '2025-08-17 18:30:00', 4, 'confirmed'),
(4, 4, 4, '2025-08-17 20:00:00', 6, 'cancelled'),
(5, 5, 5, '2025-08-18 17:00:00', 2, 'confirmed'),
(6, 6, 6, '2025-08-18 19:00:00', 8, 'pending'),
(7, 7, 7, '2025-08-19 18:00:00', 2, 'confirmed'),
(8, 8, 8, '2025-08-19 19:30:00', 4, 'confirmed'),
(9, 9, 9, '2025-08-20 18:15:00', 6, 'cancelled'),
(10, 10, 10, '2025-08-20 20:00:00', 2, 'confirmed'),
(11, 11, 11, '2025-08-21 19:00:00', 4, 'pending'),
(12, 12, 12, '2025-08-21 20:30:00', 6, 'confirmed'),
(13, 13, 13, '2025-08-22 18:00:00', 8, 'confirmed'),
(14, 14, 14, '2025-08-22 19:30:00', 4, 'cancelled'),
(15, 15, 15, '2025-08-23 18:45:00', 2, 'confirmed'),
(16, 16, 16, '2025-08-23 20:00:00', 6, 'pending'),
(17, 17, 17, '2025-08-24 18:00:00', 4, 'confirmed'),
(18, 18, 18, '2025-08-24 19:00:00', 8, 'confirmed'),
(19, 19, 19, '2025-08-25 18:00:00', 2, 'pending'),
(20, 20, 20, '2025-08-25 20:00:00', 10, 'confirmed');

INSERT INTO menu_item (menu_item_id, price) VALUES
(1, 5.99),(2, 7.50),(3, 8.20),(4, 6.75),(5, 9.10),
(6, 12.00),(7, 15.50),(8, 4.50),(9, 11.25),(10, 13.99),
(11, 6.00),(12, 14.25),(13, 8.99),(14, 10.50),(15, 9.99),
(16, 7.80),(17, 16.40),(18, 5.50),(19, 19.99),(20, 3.99);

INSERT INTO `order` (order_id, customer_id, payment_type, status, address) VALUES
(1, 1, 'Credit Card', 'completed', '123 Main St'),
(2, 2, 'Cash', 'pending', '456 Oak Ave'),
(3, 3, 'Credit Card', 'completed', '789 Pine Rd'),
(4, 4, 'Debit Card', 'cancelled', '101 Maple Dr'),
(5, 5, 'Cash', 'completed', '202 Birch Ln'),
(6, 6, 'Credit Card', 'pending', '303 Cedar Ct'),
(7, 7, 'Cash', 'completed', '404 Spruce St'),
(8, 8, 'Debit Card', 'completed', '505 Ash Blvd'),
(9, 9, 'Credit Card', 'pending', '606 Elm Pl'),
(10, 10, 'Cash', 'completed', '707 Willow Rd'),
(11, 11, 'Credit Card', 'pending', '808 Walnut St'),
(12, 12, 'Debit Card', 'completed', '909 Cherry Ave'),
(13, 13, 'Cash', 'completed', '1010 Poplar Dr'),
(14, 14, 'Credit Card', 'cancelled', '1111 Beech Ln'),
(15, 15, 'Cash', 'completed', '1212 Fir Ct'),
(16, 16, 'Debit Card', 'pending', '1313 Hickory St'),
(17, 17, 'Credit Card', 'completed', '1414 Magnolia Ave'),
(18, 18, 'Cash', 'pending', '1515 Sycamore Rd'),
(19, 19, 'Debit Card', 'completed', '1616 Cypress Blvd'),
(20, 20, 'Credit Card', 'completed', '1717 Dogwood Dr');

INSERT INTO order_menu_item (order_id, menu_item_id) VALUES
(1, 1),(1, 2),(2, 3),(2, 4),(3, 5),(3, 6),(4, 7),(4, 8),
(5, 9),(5, 10),(6, 11),(6, 12),(7, 13),(7, 14),(8, 15),(8, 16),
(9, 17),(9, 18),(10, 19),(10, 20),(11, 1),(12, 2),(13, 3),(14, 4),
(15, 5),(16, 6),(17, 7),(18, 8),(19, 9),(20, 10),(20, 11),(20, 12),
(20, 13),(19, 14),(18, 15),(17, 16),(16, 17),(15, 18),(14, 19),(13, 20);