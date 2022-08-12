-- find the category name of all inventory items that have never been rented
-- Similar to exercise 9 with an additonal join
select category.name
from category
left join film_category
    on film_category.category_id = category.category_id
left join film
    on film.film_id = film_category.film_id
inner join inventory
    on film.film_id = inventory.film_id
left join rental
    on inventory.inventory_id = rental.inventory_id
where rental.rental_date is null