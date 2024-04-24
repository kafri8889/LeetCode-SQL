CREATE TABLE products (
    product_id INTEGER,
    low_fats CHAR(1),
    recyclable CHAR(1)
);

insert into Products (product_id, low_fats, recyclable) values ('0', 'Y', 'N');
insert into Products (product_id, low_fats, recyclable) values ('1', 'Y', 'Y');
insert into Products (product_id, low_fats, recyclable) values ('2', 'N', 'Y');
insert into Products (product_id, low_fats, recyclable) values ('3', 'Y', 'Y');
insert into Products (product_id, low_fats, recyclable) values ('4', 'N', 'N');

-- Write a solution to find the ids of products that are both low fat and recyclable.

select product_id from products where low_fats = 'Y' and recyclable = 'Y';
