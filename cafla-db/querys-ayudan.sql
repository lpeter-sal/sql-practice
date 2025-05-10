SELECT * FROM referee_matches;


-- * Crear la vista con el nombre, el level y los fees aportar, la fecha asignada, status del partido y si pago
-- * Se usa el siguiente inner join.
SELECT c."name", b."level", b.fees, a.assigned_date, a.status, a.is_paid FROM referee_matches a
inner join type b on a.type_id = b.id
inner join referee c on a.referee_id = c.id
WHERE a.is_paid is true AND a.status = 'Completed';




-- * Crear la vista de balance total de un referee y el nombre del referee.
SELECT SUM(fees), name FROM (
SELECT c."name", b."level", b.fees, a.assigned_date, a.status, a.is_paid FROM referee_matches a
inner join type b on a.type_id = b.id
inner join referee c on a.referee_id = c.id
WHERE a.is_paid is true AND a.status = 'Completed'
) as total
GROUP BY name;
 
 
 
 SELECT * FROM referee;
 
 SELECT * FROM "type";




 -- * SACAR LA SUMA TOTAL DE CUANTO DEBE UN REFEREEE
SELECT SUM(amount), referee_id FROM rbalance_history
GROUP BY referee_id;

-- * Actualizar el balance del referee basandose en la suma de 
-- * la tabla balance_history y el id del referee.
update referee
set balance = subquery.balance 
FROM (
 		SELECT SUM(amount) as balance, referee_id FROM rbalance_history
		GROUP BY referee_id
	) as subquery
where id = subquery.referee_id;