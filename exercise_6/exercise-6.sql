-- find all film titles rented out by customers with the first_name Roberta
-- Similar to exercise 5
select film.title
from film
left join film_actor
    on film_actor.film_id = film.film_id
left join actor
    on film_actor.actor_id = actor.actor_id
    where customer.first_name = 'Roberta'