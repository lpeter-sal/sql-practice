INSERT INTO referee (name, email, phone, password, role_id, balance, badge, status, signup_date )
VALUES
	( 'Luis Pedro Salvador Hernandez', 'pedro@prueba.com', '1122334455', '1234567', 3, -205, 'Grassroot', true, CURRENT_DATE ),
	( 'Bayron Torres', 'byron@prueba.com', '1122334455', '1234567', 3, 20, 'Regional', true, CURRENT_DATE ),
	( 'Armando Quiroz', 'armando@prueba.com', '1122334455', '1234567', 1, 100.5, 'National', true, CURRENT_DATE ),
	( 'Jose Daza', 'josedaza@prueba.com', '1122334455', '1234567', 1, -25.5, 'Grassroot', true, CURRENT_DATE ),
	( 'Alfredo Sandoval', 'alfredo@prueba.com', '1122334455', '1234567', 2, -205, 'No Register', false, CURRENT_DATE );
	
SELECT * FROM referee;