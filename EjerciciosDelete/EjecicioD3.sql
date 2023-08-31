--Borrar todas las ciudades que no tienen direcciones y luego todos los países que no tienen ciudades. country_id = 20, city_id = 313
SELECT * FROM country WHERE country_id NOT IN (SELECT country_id FROM city) ;

DELETE FROM city WHERE city_id NOT IN (SELECT DISTINCT city_id FROM address) ;