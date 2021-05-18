--Вывести статиcтику покупок книг разных изданий
select Publisher.publisher_id, Publisher.publisher_nm, count(Order_Item.order_id)
from Publisher
inner join Edition on Publisher.publisher_id = Edition.publisher_id
inner join Order_Item on Edition.book_id = Order_Item.book_id
group by Publisher.publisher_id, Publisher.publisher_nm
order by count(Order_Item.order_id) desc;

--Что купили любители детективов?
select Book.book_id, Book.name, Client.user_nm
from Book
inner join Order_Item on Book.book_id = Order_Item.book_id
inner join Orders on Order_Item.order_id = Orders.order_id
inner join Client on Client.client_id = Orders.client_id
where Client.interests_desc = 'detective';

--Вывести всех пользователей, которые покупали книги Толстого
select Book.name, Client.user_nm
from Book
inner join Order_Item on Book.book_id = Order_Item.book_id
inner join Orders on Order_Item.order_id = Orders.order_id
inner join Client on Client.client_id = Orders.client_id
where Book.author_id = 1;
