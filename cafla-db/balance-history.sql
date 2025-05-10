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