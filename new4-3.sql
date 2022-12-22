Select Distinct a.film_id, a.title,  (a.rental_rate * count(c.rental_date)) as total
From film a Left join inventory b on a.film_id = b.film_id
			left join rental c on b.inventory_id = c.inventory_id
            left join payment d on c.rental_id = d.rental_id
Group by film_id, title
Order by total desc
limit 5;
