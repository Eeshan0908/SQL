use sakila;

-- trim Function 

select char_length(trim(    'hey' )); -- Trim is to remove extra whitespace . 

select char_length( rtrim(    'hey' )); -- Remove Right Whitespace (Right Trim) . 

select char_length( ltrim(    'hey' )); -- Remove Left Whitespace (Left Trim ) 


-- replace Function 
 
select first_name ,replace(first_name,'E','*') from actor;

select first_name ,lpad(first_name,5,'@') from actor; -- lpad adds the symbol given to the left if condition not fulfilled .

select first_name,rpad(first_name,5,'@') from actor; -- right pad 


-- Numeric Functions 

select round(11.2); -- Rounding Off Whole Part

select round(11.6 , 1); -- Rounding Off only Decimal Part 

select round(11.62 , 1); 

select round(11.687,2); 

select round(7.627,1); 

select round(7.627, -1); -- only the integer part 

select round(246.627 , -2);

select round(512.627,-3);

-- truncate Function : Used to extract values it does not round off . 

select truncate(6546.637,2) ;

-- other functions 

select mod(10,2),floor(6.99999) , ceil(4.00002);


-- Date Functions : We work on Dates 

select current_date(); -- Prints Current Date 

select current_time(); -- Prints Current Time 

select current_timestamp(); -- Prints The current time and current date together .  

select now(); -- Prints the current date and time , similar to timestamp . We can use any of them both are same 

-- add date function 

select now(), adddate(now(),2); -- It basically adds the days given by us .

select now(), adddate(now(),interval 2 month); -- Adds months given by user .

select now(), adddate(now(),interval 2 year); -- Adds years given by user . 

select now(), adddate(now(),interval 2 hour); -- Adds Hours .

select now(), adddate(now(),interval -1 year); -- Subtracts the given years and is similar for days and months 

-- add time : Adds the time . 

select now(), addtime(now(),'02:06:00');

-- year and month 

select now(),year(now()) , month(now()) , last_day(now());

-- extract 

select now(),extract(month from now());

select now(),extract(quarter from now());

-- dateformat() : It is a function which is use to extract date month year and store it in string method . 

select now(),date_format(now(),'Year is %y');

-- adddate , now , curtime , extract , year , month , date_format 

select payment_date , year(payment_date) , extract(month from payment_date) ,
date_format(payment_date,'Hour of Shopping is %H') ,
datediff(payment_date , now()) from payment;

 

 
