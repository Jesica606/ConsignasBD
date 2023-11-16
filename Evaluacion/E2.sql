--Crear una vista (VIEW) que muestre de cada alquiler su duración (rental duration), el nombre completo del cliente, el nombre de la película y la fecha de alquiler.
CREATE VIEW peliculas_alquiladas AS
SELECT f.title as peliculas, f.rental_duration as duracion, r.rental_date as fecha_de_alquiler, c.first_name, c.last_name
FROM film f JOIN inventory i USING(film_id)
JOIN rental r USING(inventory_id)
JOIN customer c USING(customer_id);