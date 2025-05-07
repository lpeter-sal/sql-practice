INSERT INTO "language" ( name )
	SELECT DISTINCT "language" from countrylanguage order by "language"; -- * Forma de insertar datos en una tabla desde un subquery

INSERT INTO country_bk 
	SELECT * FROM country; -- * Forma de hacer un backup de una tabla desde un subquery

SELECT * FROM country_bk;


SELECT
    a.name,
    a.continent,
    ( select code from continent b where b."name" = a.continent ) -- * Forma de comparar informacion de dos tablas desde un subquery | * Forma de hacer un join sin usar JOIN
FROM
    country as a;
    
ALTER TABLE country DROP CONSTRAINT "country_continent_check";

UPDATE country a
SET continent = ( select code from continent b where b.name = a.continent ); -- * Forma de actualizar masivamente una tabla desde un subquery

SELECT * FROM country;
