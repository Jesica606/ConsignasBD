--5) Agregar un usuario nuevo con la contraseña de alguno de los usuarios ya creados (usando subquery buscando el usuario por nombre)
insert into user (username, password)
values ('Laura', (SELECT password from user where username like 'Diego%'));