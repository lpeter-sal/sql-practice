
INSERT INTO referee_matches ( id, referee_id, type_id, assigned_date, status, is_paid )
VALUES
 (28663, 1, 1, '2025-05-09', 'Completed', true ),
 (28664, 1, 2, '2025-05-09', 'Completed', true ),
 (28665, 1, 1, '2025-05-09', 'Completed', true ),
 (28666, 1, 1, '2025-05-09', 'Completed', true ),
 (28667, 1, 2, '2025-05-09', 'Pending', true ),
 (28668, 1, 2, '2025-05-09', 'Pending', true ),
 (28669, 1, 6, '2025-05-09', 'Completed', true ),
 (28670, 1, 8, '2025-05-09', 'Completed', true ),
 (28671, 1, 11, '2025-05-09', 'Pending', true ),
 (28672, 1, 10, '2025-05-09', 'Pending', true );

 SELECT * FROM referee_matches;

-- * Table Structure
-- * Table Name: referee_matches
-- * 1. Match ID - Foreign Key - Match Identifier  *** VIEW ***
-- * 2. Game Date - Date when the referee was assigned to the match *** VIEW *** TOGETHER WITH GAME TIME ***
-- * 3. Game Time - Time of the match *** VIEW *** TOGETHER WITH GAME DATE ***
-- * 4. Assigned Date - Date when the referee was assigned to the match *** VIEW *** NO NEED YET 
-- * 5. Referee Accepted Date - Date when the referee accepted the match *** VIEW *** NO NEED YET 
-- * 6. Location - Location of the match *** VIEW *** TOGETHER WITH GAME ADDRESS ***
-- * 7. Game Address - Address of the match *** VIEW *** TOGETHER WITH LOCATION ***
-- * 8. Field - Field of the match *** VIEW *** TOGETHER WITH GAME ADDRESS ***
-- * 9. Referee ID - Foreign Key - Referee Identifier
-- * 10. Match Type ID - Foreign Key - Match Type Identifier *** VIEW *** 
-- * 11. Status - Status of the match (Completed, Pending, Cancel, Forfit). *** VIEW ***
-- * 12. Is Paid - Indicates if the referee has been paid for the match *** VIEW ***
-- * 13. Notes - Notes about the match *** VIEW ***
-- * Slots - Slots of the match *** VIEW ***

-- ! CODITION: MATCHES NOT BE ASSIGNED MORE THAN 3 REFEREES (REFEREE, AR1, AR2).