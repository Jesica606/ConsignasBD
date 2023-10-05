CREATE VIEW peliculas_sin_devolver AS
SELECT f.title as peliculas, a.address AS direccion, c.city AS ciudad, co.country AS pais
FROM address a JOIN store s ON a.address_id = s.store_id
JOIN city c ON c.city_id = a.city_id
JOIN country co ON co.country_id = c.country_id
JOIN inventory i ON i.store_id = s.store_id
JOIN film f ON  f.film_id = i.film_id
join rental r on r.inventory_id = i.inventory_id
WHERE r.return_date IS NULL
ORDER BY peliculas;