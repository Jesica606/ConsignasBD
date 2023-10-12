CREATE VIEW encargados AS
SELECT s.first_name, s.last_name, d.*
FROM staff s JOIN direccion_completa d ON s.address_id = d.address_id;