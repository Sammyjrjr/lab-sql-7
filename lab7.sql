-- In the table actor, which are the actors whose last names are not repeated? For example if you would sort the data in the table actor by last_name, you would see that there is Christian Arkoyd, Kirsten Arkoyd, and Debbie Arkoyd. These three actors have the same last name. So we do not want to include this last name in our output. Last name "Astaire" is present only one time with actor "Angelina Astaire", hence we would want this in our output list.
-- 1 Which last names appear more than once? We would use the same logic as in the previous question but this time we want to include the last names of the actors where the last name was present more than once
select * from actor;
select last_name as 'unique last names' from actor group by last_name having count(last_name) = 1;
-- 2 Using the rental table, find out how many rentals were processed by each employee.
select * from rental;	
select staff_id,count(staff_id) as 'number of rentals' from rental group by staff_id;
-- 3 Using the film table, find out how many films were released each year.
select * from film;
select release_year,count(release_year) from film group by release_year;
-- other way: select distinct release_year from film;

-- 4 Using the film table, find out for each rating how many films were there.
select * from film;
select distinct rating,count(rating) from film group by rating;

-- 5 What is the mean length of the film for each rating type. Round off the average lengths to two decimal places
select distinct rating,round(avg(length),2) from film group by rating;
-- 6 Which kind of movies (rating) have a mean duration of more than two hours?
select rating from film group by rating having avg(length >120);






