/*
 Create at least 3 tables
write sql Queries at least 3 queries
-Transcation
-Staff
-menu
-ingredient
- with clause
- Subquery
- Aggregate function & group by
*/
--------Create table name is 'staff'------------------------------
 CREATE TABLE staff(
   staff_id int,
   staff_name Text,
   staff_position Text);
--------Insert into data to table 'staff'-------------------------
 INSERT INTO staff values
   (1, 'Non','Manager'),
   (2, 'Nan','Officer'),
   (3, 'Mind','Officer');
.mode box
.header on
--------Create table name is'menu'--------------------------------
 CREATE TABLE menu(
     menu_id INT,
     name_food TEXT,
     price REAL,
     category TEXT);
--------Insert into data to table 'menu'-------------------------
 insert into menu values
 (1,'Banana',10.00,'Fruit'),
 (2,'Rice with pork',50.00,'Thai Food'),
 (3,'Pizza',200.00,'Italian Food'),
 (4,'Sushi',120.00,'Japanese Food');
--------Create table anme is 'transaction_cooking'---------------
CREATE table transaction_cooking(
     transaction_id INT,
     order_date DATETIME,
     customer_id INT,
     staff_id INT,
     total_amount REAL,
     category TEXT);
--------Insert into data to table 'transcation_cooking'----------
 insert into transaction_cooking values
   (30,'2024-06-01',1,1,320.00,'Fruit'),
   (31,'2024-06-02',2,2,600.00,'Thai Food'),
   (32,'2024-06-03',3,3,610.00,'Italian Food'),
   (33,'2024-06-03',4,1,240.00,'Italian Food'),
   (34,'2024-06-04',5,2,360.00,'Japanese Food'),
   (35,'2024-06-04',6,3,380.00,'Japanese Food'),
   (36,'2024-06-05',7,1,800.00,'Japanese Food'),
   (37,'2024-06-05',8,2,1000.00,'Japanese Food');
-----------Create table name is Customer------------------------
create table customers (
    customer_id int PRIMARY KEY,
  customer_name TEXT, 
  gender TEXT 
);
-----------insert into Customer------------------------
insert into customers values
     (1,'James','M'),
     (2,'Mary','F'),
     (3,'Onn','F'),
     (4,'Kaning','F'),
     (5,'Boss','M'),
     (6,'Son','F'),
     (7,'palm','F'),
     (8,'fern','M');
 -- Where clause staff table-------------------------------------
 select 
     staff_id,
     staff_name
 from staff
 where staff_name = 'Non';
-- Where clause menu table---------------------------------------
 select
     name_food,
     price
 from MENU;
 -- Aggregate function for transcation_cooking ------------------
 select 
 order_date,
   Count(*),
       AVG(total_amount),
       SUM(total_amount),
       MAX(total_amount),
       MIN(total_amount)
   from transaction_cooking
   GROUP by order_date;
-- Subquery----with Staff table----------------------------------
SELECT
    staff_name,
    staff_position
FROM (
    SELECT *
    FROM staff
    WHERE staff_id = '1');
-----join data from staff, transaction_cooking with staff_id-----
-----join data from menu, transaction_cooking with category------
    WITH 
     customer_detail AS (
         SELECT
             sta.staff_name AS staff_name,
             sta.staff_position AS staff_position,
             cus.customer_name AS customer_name,
             cus.gender AS gender, 
             men.name_food AS name_food,
             men.price AS price,
             tra.total_amount AS amount_receive
         FROM staff AS sta
         JOIN transaction_cooking AS tra ON sta.staff_id = tra.staff_id
         JOIN menu AS men ON tra.category = men.category
         JOIN customers AS cus ON tra.customer_id = cus.customer_id) 
-----Query data from customer_detail table-----------------------
    
    SELECT staff_name, staff_position, customer_name,gender, name_food ,price
    FROM customer_detail;
    
