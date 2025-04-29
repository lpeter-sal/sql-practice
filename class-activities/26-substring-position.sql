

select 
	name,
	SUBSTRING( name, 0, 5 ), -- * Se utiliza para extraer una subcadena de la cadena original, comenzando desde la posición 0 y tomando 5 caracteres.
	POSITION( ' ' in name ), -- * Se utiliza para encontrar la posición de un espacio en la cadena original. En este caso el espacio 
	SUBSTRING( name, 0, POSITION( ' ' in name ) ) as first_name, -- * Se utiliza para extraer la subcadena desde el inicio de la cadena original hasta la posición del primer espacio.
	SUBSTRING( name, POSITION( ' ' in name ) + 1 ) as last_name, -- * Se utiliza para extraer la subcadena desde la posición del primer espacio + 1 hasta el final de la cadena original.
	TRIM(SUBSTRING( name, POSITION( ' ' in name ) )) as trimmed_last_name -- * Se utiliza para eliminar los espacios en blanco al inicio y al final de la subcadena extraída desde la posición del primer espacio hasta el final de la cadena original.
from users;