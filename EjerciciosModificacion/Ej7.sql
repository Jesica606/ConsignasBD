--7) Borrar un usuario que tenga posts, haciendo primero un DELETE con subquery que borre todos los post de ese usuario.
DELETE FROM post WHERE author_id = (SELECT id FROM user WHERE username LIKE 'Diana');

DELETE FROM user WHERE username LIKE 'Diana';