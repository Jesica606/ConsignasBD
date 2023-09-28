INSERT INTO "user" (username, password)
VALUES ('Laura', (SELECT password FROM "user" WHERE username ILIKE 'diego%'));