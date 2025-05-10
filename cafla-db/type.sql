
INSERT INTO "type" ( league_id, "level", fees, ref_position, created_at, updated_at )
VALUES
	( 1, '11v11', 8, 'Referee', CURRENT_DATE, CURRENT_DATE ),
	( 1, '11v11', 6, 'Assistant Referee', CURRENT_DATE, CURRENT_DATE ),
	( 1, '7v7', 6, 'Referee', CURRENT_DATE, CURRENT_DATE ),
	( 2, '2012-14', 5, 'Referee', CURRENT_DATE, CURRENT_DATE ),
	( 2, '2010-11', 6, 'Referee', CURRENT_DATE, CURRENT_DATE ),
	( 2, '2008-09', 7, 'Referee', CURRENT_DATE, CURRENT_DATE ),
	( 3, '2012-14', 4, 'Referee', CURRENT_DATE, CURRENT_DATE ),
	( 3, '2012-14', 2, 'Assistant Referee', CURRENT_DATE, CURRENT_DATE ),
	( 3, '2010-11', 5, 'Referee', CURRENT_DATE, CURRENT_DATE ),
	( 3, '2010-11', 3, 'Assistant Referee', CURRENT_DATE, CURRENT_DATE ),
	( 3, '2008-09', 6, 'Referee', CURRENT_DATE, CURRENT_DATE ),
	( 3, '2008-09', 3, 'Assistant Referee', CURRENT_DATE, CURRENT_DATE ),
	( 3, '2006-07', 7, 'Referee', CURRENT_DATE, CURRENT_DATE ),
	( 3, '2006-07', 4, 'Assistant Referee', CURRENT_DATE, CURRENT_DATE ),
	( 3, '2002-05', 8, 'Referee', CURRENT_DATE, CURRENT_DATE ),
	( 3, '2002-05', 4, 'Assistant Referee', CURRENT_DATE, CURRENT_DATE );
	
SELECT * FROM type;


-- * Falta meter data a las tablas REFEREE, REFEREE_MATCH, BALANCE_HISTORY Y NOTIFICATION_HISTORY.
