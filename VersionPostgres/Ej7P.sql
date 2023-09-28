DELETE FROM "post" WHERE author_id = (SELECT id FROM "user" WHERE username ILIKE 'Diana');

DELETE FROM "user" WHERE username ILIKE 'Diana';