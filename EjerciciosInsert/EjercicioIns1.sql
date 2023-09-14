-- Insertar tres ciudades de argentina a elección en un solo insert 
INSERT INTO city (city, country_id)
VALUES ('Bolivar',(SELECT country_id FROM country WHERE country LIKE 'Argentina%')), ('Junin',(SELECT country_id FROM country WHERE country LIKE 'Argentina%')), ('Rivadavia',(SELECT country_id FROM country WHERE country LIKE 'Argentina%')); 