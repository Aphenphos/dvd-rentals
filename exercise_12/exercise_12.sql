-- the top 10 cities with the most total rental payment amount
-- include the city name and sum
-- use SUM to sum up the amounts
select city.city,
sum(payment.amount) as sum from city
inner join address 
    on city.city_id = address.city_id
inner join customer 
    on address.address_id = customer.address_id
inner join rental 
    on customer.customer_id = rental.customer_id
inner join payment 
    on rental.rental_id = payment.rental_id
group by city.city_id
order by sum desc
limit 10
