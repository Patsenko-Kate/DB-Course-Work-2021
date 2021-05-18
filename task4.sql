-- Заполняем таблицу client
INSERT INTO Client(client_id, login, user_nm, birthday_dt, interests_desc) VALUES(1, 'mipt21', 'Даша Козловская', '2000-01-13', 'detective');
INSERT INTO Client(client_id, login, user_nm, birthday_dt, interests_desc) VALUES(2, 'mipt22', 'Ваня', '1990-03-15', 'romantic');
INSERT INTO Client(client_id, login, user_nm, birthday_dt, interests_desc) VALUES(3, 'mipt23', 'Рамид', '1995-12-02', '');
INSERT INTO Client(client_id, login, user_nm, birthday_dt, interests_desc) VALUES(4, 'mipt24', 'Настя Василькова', '2004-06-06', 'poetry');
INSERT INTO Client(client_id, login, user_nm, birthday_dt, interests_desc) VALUES(5, 'mipt25', 'Олеся', '2001-11-27', 'detective');


-- Заполняем таблицу Orders
INSERT INTO Orders(order_id, client_id, price) VALUES(1, 1, 500);
INSERT INTO Orders(order_id, client_id, price) VALUES(2, 2, 1000);
INSERT INTO Orders(order_id, client_id, price) VALUES(3, 1, 750);
INSERT INTO Orders(order_id, client_id, price) VALUES(4, 5, 600);
INSERT INTO Orders(order_id, client_id, price) VALUES(5, 3, 10000);


-- Заполняем таблицу Publisher
INSERT INTO Publisher(publisher_id, publisher_nm, city, rating) VALUES(1, 'Просвещение', 'Москва', 8);
INSERT INTO Publisher(publisher_id, publisher_nm, city, rating) VALUES(2, 'Дрофа', 'Москва', 7);
INSERT INTO Publisher(publisher_id, publisher_nm, city, rating) VALUES(3, 'Миф', 'Кишинев', 5);
INSERT INTO Publisher(publisher_id, publisher_nm, city, rating) VALUES(4, 'Лабиринт', 'Санкт-Петербург', 10);

-- Заполняем таблицу Book
INSERT INTO Book(book_id, name, author_id, rating, price) VALUES(1, 'Красавица и чудовище', 4, 5, 250);
INSERT INTO Book(book_id, name, author_id, rating, price) VALUES(2, 'Гордость и предубеждение', 2, 7, 750);
INSERT INTO Book(book_id, name, author_id, rating, price) VALUES(3, 'Война и мир', 1, 6, 1000);
INSERT INTO Book(book_id, name, author_id, rating, price) VALUES(4, 'Идиот', 3, 7, 500);
INSERT INTO Book(book_id, name, author_id, rating, price) VALUES(5, 'Гроза', 5, 6, 350);
INSERT INTO Book(book_id, name, author_id, rating, price) VALUES(6, 'Заводной апельсин', 6, 8, 600);
INSERT INTO Book(book_id, name, author_id, rating, price) VALUES(7, '1984', 7, 8, 450);
INSERT INTO Book(book_id, name, author_id, rating, price) VALUES(8, 'Анна Каренина', 1, 8, 700);

-- Заполняем таблицу order_item
INSERT INTO order_item(book_id, order_id) VALUES(4, 1);
INSERT INTO order_item(book_id, order_id) VALUES(5, 1);
INSERT INTO order_item(book_id, order_id) VALUES(1, 2);
INSERT INTO order_item(book_id, order_id) VALUES(2, 3);
INSERT INTO order_item(book_id, order_id) VALUES(8, 4);
INSERT INTO order_item(book_id, order_id) VALUES(7, 5);
INSERT INTO order_item(book_id, order_id) VALUES(3, 5);
INSERT INTO order_item(book_id, order_id) VALUES(6, 5);

-- Заполняем таблицу Edition
INSERT INTO Edition(book_id, publisher_id, publish_year, pages_cnt, binding_type_desc)
    VALUES(1, 1, 2016, 60, 'hard cover');
INSERT INTO Edition(book_id, publisher_id, publish_year, pages_cnt, binding_type_desc)
    VALUES(2, 1, 2018, 300, 'hard cover');
INSERT INTO Edition(book_id, publisher_id, publish_year, pages_cnt, binding_type_desc)
    VALUES(3, 2, 2005, 1000, 'soft cover');
INSERT INTO Edition(book_id, publisher_id, publish_year, pages_cnt, binding_type_desc)
    VALUES(4, 3, 2020, 500, 'hard cover');
INSERT INTO Edition(book_id, publisher_id, publish_year, pages_cnt, binding_type_desc)
    VALUES(5, 4, 2010, 150, 'soft cover');
INSERT INTO Edition(book_id, publisher_id, publish_year, pages_cnt, binding_type_desc)
    VALUES(6, 1, 2017, 300, 'hard cover');
INSERT INTO Edition(book_id, publisher_id, publish_year, pages_cnt, binding_type_desc)
    VALUES(7, 2, 2019, 400, 'soft cover');
INSERT INTO Edition(book_id, publisher_id, publish_year, pages_cnt, binding_type_desc)
    VALUES(8, 3, 2021, 900, 'hard cover');

-- Заполняем таблицу Order_Payment
INSERT INTO Order_Payment(payment_id, order_id, order_dt) VALUES(100, 1, '2021-04-20');
INSERT INTO Order_Payment(payment_id, order_id, order_dt) VALUES(101, 2, '2021-05-22');
INSERT INTO Order_Payment(payment_id, order_id, order_dt) VALUES(102, 3, '2021-05-23');
