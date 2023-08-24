DELETE FROM language
WHERE language_id NOT IN 
(SELECT DISTINCT language_id FROM film);