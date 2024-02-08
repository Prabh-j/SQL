
-- drop the existing database, create it and use it
DROP DATABASE IF EXISTS db_pizzas;
CREATE DATABASE db_pizzas;
USE db_pizzas;

-- drop the existing table
-- DROP TABLE IF EXISTS tbl_pizzas;

CREATE TABLE tbl_pizzas
(
	pizza_name	VARCHAR(20)         PRIMARY KEY, 				-- name of the pizza
    pizza_type	VARCHAR(25)			NOT NULL,					-- type of the pizza
    pizza_cost	DEC(4,2)			NOT NULL DEFAULT 1,			-- cost of the pizza
    customer_rating	ENUM('0','1','2','3','4','5') DEFAULT '0'		-- rating given by customer; '5' is the maximum
     
);

-- populate the table with data
INSERT INTO tbl_pizzas(pizza_name,pizza_type,pizza_cost,customer_rating)
VALUES
('Hawaiian','DeepDish',2.50,'3'),
('Deluxe','Thick Stuffed',2,'3'),
('Pepperoni','Ring',2.00,NULL),
('Cheese','Thick',DEFAULT,'4'),
('BBQ Chicken','Suffed Crust',1.50,'2'),
('Meat','Plain',2.25,'5');
-- (NULL,'Ring',2.50,4), -- Primary Key value cannot be null
-- ('Meat','Ring',2.50,4); -- cannot add a duplicate name (PK)

INSERT INTO tbl_pizzas(pizza_name,pizza_type)
VALUES
('Waky Meat','Special');

select * from tbl_pizzas order by 2, 3;

select * from tbl_pizzas where pizza_type like '%Thick%';

select * from tbl_pizzas where pizza_name like '%Meat%';

select * from tbl_pizzas where customer_rating is null;

select pizza_name,customer_rating from tbl_pizzas order by 2;