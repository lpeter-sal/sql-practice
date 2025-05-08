

-- ¿Cuál es el idioma (y código del idioma) oficial más hablado por diferentes países en Europa? aleman


select COUNT(*) as total, b.code, b."name" from countrylanguage a
inner join language b on a.languagecode = b.code
WHERE (a.isofficial = true) AND ( a.countrycode IN ( select code from country WHERE continent = 5 ) )
GROUP BY b."name", b.code
ORDER BY count(*) DESC
LIMIT 1;



select * from continent;

select * from countrylanguage;

Select * from "language";




-- Listado de todos los países cuyo idioma oficial es el más hablado de Europa 
-- (no hacer subquery, tomar el código anterior)
SELECT * FROM country a
inner join countrylanguage b on a.code = b.countrycode
where a.continent = 5 and b.isofficial = true and b.languagecode = 135;


