INSERT INTO referee (name, email, phone, password, role_id, balance, badge, status, signup_date )
VALUES
	( 'Luis Pedro Salvador Hernandez', 'pedro@prueba.com', '1122334455', '1234567', 3, -205, 'Grassroot', true, CURRENT_DATE ),
	( 'Bayron Torres', 'byron@prueba.com', '1122334455', '1234567', 3, 20, 'Regional', true, CURRENT_DATE ),
	( 'Armando Quiroz', 'armando@prueba.com', '1122334455', '1234567', 1, 100.5, 'National', true, CURRENT_DATE ),
	( 'Jose Daza', 'josedaza@prueba.com', '1122334455', '1234567', 1, -25.5, 'Grassroot', true, CURRENT_DATE ),
	( 'Alfredo Sandoval', 'alfredo@prueba.com', '1122334455', '1234567', 2, -205, 'No Register', false, CURRENT_DATE );
	
SELECT * FROM referee;


-- * Table Structure
-- * Table Name: referee.
-- * 1. Referee ID - Primary Key - Unique Identifier for each referee.
-- * 2. First Name - Name of the referee.
-- * 3. Last Name - Last name of the referee.
-- * 4. Address - Address of the referee.
-- * 5. Date of Birth - Date of birth of the referee.
-- * 6. Email - Email of the referee.
-- * 7. Phone - Phone number of the referee.
-- * 8. Password - Password of the referee.
-- * 9. Role ID - Foreign Key - Role Identifier (Admin, Referee, etc.).
-- * 10. Balance - Current balance of the referee.
-- * 11. Badge - Badge of the referee (No Register, Grassroot, Regional, National, etc.).
-- * 12. CalSouth Number - Unique number assigned by CalSouth.
-- * 13. Status - Status of the referee (active/inactive).
-- * 14. Gender - Gender of the referee.
-- * 15. Profile Picture - URL of the referee's profile picture.
-- * 16. Emergency Contact Name - Name of the emergency contact.
-- * 17. Emergency Contact Phone - Phone number of the emergency contact.
-- * 18. Emergency Contact Relationship - Relationship of the emergency contact.
-- * 19. Signup Date - Date when the referee signed up.
-- * 20. Updated At - Date of last update of the referee.
