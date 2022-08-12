-- find all film titles rented out by customers who live in the country of Peru
-- Similar to exercise 7 with an additional join to get country name
select film.title
from film
left join inventory
    on film.film_id = inventory.film_id
left join rental
    on inventory.inventory_id = rental.inventory_id
left join customer
    on rental.customer_id = customer.customer_id
left join address
    on address.address_id = customer.address_id
left join city
    on city.city_id = address.city_id
left join country
    on city.country_id = country.country_id
where country.country = 'Peru'
