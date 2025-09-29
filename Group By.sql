-- groupby

show databases;

use sakila;

select * from payment;

select customer_id, sum(amount) , count(amount) from payment group by customer_id;

select payment_id , count(*) from payment group by payment_id;

select customer_id , count(customer_id) from payment where customer_id>3 group by customer_id;

select customer_id , count(customer_id) from payment where count(customer_id)>30 
group by customer_id; -- Error : Because where is not applied on aggeregate function 

-- To use Aggeregate Function we use having . 

select customer_id , count(customer_id) from payment  
group by customer_id having count(customer_id)>30; 

-- 

select amount , count(*) , sum(amount) from payment group by amount  ;

select amount , count(*) , sum(amount) from payment where amount>2 group by amount  ;

select amount , count(*) , sum(amount) from payment where amount>2 group by amount
having count(*)>3000  ;

select amount , count(*) as totalcount , sum(amount) from payment where amount>2 group by amount
having totalcount >3000  ;

-- Practice --

-- Get the staff id and the total number of customer served by each staff . 
-- Get the total amount and no. of payments done for each month . 
-- Get the amount and total number of unique customer who have done the payment for the each amount .
-- Get the number of transactions achieved for each amount for the year 2005 where the no of transaction , 
-- >15. 

select * from payment;

select staff_id , count(customer_id) from payment group by staff_id; 

-- -- -- --- ----------------------------------------------------------------------

select * from payment;

select payment_date from payment;

select sum(amount) , count(payment_id) ,month(payment_date) from payment group by month(payment_date);

-- -----------------------------------------------------------------------------------

select * from payment ;

select amount , count(distinct customer_id) from payment group by amount;

-- ------------------------------------------------------------------------------------

select * from payment ;

select amount , count(payment_id)  from payment where year(payment_date)=2005 
group by amount having count(payment_id)>15;

-- -------------------------------------------------------------------------------------



