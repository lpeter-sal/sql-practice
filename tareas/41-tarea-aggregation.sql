
-- 1. Cuantos usuarios tenemos con cuentas @google.com
-- Tip: count, like 🆗✅✅✅
SELECT
    COUNT(*)
FROM
    users
WHERE
    email LIKE '%@google.com';


-- 2. De qué países son los usuarios con cuentas de @google.com
-- Tip: distinct 🆗✅✅✅
SELECT
    DISTINCT country
FROM
    users
WHERE
    email LIKE '%@google.com';


-- 3. Cuantos usuarios hay por país (country)
-- Tip: Group by 🆗✅✅✅
SELECT
    COUNT(*) as usuarios_country,
    country
FROM
    users
GROUP BY
    country;


-- 4. Listado de direcciones IP de todos los usuarios de Iceland
-- Campos requeridos first_name, last_name, country, last_connection
-- Tip: Distinct 🆗✅✅✅
SELECT
    first_name,
    last_name,
    country,
    last_connection
FROM
    users
WHERE
    country = 'Iceland';



-- 5. Cuantos de esos usuarios (query anterior) tiene dirección IP
-- que incia en 112.XXX.XXX.XXX 🆗✅✅✅
SELECT
    COUNT(*)
FROM
    users
WHERE
    country = 'Iceland' AND last_connection like '112%';
    
    
-- 6. Listado de usuarios de Iceland, tienen dirección IP
-- que inicia en 112 ó 28 ó 188
-- Tip: Agrupar condiciones entre paréntesis 🆗✅✅✅
SELECT
    *
FROM
    users
WHERE
    country = 'Iceland'
    AND (
        last_connection like '112%'
        OR last_connection like '28%'
        OR last_connection like '188%'
    );
-- 7. Ordene el resultado anterior, por apellido (last_name) ascendente
-- y luego el first_name ascendentemente también 🆗✅✅✅
SELECT
    *
FROM
    users
WHERE
    country = 'Iceland'
    AND (
        last_connection like '112%'
        OR last_connection like '28%'
        OR last_connection like '188%'
    )
ORDER BY
    last_name ASC,
    first_name ASC;


-- 8. Listado de personas cuyo país está en este listado
-- ('Mexico', 'Honduras', 'Costa Rica')
-- Ordenar los resultados de por País asc, Primer nombre asc, apellido asc
-- Tip: Investigar IN 🆗✅✅✅
-- Tip2: Ver Operadores de Comparación en la hoja de atajos (primera página)
SELECT
    *
FROM
    users
WHERE
    country IN ('Mexico', 'Honduras', 'Costa Rica')
ORDER BY
    COUNTRY ASC,
    FIRST_NAME ASC,
    last_name ASC;


-- 9. Del query anterior, cuente cuántas personas hay por país
-- Ordene los resultados por País asc 🆗✅✅✅
SELECT
    COUNT(*) as total,
    COUNTRY
FROM
    users
WHERE
    country IN ('Mexico', 'Honduras', 'Costa Rica')
GROUP BY
    country
ORDER BY
    country ASC;
