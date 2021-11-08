--Column количество взятия персонажа в играх
SELECT characters.name AS name, COUNT(*) AS occurences
FROM game_session_character
         INNER JOIN characters on characters.id = game_session_character.character_id
GROUP BY name
ORDER BY occurences DESC;

--Circle количество персонажей по аттрибуту
SELECT attributes.name, COUNT(*)
FROM characters
         INNER JOIN attributes on attributes.id = characters.main_attribute
GROUP BY attributes.name;

--Function частота пика от аттрибута
SELECT attributes.name AS attribute, COUNT(*) as occurences
FROM game_session_character
         INNER JOIN characters on characters.id = game_session_character.character_id
         INNER JOIN attributes on attributes.id = characters.main_attribute
GROUP BY attributes.name
ORDER BY occurences DESC;
