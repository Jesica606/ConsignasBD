CREATE VIEW direccion_completa AS
SELECT a.address_id, a.address AS direccion, c.city AS ciudad, co.country AS pais
FROM address a JOIN city c ON a.city_id = c.city_id
JOIN country co ON c.country_id = co.country_id;