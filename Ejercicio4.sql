--Calcular el promedio de lo que gastan los usuarios en el sistema
SELECT AVG(t.total)
   FROM (SELECT SUM(total) AS total
              FROM invoices
	 GROUP BY CustomerId)  t;