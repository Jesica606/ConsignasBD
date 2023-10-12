CREATE VIEW peliculas_entre_1_y_2_horas AS
SELECT f.title, f.length, f.rating, c.name AS categoria, l.name 
FROM film f JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
JOIN language l ON l.language_id = f.language_id
WHERE f.length BETWEEN 60 AND 120
ORDER BY title ASC;