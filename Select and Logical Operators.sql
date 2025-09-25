show databases;    -- will show all database in mysql

use sakila;      -- use is used to use any particular database 

show tables;    -- show table to show all tables 

-- select statement (DQL) * access all column  

select * from actor;

describe actor;  -- will give table info (column , dtype,relationship many more )

select actor_id,first_name from actor; -- select statment table can be in any case format 

select actor_id , first_name , actor_id ,last_name from actor;

-- Don't create a new column in original data 

select actor_id , first_name , actor_id*5 from actor; 

-- to filter rows 

select * from actor where actor_id=5;

select * from actor where first_name='NICK'; -- Data should be case sensitive

select actor_id , last_name,first_name  from actor where last_name='DAVIS';

-- Both are for not eqaul to 

select * from actor where actor_id!=5;

select * from actor where actor_id<>5;

select * from actor where first_name='NICK' and actor_id=44;

select * from actor where first_name='NICK' or actor_id=46;

select * from actor where actor_id>2 and actor_id<6;

select * from actor where actor_id between 2 and 6 ; -- lower to higher 

select * from actor where actor_id not between 2 and 6 ; 

select * from actor where actor_id=2 or actor_id=4 or actor_id=19; 

select * from actor where actor_id in (2,3,9) ;

select * from actor where first_name in ('NICK','BOB','ED');

-- Practise -- 

select first_name ,actor_id from actor where last_name='GUINESS';

select actor_id , first_name from actor where actor_id between 3 and 18 or first_name!='ED';

select last_name , actor_id , first_name from actor where first_name='NICK' or first_name='GRACE';

select * from actor where actor_id between 2 and 6 or actor_id>5; 

