-- Задание 1 
-- Заполнение БД

INSERT INTO genre(title)
VALUES ('Поп'), ('Рок'), ('Шансон');

INSERT INTO artist(name_art)
VALUES ('Zivert'), ('Виктор Цой'), ('Михаил Круг'), ('Дима Билан');

INSERT INTO genre_artist(genre_id, artist_id)
VALUES (1, 1), (2, 2), (3, 3), (1, 4);

INSERT INTO album(title_al, year)
VALUES ('Сияй', 2018), ('Группа крови', 1988), ('Жиган - лимон', 1994), ('Перезагрузка', 2019);

INSERT INTO album_artist(album_id, artist_id)
VALUES (1, 1), (2, 2), (3, 3), (4, 4);

INSERT INTO song(name, duration, song_id)
VALUES ('Сияй', '00:03:24', 1), ('Группа крови', '00:04:46', 2), ('Фраер', '00:02:59', 3), 
       ('Медляк', '00:01:54', 1), ('Война', '00:04:05', 2), ('Мой свет', '00:03:01', 4);

INSERT INTO collection(title, year)
VALUES ('FM - Hit', 2019), ('Лучшие песни русского рока', 2010), ('Золотая 20-ка шансона', 2016),
		('Top - 100', 2020);

INSERT INTO collection_song(song_id, collection_id)
VALUES (1, 1), (2, 2), (3, 3), (4, 1), (5, 2), (6, 4);