import psycopg2

username = 'username'
password = 'password'
database = 'dota_2'
host = 'localhost'
port = '5432'

query_1 = '''
SELECT characters.name AS name, COUNT(*) AS occurences
FROM game_session_character
         INNER JOIN characters on characters.id = game_session_character.character_id
GROUP BY name
ORDER BY occurences DESC;
'''
query_2 = '''
SELECT attributes.name, COUNT(*)
FROM characters
         INNER JOIN attributes on attributes.id = characters.main_attribute
GROUP BY attributes.name;
'''

query_3 = '''
SELECT attributes.name AS attribute, COUNT(*) as occurences
FROM game_session_character
         INNER JOIN characters on characters.id = game_session_character.character_id
         INNER JOIN attributes on attributes.id = characters.main_attribute
GROUP BY attributes.name
ORDER BY occurences DESC;
'''

conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)
with conn:
    cur = conn.cursor()

    print('Query 1:')
    cur.execute(query_1)
    for row in cur:
        print(row)

    print('\nQuery 2:')
    cur.execute(query_2)
    for row in cur:
        print(row)

    print('\nQuery 3:')
    cur.execute(query_3)
    for row in cur:
        print(row)
