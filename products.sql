use products;
CREATE TABLE Products (
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
category VARCHAR(50),
unit_price DECIMAL(10, 2)
);

INSERT INTO Products (product_id, product_name, category, unit_price) VALUES
(101, 'Laptop', 'Electronics', 500.00),
(102, 'Smartphone',' Electronics', 300.00),
(103, 'Headphones', 'Electronics', 30.00),
(104, 'Keyboard', 'Electronics', 20.00),
(105, 'Mouse','Electronics', 15.00);
select *from Products;
select product_name , unit_price from Products;
select product_id ,product_name from Products where unit_price > 100;
select avg(unit_price) as avg_unitprice from Products;
select product_name,max(unit_price) from Products group by product_name limit 1;
select product_name , unit_price from Products order by unit_price desc;
select product_id ,product_name from Products where unit_price between 20 and 600;
select product_id ,category from Products order by category asc;