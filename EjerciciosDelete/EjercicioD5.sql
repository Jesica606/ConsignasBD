--Borrar al actor Matthew Johansson, pensar qué cosa habría que borrar primero para poder borrarlo.
DELETE FROM film_actor WHERE actor_id = (SELECT actor_id FROM actor WHERE first_name like '%Matthew%' AND last_name like '%Johansson%') ;
DELETE FROM actor WHERE first_name like '%Matthew%' AND last_name like "%Johansson%";