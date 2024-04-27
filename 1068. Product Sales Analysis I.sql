-- drop table Sales;
-- drop table Product;

Create table If Not Exists Sales (sale_id int, product_id int, year int, quantity int, price int);
Create table If Not Exists Product (product_id int, product_name varchar(10));

insert into Sales (sale_id, product_id, year, quantity, price) values ('1', '100', '2008', '10', '5000');
insert into Sales (sale_id, product_id, year, quantity, price) values ('2', '100', '2009', '12', '5000');
insert into Sales (sale_id, product_id, year, quantity, price) values ('7', '200', '2011', '15', '9000');

insert into Product (product_id, product_name) values ('100', 'Nokia');
insert into Product (product_id, product_name) values ('200', 'Apple');
insert into Product (product_id, product_name) values ('300', 'Samsung');

-- Write a solution to report the product_name, year, and price for each sale_id in the Sales table.
--
-- Return the resulting table in any order.
--
-- The result format is in the following example.
--
--
-- Example 1:
--
-- Input:
-- Sales table:
-- +---------+------------+------+----------+-------+
-- | sale_id | product_id | year | quantity | price |
-- +---------+------------+------+----------+-------+
-- | 1       | 100        | 2008 | 10       | 5000  |
-- | 2       | 100        | 2009 | 12       | 5000  |
-- | 7       | 200        | 2011 | 15       | 9000  |
-- +---------+------------+------+----------+-------+
-- Product table:
-- +------------+--------------+
-- | product_id | product_name |
-- +------------+--------------+
-- | 100        | Nokia        |
-- | 200        | Apple        |
-- | 300        | Samsung      |
-- +------------+--------------+
-- Output:
-- +--------------+-------+-------+
-- | product_name | year  | price |
-- +--------------+-------+-------+
-- | Nokia        | 2008  | 5000  |
-- | Nokia        | 2009  | 5000  |
-- | Apple        | 2011  | 9000  |
-- +--------------+-------+-------+
-- Explanation:
-- From sale_id = 1, we can conclude that Nokia was sold for 5000 in the year 2008.
-- From sale_id = 2, we can conclude that Nokia was sold for 5000 in the year 2009.
-- From sale_id = 7, we can conclude that Apple was sold for 9000 in the year 2011.

select P.product_name, S.year, S.price from Product P inner join Sales S on P.product_id = S.product_id;
