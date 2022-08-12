-- the average rental amount by country
-- include the country name and avg amount
-- use AVG to average the amount
select country.country, avg(payment.amount) from country
inner join city on country.country_id = city.country_id
inner join address on city.city_id = address.city_id
inner join customer on address.address_id = customer.address_id
inner join rental on customer.customer_id = rental.customer_id
inner join payment on rental.rental_id = payment.rental_id
group by country.country_id
order by avg desc
limit 10;
