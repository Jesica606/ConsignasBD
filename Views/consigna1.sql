CREATE VIEW peliculas_por_rating AS
SELECT rating, count(rating) as cantidad
FROM film
GROUP BY rating;