#10 
select A.first_name, A.last_name, Count(C.title) as cnt
 from actor as A left join film_actor as B on A.actor_id = B.actor_id
left join film as C on B.film_id = C.film_id
where C.rental_rate >= 4
group by A.first_name, A.last_name
order by cnt DESC; 
