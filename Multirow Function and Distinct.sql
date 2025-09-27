-- Single row functions ( Scaler Function ) 
-- function har row => output

-- Multirow Function (Aggeregate Function ) 

use sakila;

select amount ,round(amount) from payment ;

select sum(amount) , sum(round(amount)) from payment;

select sum(amount) , count(amount) from payment;

select count(amount) from payment where amount>5;

select count(address_id) , count(address2) from address; -- Count(It will not include the null values) .

select count(address_id) , count(address2) , count(*) from address; -- Count(*) : It will count the null values in all the rows .

select * from payment;

select max(amount) , min(amount),sum(amount),count(amount) from payment;

-- Distinct : It is used to get the unique values .

select distinct amount from payment;

select distinct amount , payment_id from payment;

select distinct amount , customer_id from payment;

select count(distinct amount) , count(amount) from payment ; 

-- Practise -- 

-- 1 . get the payment id and amount for year 2005 .
-- 2. get the unique customers who have done the payment in the month of june . 
-- 3. get the max amount ,avg amount and the difference between max and avg amount where the amount of payment is greater than 2$ for the year 2006 .

-- 1 .

select * from payment;

select payment_id , amount from payment where year(payment_date)=2006;

-- 2. 

select  month(payment_date) from payment;

select count(distinct(customer_id)) from payment where month(payment_date)=6;

-- 3.

select * from payment;
select year(payment_date) from payment;

select max(amount) , avg(amount) , max(amount) - avg(amount) from 
payment where amount>2 and year(payment_date)=2006;


-- Group By --

select count(payment_id) from payment where customer_id=2;

select count(payment_id) from payment where customer_id=4;

-- Group By statment (grouping similar values together)

select customer_id , count(payment_id) from payment group by customer_id; -- Group By with aggeregate 









  

