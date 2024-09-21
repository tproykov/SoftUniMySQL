CREATE DATABASE store_database;
USE store_database;
CREATE TABLE cities (
    city_id INT(11) UNIQUE NOT NULL AUTO_INCREMENT,
    name VARCHAR(50),
    CONSTRAINT pk_cities_city_id
    PRIMARY KEY (city_id)
);
CREATE TABLE customers (
    customer_id INT(11) UNIQUE NOT NULL AUTO_INCREMENT,
    name VARCHAR(50),
    birthday DATE,
    city_id INT(11),
    CONSTRAINT pk_customers_customer_id
    PRIMARY KEY (customer_id),
    CONSTRAINT fk__customers__city_id__cities__city_id
    FOREIGN KEY (city_id) REFERENCES cities(city_id)
);
CREATE TABLE orders (
    order_id INT(11) UNIQUE NOT NULL AUTO_INCREMENT,
    customer_id INT(11),
    CONSTRAINT pk_orders_order_id
    PRIMARY KEY (order_id),
    CONSTRAINT fk__orders__customer_id__customers__customer_id
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
CREATE TABLE item_types (
    item_type_id INT(11) UNIQUE NOT NULL AUTO_INCREMENT,
    name VARCHAR(50),
    CONSTRAINT pk__item_types__item_type_id
    PRIMARY KEY (item_type_id)
);
CREATE TABLE items (
    item_id INT(11) UNIQUE NOT NULL AUTO_INCREMENT,
    name VARCHAR(50),
    item_type_id INT(11),
    CONSTRAINT pk_items_item_id
    PRIMARY KEY (item_id),
    CONSTRAINT fk__items_item_type_id
    FOREIGN KEY (item_type_id) REFERENCES item_types(item_type_id)
);
CREATE TABLE order_items (
    order_id INT(11) NOT NULL,
    item_id INT(11) NOT NULL,
    CONSTRAINT pk__order_items__order_id__item_id
    PRIMARY KEY (order_id, item_id),
    CONSTRAINT fk__order_items__order_id__orders__order__id
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    CONSTRAINT fk__order_items__item_id__items__item_id
    FOREIGN KEY (item_id) REFERENCES items(item_id)
);