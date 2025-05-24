INSERT INTO league ( name, is_active, created_at)
VALUES
	('LAMSL', TRUE, CURRENT_DATE ),
	('CSL 1', TRUE, CURRENT_DATE ),
	('CSL 3', TRUE, CURRENT_DATE );
	
SELECT * FROM league;


-- * Table Structure
-- * Table Name: league
-- * 1. League ID - Primary Key - Unique Identifier for each league
-- * 2. Name - Name of the league
-- * 3. Is Active - Status of the league (active/inactive)
-- * 4. Created At - Date of creation of the league
-- * 5. Updated At - Date of last update of the league
