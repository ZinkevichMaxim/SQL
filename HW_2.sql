use hw_2;
/*
Используя операторы языка SQL, создайте таблицу orders, заполните ее значениями.
Названия столбцов: employee_id, amount, order_status.
'e03', '15.00', 'OPEN'
'e01', '25.50', 'OPEN'
'e05', '100.70', 'CLOSED'
'e02', '22.18', 'OPEN'
'e04', '9.50', 'CANCELLED'


drop table if exists itresume9437342.orders;
create table itresume9437342.orders
(
employee_id varchar(10),
amount varchar(10),
order_status varchar(15)
);

insert into itresume9437342.orders(employee_id, amount, order_status) values
('e03', '15.00', 'OPEN'),
('e01', '25.50', 'OPEN'),
('e05', '100.70', 'CLOSED'),
('e02', '22.18', 'OPEN'),
('e04', '9.50', 'CANCELLED');

alter table itresume9437342.orders
add id serial primary key;

Выбрать данные из таблицы orders и вывести столбцы id, employee_id, amount, и order_status с дополнительным столбцом full_order_status, который содержит описание статуса заказа на основе значения столбца 'order_status'.

OPEN – «Order is in open state» ;
CLOSED - «Order is closed»;
CANCELLED - «Order is cancelled» *в остальных случаях выведите «Not mentioned»
*/
select id, employee_id, amount, order_status,
case 
when order_status = 'OPEN' then 'Order is in open state'
when order_status = 'CLOSED' then 'Order is closed'
when order_status = 'CANCELLED' then 'Order is cancelled'
else 'Not mentioned'
end as full_order_status
from itresume9437342.orders;








