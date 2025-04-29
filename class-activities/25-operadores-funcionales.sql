SELECT
	id,
	UPPER(name) AS upper_name,
	LOWER(name) AS lower_name,
	LENGTH(name) as LENGTH,
	(20 * 2) as constante,
	'*'||id||'-'|| name||'*' as barcode, -- * Se puede usar el operador || para concatenar cadenas
	CONCAT( '*',id,'-', name,'*' ), -- * Se puede usar la función CONCAT para concatenar cadenas
	name
FROM
	users;