INSERT INTO balance_history (referee_id, match_id, amount, payment_type, note, created_at, authorized_by)
VALUES
	( 1, 28663, -2, 'debit', 'Pago pendiente de juego ARARAT @ Tadeh', CURRENT_DATE, 3),
	( 1, 28663, -7, 'debit', 'Pago pendiente de juego ARARAT @ Tadeh', CURRENT_DATE, 3),
	( 1, 28663, -8, 'debit', 'Pago pendiente de juego ARARAT @ Tadeh', CURRENT_DATE, 3),
	( 1, 28663, -8, 'debit', 'Pago pendiente de juego ARARAT @ Tadeh', CURRENT_DATE, 3);

SELECT * FROM balance_history;

-- * Cualquier otro concepto de pago 
( 1, -470, 'pending', 'Pago para viaje a Irlanda', CURRENT_DATE, 3)
( 1, -415, 'Pending', 'Macron Uniforms', CURRENT_DATE, 3)

-- * SACAR LA SUMA TOTAL DE CUANTO DEBE UN REFEREEE
SELECT SUM(amount), referee_id FROM balance_history
GROUP BY referee_id;

-- ** Table Structure **
-- * Table Name: balance_history 
-- * 1. ID - Primary Key - Unique Identifier for each payment
-- * 2. Referee ID - Foreign Key - Referee Identifier
-- * 3. Match ID - Foreign Key - Match Identifier
-- * 4. Amount - Amount of money
-- * 5. Payment Type (debit, credit) - Type of payment
-- * 6. Note - Description of the payment
-- * 7. Created At - Date of the payment
-- * 8. Authorized By - User who authorized the payment
