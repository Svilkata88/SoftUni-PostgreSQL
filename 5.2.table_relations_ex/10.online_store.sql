CREATE DATABASE online_store_db;

CREATE TABLE cities (
    id SERIAL PRIMARY KEY,
    city_name VARCHAR(50)
);

CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    customer_name VARCHAR(50),
    birthday DATE,
    city_id INT REFERENCES cities(id) NOT NULL
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(id) NOT NULL
);

CREATE TABLE item_types (
    id SERIAL PRIMARY KEY,
    item_type_name VARCHAR(50) NOT NULL
);

CREATE TABLE items (
    id SERIAL PRIMARY KEY,
    item_name VARCHAR(50) NOT NULL,
    item_type_id INT REFERENCES item_types(id)
);

CREATE TABLE order_items (
    order_id INT REFERENCES orders(id),
    item_id INT REFERENCES items(id),

    CONSTRAINT pk_orders_items
        PRIMARY KEY (order_id, item_id)
);

