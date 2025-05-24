INSERT INTO role ( name, created_at)
VALUES
	('Administrador', CURRENT_DATE),
	('Editor', CURRENT_DATE),
	('User', CURRENT_DATE);
	
	
SELECT * FROM role;


-- * Table Structure
-- * Table Name: role
-- * 1. ID - Primary Key - Unique Identifier for each role
-- * 2. Name - Name of the role (Admin, Editor, User, etc.)
-- * 3. Created At - Date of creation of the role
