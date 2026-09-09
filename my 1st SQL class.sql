show databases;
use sakila;

show tables;
desc actor;


select * from actor;
select first_name, last_name from actor;
select actor_id from actor;
select * from actor;
select actor_id from actor;
select actor_id from actor where actor_id < 6;


select * from payment;
desc film;
SELECT film_id, title, 'length'FROM film WHERE length > (SELECT AVG(length) FROM film);

select * from payment; 
select * from customer;
select * from inventory;
select * from film;
desc rental;

create view customer_info as 
select customer_id, first_name, last_name, title, amount, payment_date
from customer join payment using (customer_id) 
join rental using (customer_id)
join inventory using (inventory_id)
join film using (film_id);


select * from customer_info;

select * from customer_info;



show full tables where table_type = 'VIEW'; 

create view vip_customers as
select customer_id, first_name, last_name, total spending 
from customer  
show tables;
 use sakila;
desc film;
desc film_category;



# List all films with a rental rate greater than 2.99
select * from film where rental_rate > 2.99;
# Find the total number of films in each category, ordered from the highest to lowest
select name, count(film_id) as total_film from category join film_category using (category_id) 
group by name 
having total_film  order by total_film desc;

#For each customer, rank their rentals from the mostrecent to oldest using row numbers
select customer_id, rental_id, rental_date, 
row_number() over (partition by customer_id order by rental_date desc) as rental_details 
from rental;

# Show all actors whose last name starts with'W'
select * from actor where last_name like "W%";  

# List customers who have never made a payment (LEFT JOIN or subquery).
select customer_id, first_name from customer 
left join payment using (customer_id) where payment_id is null;


# Retrieve the first name and the last name of all staff members 
select first_name, last_name from staff;

#Find the average rental duration (rental_duration) per film category.

# Count how many films are rated PG-13
select count(*) from film where rating = "PG-13";

# Using LAG(), find the number of days between each customer's consecutive rentals.  

 # List all the distinct film ratings available in the databases 
 select distinct rating from film;
 
 # Find the number of customers registered at each store 
 desc customer;
 select store_id, count(customer_id) as customer_count from customer group by store_id;
 
 #  
 
                                                       


		






 


