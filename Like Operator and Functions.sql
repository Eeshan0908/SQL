show databases;

-- Like Operator (Pattern ke according data filter) -- 

-- % (wildcard character) : zero or more character --

use sakila;

select * from actor where first_name like 'N%';

select * from actor where first_name like '%S';

select * from actor where first_name like 'S%T';

select * from actor where first_name like '%S%';

-- (_) : Exactly one character --

select * from actor where first_name like 'S_';

select * from actor where first_name like 'E_';

select * from actor where first_name like 'A___%';

select * from actor where first_name like '_A%';


-- Practise Questions -- 

select actor_id , first_name from actor where first_name like '%TE';

select actor_id , first_name from actor where first_name like '%NN%';

select first_name , last_name from actor where last_name like 'B%R_';

select * from actor where first_name like '____%';

select * from actor where actor_id between 2 and 90 and first_name like '_%S%A_';

-- Functions (INBUILT FUNCTIONS) --

-- 1. Scalar Function (row function) --> Apply on each row and return the output for each row . 

-- 2. Multirow functions --> 


select first_name , char_length(first_name) from actor; -- Counts the total characters 

select first_name , char_length(first_name) ,lower(first_name) from actor; -- Lower all the characters 

select first_name , last_name ,concat(first_name,' ',last_name) from actor; -- Combines the 2 . 

-- Concat does not have space or seprator by default we have to give sperators thats why we use concat_ws(). 
-- Concat ws means concat with seprators .

select first_name , last_name ,concat_ws(' ','MR',first_name,last_name) from actor;

-- substr (To extract some data)

select first_name , substr(first_name,3) from actor;

select first_name , substr(first_name,3) , substr(first_name,3,2) from actor;

select first_name , substr(first_name,-4,2)  from actor;

