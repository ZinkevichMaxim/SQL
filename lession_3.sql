-- create database lession3;
use lession3;
/*
DROP TABLE IF EXISTS staff;
CREATE TABLE staff
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(45) NOT NULL,
    lastname VARCHAR(45) NOT NULL,
    post VARCHAR(45) NOT NULL,
    seniority INT, 
    salary DECIMAL(8,2), -- Хранит точное число В  колонке salary будут хранится числа, имеющие максимум 5 цифр, причём 2 из которых отведены под десятичную часть.
    age INT
);

INSERT staff(firstname, lastname, post, seniority,salary,age)
VALUES ("Петр", "Петров", "Начальник", 8, 70000, 30), -- id = 1
  ('Вася', 'Петров', 'Начальник', 40, 100000, 60),
  ('Петр', 'Власов', 'Начальник', 8, 70000, 30),
  ('Катя', 'Катина', 'Инженер', 2, 70000, 25),
  ('Саша', 'Сасин', 'Инженер', 12, 50000, 35),
  ('Иван', 'Петров', 'Рабочий', 40, 30000, 59),
  ('Петр', 'Петров', 'Рабочий', 20, 55000, 60),
  ('Сидр', 'Сидоров', 'Рабочий', 10, 20000, 35),
  ('Антон', 'Антонов', 'Рабочий', 8, 19000, 28),
  ('Юрий', 'Юрков', 'Рабочий', 5, 15000, 25),
  ('Максим', 'Петров', 'Рабочий', 2, 11000, 19),
  ('Юрий', 'Петров', 'Рабочий', 3, 12000, 24),
  ('Людмила', 'Маркина', 'Уборщик', 10, 10000, 49);

select 
id,
concat(firstname,' ',lastname) as fullname,                                                     # concat - объединили два столбца в один
salary
from staff
order by salary desc;

Пропустите  первые 4 строки ("id" = 1, "id" = 2,"id" = 3,"id" = 4) и извлеките следующие 3 строки ("id" = 5, "id" = 6, "id" = 7)

select * froom staff
limit 4,3;

Пропустите две последнии строки (где id=12, id=11) и извлекаются следующие за ними 3 строки (где id=10, id=9, id=8)

select * from staff
order by id desc
limit 2,3;

SELECT COUNT(distinct post) AS Count FROM staff;                distinct 

select
sum(salary)
from staff;

SELECT  
post,
round(avg(salary),2) as avg_salary,
sum(salary) sum_salary,
min(salary) min_salary,
max(salary) max_salary,
max(salary) - min(salary) as diff_salary
FROM staff
group by post
having avg(salary) > 25000;   -- для агрегированных столбцов

Выведите только те группы, в которых количество строк меньше или равно двум. Для решения используйте оператор “IN”


SELECT post,
    COUNT(*) AS count                                                                       COUNT(*) подсчет колическтва строк
FROM staff
GROUP BY post
HAVING count < 3;
*/
