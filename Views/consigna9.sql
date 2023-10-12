CREATE VIEW costo_promedio_por_categoria AS
SELECT c.name, avg(p.amount) as costo_promedio
FROM payment p JOIN rental r ON p.rental_id = r.rental_id
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON f.film_id = i.film_id
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
GROUP BY c.category_id;