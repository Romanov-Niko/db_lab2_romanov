INSERT INTO game_sessions(id)
VALUES (1),
       (2),
       (3),
       (4),
       (5);

INSERT INTO attributes(id, name)
VALUES (1, 'Strength'),
       (2, 'Agility'),
       (3, 'Intelligence');

INSERT INTO roles(id, name)
VALUES (1, 'Carry'),
       (2, 'Support'),
       (3, 'Nuker'),
       (4, 'Pusher'),
       (5, 'Initiator'),
       (6, 'Escaper'),
       (7, 'Disabler');

INSERT INTO characters(id, name, intelligence, strength, agility, main_attribute)
VALUES (1, 'Abaddon', 18, 23, 23, 1),
       (2, 'Alchemist', 25, 22, 25, 1),
       (3, 'Luna', 23, 21, 18, 2),
       (4, 'Medusa', 23, 17, 22, 2),
       (5, 'Puck', 23, 17, 22, 3),
       (6, 'Pugna', 24, 19, 24, 3);

INSERT INTO game_session_character(game_session_id, character_id)
VALUES (1, 1),
       (1, 3),
       (1, 5),
       (1, 6),
       (2, 1),
       (2, 2),
       (2, 4),
       (2, 6),
       (3, 1),
       (3, 3),
       (3, 4),
       (3, 5),
       (4, 1),
       (4, 5);

INSERT INTO character_role(character_id, role_id)
VALUES (1, 1),
       (1, 3),
       (1, 4),
       (1, 5),
       (2, 1),
       (2, 4),
       (2, 5),
       (2, 6),
       (3, 1),
       (3, 3),
       (4, 1),
       (4, 3),
       (4, 6),
       (5, 2),
       (5, 3),
       (5, 5),
       (5, 6),
       (6, 2),
       (6, 3),
       (6, 4);