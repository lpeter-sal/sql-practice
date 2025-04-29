select * from users;

SELECT
	name,
	-- 	SUBSTRING( name, 0, 5 ),
	-- 	POSITION( ' ' in name ),
	SUBSTRING(name, 0, POSITION(' ' IN name)) AS first_name,
	SUBSTRING(name, POSITION(' ' IN name) + 1) AS last_name
	-- 	TRIM(SUBSTRING( name, POSITION( ' ' in name ) )) as trimmed_last_name
FROM
	users;

UPDATE -- * No utilizamos WHERE porque queremos actualizar todos los registros.
	users
SET
	first_name = SUBSTRING(name, 0, POSITION(' ' IN name)), -- * Asignamos el primer nombre, mediante la funcion SUBSTRING aplicandolo al campo NAME
	last_name = SUBSTRING(name, POSITION(' ' IN name) + 1); -- * Asignamos el apellido, mediante la funcion SUBSTRING aplicandolo al campo NAME

SELECT
	*
FROM
	users;