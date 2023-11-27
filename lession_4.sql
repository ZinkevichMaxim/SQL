-- create database if not exists lession_4;
/*
use lession_4;
-- DROP DATABASE IF EXISTS lesson_4;
-- CREATE DATABASE lesson_4;
-- USE lesson_4;
DROP TABLE IF EXISTS teacher;
CREATE TABLE teacher
(	
	id INT NOT NULL PRIMARY KEY,
    surname VARCHAR(45),
    salary INT
);

INSERT teacher
VALUES
	(1,"Авдеев", 17000),
    (2,"Гущенко",27000),
    (3,"Пчелкин",32000),
    (4,"Питошин",15000),
    (5,"Вебов",45000),
    (6,"Шарпов",30000),
    (7,"Шарпов",40000),
    (8,"Питошин",30000);
    
SELECT * from teacher; 
DROP TABLE IF EXISTS lesson;
CREATE TABLE lesson
(	
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    course VARCHAR(45),
    teacher_id INT,
    FOREIGN KEY (teacher_id)  REFERENCES teacher(id)
);
INSERT INTO lesson(course,teacher_id)
VALUES
	("Знакомство с веб-технологиями",1),
    ("Знакомство с веб-технологиями",2),
    ("Знакомство с языками программирования",3),
    ("Базы данных и SQL",4),
    ("Нейронные сети", NULL); -- Учитель, который ведет данный предмет, временно отстутствует
    
    select * from lesson
    join teacher t using(id)      -- = on l.teacher_id = t.id
    
    select * from lesson as l
    left join teacher as t on l.teacher_id = t.id
    
    select * from lesson as l
    left join teacher as t on l.teacher_id = t.id
    union                                                             full
    select * from lesson as l
    right join teacher as t on l.teacher_id = t.id
    
    select * from lesson
    cross join teacher
    order by 1, 4    -- = order by lesson.id, teacher.id
    
    UNION добавляет строки
    JOIN добавляет столбцы
    
    -- ЗАДАЧА_1
    -- Получим инфо о учителях, которые ведут "Веб-технологии"
SELECT L.course, T.surname, T.salary
FROM lesson as L
LEFT JOIN teacher as T ON L.teacher_id = T.id
WHERE L.course = 'Знакомство с веб-технологиями';
как вариант 
SELECT L.course, T.surname, T.salary
FROM lesson as L
LEFT JOIN teacher as T ON L.teacher_id = T.id
WHERE L.course = 'Знакомство с веб-технологиями';

ПОСМОТРЕТЬ УРОК ОТ ПРЕПОДА ЕЩЕ ВАРИАНТЫ БЕЗ JOIN

EXIST
-- Проверьте, присутствует ли буква “А” в последовательности 'A', 'B', 'C', 'D'
-- SELECT 'A' in ('A', 'B', 'C', 'D');
-- как вариант
-- SELECT IF('A' in ('A', 'B', 'C', 'D'), 'присутствует', 'нет такого');
-- как вариант
SELECT T.surname, T.salary
FROM teacher T
WHERE EXISTS (
    SELECT teacher_id
    FROM lesson
    WHERE course = 'Знакомство с веб-технологиями' AND T.id = teacher_id
);
*/


    
    
    
    
    
    
    
    
    
    
    