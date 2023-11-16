--Elegir una actor o actriz que no esté en el sistema y agregarlo, junto con al menos tres películas en las que haya participado.  No es necesario agregar los otros actores/actrices de esa película
INSERT INTO actor (first_name, last_name)
VALUES('Dwayne', 'Johnson');

INSERT INTO film (title, language_id, rental_duration, rental_rate, replacement_cost)
VALUES('Black Adam',1 , 6, 0.99, 20.99), ('Jumanji',1 , 5, 4.99, 20.99), ('Moana',1 , 4, 0.99, 20.99);

INSERT INTO film_actor (actor_id, film_id)
VALUES( (SELECT actor_id from actor where first_name = 'Dwayne' AND last_name = 'Johnson'), (select film_id from film where title = 'Black Adam'));

INSERT INTO film_actor (actor_id, film_id)
VALUES( (SELECT actor_id from actor where first_name = 'Dwayne' AND last_name = 'Johnson'),( select film_id from film where title = 'Moana'));

INSERT INTO film_actor (actor_id, film_id)
VALUES( (SELECT actor_id from actor where first_name = 'Dwayne' AND last_name = 'Johnson'), (select film_id from film where title = 'Jumanji'));