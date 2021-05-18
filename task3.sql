CREATE SCHEMA book_shop;

SET SEARCH_PATH = book_shop;

-- Создание таблиц

DROP TABLE IF EXISTS Orders CASCADE;
CREATE TABLE Orders(
    order_id serial NOT NULL PRIMARY KEY,
	client_id INT NOT NULL REFERENCES Client(client_id),
	price INT
);

DROP TABLE IF EXISTS Client CASCADE;
CREATE TABLE Client(
    client_id serial PRIMARY KEY,
	login VARCHAR(25) NOT NULL UNIQUE,
	user_nm VARCHAR(50) NOT NULL,
	birthday_dt DATE,
	interests_desc VARCHAR(50)
);

DROP TABLE IF EXISTS Order_Payment CASCADE;
CREATE TABLE Order_Payment(
    payment_id serial NOT NULL PRIMARY KEY,
	order_id INT NOT NULL REFERENCES Orders(order_id),
	order_dt DATE
);

DROP TABLE IF EXISTS Order_Item CASCADE;
CREATE TABLE Order_Item(
    book_id serial NOT NULL PRIMARY KEY,
	order_id INT NOT NULL REFERENCES Orders(order_id)
);

DROP TABLE IF EXISTS Book CASCADE;
CREATE TABLE Book(
    book_id serial NOT NULL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
	author_id INT,
	rating INT,
	price INT NOT NULL
);

DROP TABLE IF EXISTS Publisher CASCADE;
CREATE TABLE Publisher(
    publisher_id INT NOT NULL PRIMARY KEY,
    publisher_nm VARCHAR(100) NOT NULL,
    city VARCHAR(100),
	rating INT
);

DROP TABLE IF EXISTS Edition CASCADE;
CREATE TABLE Edition(
    book_id serial PRIMARY KEY ,
    publisher_id INT NOT NULL REFERENCES Publisher(publisher_id),
    publish_year INT,
    pages_cnt INT,
    binding_type_desc VARCHAR(100)
);
