-- 1. Display the number of unique inventory rented and the total number of inventory rented
--   Column => unique_inventory_rented, total_inventory_rented
select count(distinct inventory_id) as unique_inventory_rented, 
  count(*) as total_inventory_rented 
from rental;

-- 2. List all the films of Dan Torn and Dan Streep. Sort by film_title alphabetical order
--   Column => film_title, release_year, and rating, and actor_full_name.

select film.title as film_title, 
  film.release_year as release_year, 
  film.rating as rating, 
  actor.first_name||' '||actor.last_name as actor_full_name 
from actor inner join film_actor
  on actor.actor_id = film_actor.actor_id
  inner join film
  on film_actor.film_id = film.film_id
  where actor.first_name = 'Dan' and actor.last_name = 'Torn'
  or actor.first_name = 'Dan' and actor.last_name = 'Streep'
  order by film_title;

-- 3. List all Comedy films of all actors whose last names start with 'D'. Sort by actor_full_name alphabetical order
--   Column => actor_full_name, film_title, category_name

select actor.first_name||' '||actor.last_name as actor_full_name,
  film.title as film_title,
  category.name as category_name
from actor inner join film_actor
  on actor.actor_id = film_actor.actor_id
  inner join film
  on film_actor.film_id = film.film_id
  inner join film_category
  on film.film_id = film_category.film_id
  inner join category
  on film_category.category_id = category.category_id
  where actor.last_name like 'D%'
  and category.name = 'Comedy'
  order by actor_full_name;

-- 4.  Determine the potential number of customers a store staff would serve (count the number of customer in the same country as the staff)
--   Column => staff_full_name, customer_count
select staff_list.name as staff_full_name, 
  count(*) as customer_count 
from staff_list
  inner join customer_list
  on staff_list.country = customer_list.country
  group by staff_list.name;

-- 5. Find the most popular film category per store (determined by the number of rentals)
--   Column => store_id, film_count, category_name

with partitioned_film_table as (
  select inventory.store_id as store_id,
    count(category.name) as film_count,
    category.name as category_name,
    rank() over (partition by inventory.store_id order by count(category.name) desc) rank
  from inventory
    inner join film_category
    on inventory.film_id = film_category.film_id
    inner join category
    on film_category.category_id = category.category_id
    group by category.name, inventory.store_id
    order by store_id, count(category.name)
)

select store_id, film_count, category_name from partitioned_film_table
where rank = 1;

-- 6. Rank the top 5 actors per country (determined by the number rentals) sort by most popular to least popular
--   Column => country, actor_full_name, actor_rank, rent_count

-- with partitioned_table as (
--   select  country.country as country,
--     actor.first_name||' '||actor.last_name as actor_full_name,
--     rank() over (partition by country.country order by count(*) desc) actor_rank,
--     count(*) as rent_count
--   from inventory
--     inner join film_actor
--     on film_actor.film_id = inventory.film_id
--     inner join actor
--     on actor.actor_id = film_actor.actor_id
--     inner join store
--     on inventory.store_id = store.store_id
--     inner join address
--     on store.address_id = address.address_id
--     inner join city
--     on address.city_id = city.city_id
--     inner join country
--     on city.country_id = country.country_id
--     group by actor_full_name, country.country
--     order by country.country
-- )

with partitioned_table as (
  select  country.country as country,
    actor.first_name||' '||actor.last_name as actor_full_name,
    rank() over (partition by country.country order by count(*) desc) actor_rank,
    count(*) as rent_count
  from rental
    inner join inventory
    on rental.inventory_id = inventory.inventory_id
    inner join film_actor
    on film_actor.film_id = inventory.film_id
    inner join actor
    on actor.actor_id = film_actor.actor_id
    inner join store
    on inventory.store_id = store.store_id
    inner join address
    on store.address_id = address.address_id
    inner join city
    on address.city_id = city.city_id
    inner join country
    on city.country_id = country.country_id
    group by actor_full_name, country.country
    order by country.country
)

select * from partitioned_table
where actor_rank <= 5;