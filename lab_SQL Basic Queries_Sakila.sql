-- 1 & 2
USE sakila;
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;


-- 3 
-- Titles of all films from film table
SELECT title FROM film;

-- Languages used in films
SELECT name AS language FROM language;

-- First names of all employees 
SELECT first_name FROM staff;

SELECT * FROM staff;


-- 4 . Unique release years 
SELECT DISTINCT release_year
FROM film
ORDER BY release_year;


-- 5.1 Stores that the compa,y has 
SELECT COUNT(*) AS store_id 
FROM store;

-- 5.2 Number of employees
SELECT COUNT(*) AS employee_count
FROM staff;

-- 5.3 Films available for rent 
SELECT COUNT(DISTINCT inventory_id) AS available_for_rent
FROM inventory
WHERE inventory_id NOT IN (
    SELECT DISTINCT inventory_id FROM rental
);

-- Rented 
SELECT COUNT(DISTINCT inventory_id) AS rented
FROM rental;

-- 5.4 Number of distinct last names of the actors 
SELECT COUNT(DISTINCT last_name) AS distinct_last_names
FROM actor;


-- 6 10 longest films 
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;


-- 7 All actors with the first name "SCARLETT"
SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name = 'SCARLETT';


-- Bonus
-- 1. All movies that have ARMAGEDDON in their title and longer than 100 minutes
SELECT film_id, title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100;

-- 2. Number of films that include Behind the Scenes content
SELECT COUNT(*) AS behind_the_scenes_count
FROM film
WHERE special_features LIKE '%Behind the Scenes%';
