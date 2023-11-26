use lecture2;
/*
select product_name, Product_count,
case
	when Product_count  = 1
		then 'Товар заканчивается'
	when Product_count = 2
		then 'Мало товара'
	when Product_count = 3
		then 'Есть в наличии'
	else 'Много товара'
end as Category
from mob_phone	


select product_name, Manyfacturer,                                 -- IF
	if(Product_name>3, 'Много товара', 'Мало товара')
from mob_phone;


update mob_phone set Price = Price + 3000                          -- update
where Manyfacturer in ('Apple', 'Samsung', 'Huawey'); 

delete from mob_phone
where Manyfacturer = 'Huawei';                                      -- delete
select * from mob_phone
*/


