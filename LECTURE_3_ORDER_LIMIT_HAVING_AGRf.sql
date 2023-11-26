-- create database if not exists lecture3;
use lecture3;
/*
order by asc/daesc по умолчанию asc - по возрастанию. Если написать desc - будет по убыванию
select * from table_name
order by название столбца   

order by название столбца desc - от большего к меньшему

LIMIT / TOP / FETCH FIRST

select *(или поля выборки) from имя таблицы
limit сколько строк вывести сверху (если одна цифра) / сколько строк пропустить сверху + сколько потом вывести (если две цифры)

DISTINCT - уникальные поля

select DISTINCT название столбца в котром ищем from название таблицы 
получаем список уникальных значений 

GROUP BY - группировки

select столбцы 
from имя таблицы 
where (условия групировки не обязательное поле )                                         COUNT(*) подсчет колическтва строк
GROUP BY (столбцы для сортировки)
HAVING (условия фильтрации групп)
ORDER BY (стольбцы для сортировки )


АГРЕГАТНЫЕ ФУНУЦИИ №5 

avg  среднее  select avg(имя столбца) as avg_имя столбца from имя_таблицы

			  select avg(имя столбца) as avg_имя столбца from имя_таблицы
              where (условие, например название производителя)

sum  

min             select min(столбец), max(столбец) from имя_таблицы 

				Можно использовать условия 
                
max             SELECT manufactors, COUNTS (*) as Models, SUM(product_count) as Units
				FROM Prpducts (имя таблицы)
				WHERE Price * Product_count > 80000
                GROUP BY manufactors
                HAVING sum(product_count) > 2
                ORDER BU Units DESC 
                
count     считтает строки selrct count(*) from имя таблицы посчитает все строки 

*/
























