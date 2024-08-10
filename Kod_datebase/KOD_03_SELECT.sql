-- Задание 2 
-- Название и продолжительность самого длительного трека.
SELECT name, duration 
	FROM song
WHERE duration = (
	SELECT MAX(duration) 
	FROM song
); 

-- Название треков, продолжительность которых не менее 3,5 минут.
SELECT name, duration FROM song
WHERE duration >= '00:03:30'
ORDER BY duration DESC;

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT title, year
	FROM collection
WHERE year BETWEEN 2018 AND 2020
ORDER BY year DESC;

-- Исполнители, чьё имя состоит из одного слова.
SELECT 	name
	FROM artist
WHERE name NOT LIKE '% %'
ORDER BY name;

-- Название треков, которые содержат слово «мой» или «my».
SELECT name 
	FROM song
WHERE name LIKE '%мой%' OR name LIKE '%my%';

-- Задание 3 
-- Количество исполнителей в каждом жанре.
SELECT g.title, COUNT(*) AS "Количество исполнителей"
FROM genre g
JOIN genre_artist ga
ON g.id = ga.genre_id
GROUP BY title;

-- Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT COUNT(*) AS "Количество треков"
FROM song s
JOIN album a
ON s.song_id = a.id
WHERE year BETWEEN 2018 AND 2020;

-- Средняя продолжительность треков по каждому альбому.
SELECT title, AVG(duration) AS "Средняя продолжительность"
FROM  album a
JOIN song s
ON a.id = s.song_id
GROUP BY title
ORDER BY "Средняя продолжительность";

-- Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT name 
FROM artist a
JOIN album_artist aa
ON a.id = aa.artist_id
JOIN album al
ON aa.artist_id = al.id
WHERE year != 2020;

-- Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT DISTINCT (title)
FROM collection c
JOIN collection_song cs
ON c.id = cs.collection_id
JOIN song s
ON cs.song_id = s.id
JOIN album al
ON s.song_id = al.id
JOIN album_artist aa
ON al.id = aa.album_id
JOIN artist ar
ON aa.artist_id = ar.id
WHERE name_art = 'Zivert';