Use hw_1;
DROP TABLE IF EXISTS itresume9437342.mobile_phones;
-- создаём таблицу с мобильными телефонами (mobile_phones)
CREATE TABLE itresume9437342.mobile_phones (
    id SERIAL PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    manufacturer VARCHAR(100) NOT NULL,
    product_count INT,
    price BIGINT
);

-- Наполнение таблицы
INSERT INTO itresume9437342.mobile_phones (product_name, manufacturer, product_count, price)
VALUES
    ('iPhone X', 'Apple', 3, 76000),  
    ('iPhone 8', 'Apple', 2, 51000),  
    ('Galaxy S9', 'Samsung', 2, 56000),  
    ('Galaxy S8', 'Samsung', 1, 41000),
    ('P20 Pro', 'Huawei', 5, 36000);
    
    select * from itresume9437342.mobile_phones;