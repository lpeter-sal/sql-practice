
select DISTINCT continent from country order by continent asc; 


INSERT INTO continent (name)  -- * Forma de insertar datos en una tabla desde un subquery
	SELECT DISTINCT 
		continent
	FROM
		country
	ORDER BY
		continent ASC;

select * from continent;