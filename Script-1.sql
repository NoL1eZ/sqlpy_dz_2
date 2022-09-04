CREATE TABLE IF NOT EXISTS Genre_list (
	genre_list_id SERIAL PRIMARY KEY,
	genre VARCHAR(40) NOT NULL REFERENCES Genre(genre_id)
);

CREATE TABLE IF NOT EXISTS Genre (
	genre_id SERIAL PRIMARY KEY,
	artist VARCHAR(40) NOT NULL REFERENCES Artist(artist_id)
);

CREATE TABLE IF NOT EXISTS Artist_list (
	artist_list_id SERIAL PRIMARY KEY,
	artist VARCHAR(40) NOT NULL REFERENCES Artist(artist_id)
);

CREATE TABLE IF NOT EXISTS Artist (
	artist_id SERIAL PRIMARY KEY,
	artist_name VARCHAR(40) NOT NULL,
	artist_album_list VARCHAR(40) NOT NULL REFERENCES Artist_album_list(artist_album_list_id),
	artist_genre_list VARCHAR(40) NOT NULL REFERENCES Artist_genre_list(artist_genre_ list_id)
);

CREATE TABLE IF NOT EXISTS Artist_album_list (
	artist_album_list_id SERIAL PRIMARY KEY,
	album VARCHAR(40) NOT NULL REFERENCES Album(album_id)
);

CREATE TABLE IF NOT EXISTS Artist_genre_list (
	artist_genre_list_id SERIAL PRIMARY KEY,
	genre VARCHAR(40) NOT NULL REFERENCES Genre(genre_id)
);

CREATE TABLE IF NOT EXISTS Album (
	album_id SERIAL PRIMARY KEY,
	album_name VARCHAR(40) NOT NULL,
	year_of_issue YEAR NOT NULL,
	artist VARCHAR(40) NOT NULL REFERENCES Artist(artist_id)
	track_list VARCHAR(40) NOT NULL REFERENCES Track_list(track_list_id)
);

CREATE TABLE IF NOT EXISTS Track_list (
	track_list_id SERIAL PRIMARY KEY,
	track VARCHAR(40) NOT NULL REFERENCES Track(track_id)
);

CREATE TABLE IF NOT EXISTS Track (
	track_id SERIAL PRIMARY KEY,
	track_name VARCHAR(40) NOT NULL,
	duration SECOND 
	album VARCHAR(40) NOT NULL REFERENCES Album(album_id)
);

CREATE TABLE IF NOT EXISTS Track_collection (
	collection_track_list_id SERIAL PRIMARY KEY,
	year_of_issue VARCHAR(40) NOT NULL,	
	track_list VARCHAR(40) NOT NULL REFERENCES Collection_track_list(collection_track_list_id)
);

CREATE TABLE IF NOT EXISTS Collection_track_list (
	collection_track_list_id SERIAL PRIMARY KEY,
	track VARCHAR(40) NOT NULL REFERENCES Track(track_id)
);