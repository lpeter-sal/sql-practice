
-- 1. Ver todos los registros
SELECT * FROM users;


-- 2. Ver el registro cuyo id sea igual a 10
SELECT * FROM users where id = 10;

-- 3. Quiero todos los registros que cuyo primer nombre sea Jim (engañosa)
SELECT * FROM users where name like 'Jim %';


-- 4. Todos los registros cuyo segundo nombre es Alexander
SELECT * FROM users where name like '% Alexander';


-- 5. Cambiar el nombre del registro con id = 1, por tu nombre Ej:'Fernando Herrera'
UPDATE users set name = 'Luis Salvador' where id = 1;
SELECT * FROM users where id=1;


-- 6. Borrar el último registro de la tabla
SELECT max(id) from users; 
delete from users where id=( SELECT max(id) from users );
