#11
select A.category_id, A.name, Count(C.title) cnt_films
from category as A left join film_category as B on A.category_id = B.category_id
left join film as C on B.film_id = C.film_id
where C.length >= 100
group by A.category_id
order by cnt_films DESC, A.name ASC;