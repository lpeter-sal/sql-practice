

SELECT
    COUNT(*) as total_users, -- * FUNCION PARA CONTAR
    MIN( followers ) as min_followers, -- * FUNCION PARA SABER EL VALOR MINIMO
    MAX( followers ) as max_followers, -- * FUNCION PARA SABER EL VALOR MAXIMO
    ROUND(AVG( followers )) as avg_followers, -- * FUNCION PARA SACAR EL PROMEDIO DE UN DATO CON AVG() Y ROUND() PARA REDONDEAR.
    SUM(followers) / COUNT(*) as avg_manual -- * FUNCION MANUAL PARA SACAR EL PROMEDIO DE UN DATO SIN DECIMALES.
    
FROM
    users;




SELECT
    first_name,
    last_name,
    followers
FROM
    users
WHERE
    followers = 4
    OR followers = 4999; -- * SE PUEDE UTILIZAR AND/OR, FILTRAR INFORMACION.



SELECT
    COUNT(*),
    followers
FROM
    users
WHERE
    followers = 4
    OR followers = 4999
GROUP BY -- * Se utiliza el GROUP BY para agrupar los resultados por una o más columnas.
    followers;



SELECT
    COUNT(*),
    followers
FROM
    users
WHERE
    followers BETWEEN 4500
    AND 4999
GROUP BY
    followers
ORDER BY -- * Se utiliza el ORDER BY para ordenar los resultados de una consulta SQL ASC/DESC.
    followers DESC;