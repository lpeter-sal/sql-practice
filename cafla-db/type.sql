

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


-- * Table Structure
-- * Table Name: match_type
-- * 1. ID - Primary Key - Unique Identifier for each type
-- * 2. League ID - Foreign Key - League Identifier
-- * 3. Division - Division of the league (e.g., Premier, Championship, etc.)
-- * 3. Level - Level of the game (11v11, 7v7, etc.)
-- * 4. Fees - Fees for the game
-- * 5. Referee Position - Position of the referee (Referee, Assistant Referee, etc.)
-- * 6. Created At - Date of creation of the type
-- * 7. Updated At - Date of last update of the type


