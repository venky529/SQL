create function count_RR (min_r decimal(4,2) , max_r decimal(4,2))
returns int
language plpgsql
as
$$
declare 
movie_count int;
begin
select count(*)
into movie_count
from film
where rental_rate between min_r and max_r;
return movie_count;
end;
$$


select count_rr(3,6)