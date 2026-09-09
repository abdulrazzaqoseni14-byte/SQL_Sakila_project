# SQL_Sakila_project
A broad exploratory data analysis using a sample database in MySQL

## About the databases 
Sakila database is a sample database in SQL that allows beginners to practice, learn and get familiar with SQL syntaxes

### Few sample questions 
**1. List all films with a rental rate greater than 2.99**
```sql
select * from film where rental_rate > 2.99;
```
**2. Find the total number of films in each category, ordered from the highest to lowest**
```sql
select name, count(film_id) as total_film from category join film_category using (category_id) 
group by name 
having total_film  order by total_film desc;
```
