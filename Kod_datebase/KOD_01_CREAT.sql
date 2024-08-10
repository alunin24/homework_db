CREATE DATABASE musical;

CREATE TABLE IF NOT EXISTS genre(
    id SERIAL PRIMARY KEY,
    title VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS artist(
    id SERIAL PRIMARY KEY,
    name_art VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS genre_artist(
    genre_id INT REFERENCES genre(id),
    artist_id INT REFERENCES artist(id),
    PRIMARY KEY(genre_id, artist_id)
);

CREATE TABLE IF NOT EXISTS album(
    id SERIAL PRIMARY KEY,
    title_al VARCHAR(60) NOT NULL,
    year INT
);

CREATE TABLE IF NOT EXISTS album_artist(
    album_id INT REFERENCES album(id),
    artist_id INT REFERENCES artist(id),
    PRIMARY KEY(album_id, artist_id)
);

CREATE TABLE IF NOT EXISTS song(
    id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
	duration time NOT NULL,
    song_id INT NOT NULL REFERENCES album(id)
);

CREATE TABLE IF NOT EXISTS collection(
    id SERIAL PRIMARY KEY,
    title VARCHAR(60) NOT NULL,
    year INT
);

CREATE TABLE IF NOT EXISTS collection_song(
    collection_id INT REFERENCES collection(id),
    song_id INT REFERENCES song(id),
    PRIMARY KEY(collection_id, song_id)
);