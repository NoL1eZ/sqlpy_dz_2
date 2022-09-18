CREATE TABLE IF NOT EXISTS Genres (
	genre_id SERIAL PRIMARY KEY, 
	genre_name VARCHAR(40) NOT NULL  
);

CREATE TABLE IF NOT EXISTS Artist (
	artist_id SERIAL PRIMARY KEY,
	artist_name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS Artist_genre (
	artist INT NOT NULL REFERENCES Artist(artist_id),
	genre INT NOT NULL REFERENCES Genres(genre_id)
);

CREATE TABLE IF NOT EXISTS Album (
	album_id SERIAL PRIMARY KEY,
	album_name VARCHAR(40) NOT NULL,
	year_of_issue INT NOT NULL
);

CREATE TABLE IF NOT EXISTS Artist_album (
	artist INT NOT NULL REFERENCES Artist(artist_id),
	album INT NOT NULL REFERENCES Album(album_id)
);

CREATE TABLE IF NOT EXISTS Track (
	track_id SERIAL PRIMARY KEY,
	track_name VARCHAR(40) NOT NULL,
	duration INT NOT NULL,
	album_id int REFERENCES Album(album_id)
);

CREATE TABLE IF NOT EXISTS Collection_track_list (
	collection_track_list_id SERIAL PRIMARY KEY,
	collection_name VARCHAR(40) NOT NULL,
	year_of_issue INT NOT NULL
);

CREATE TABLE IF NOT EXISTS Track_list (
	track INT NOT NULL REFERENCES Track(track_id),
	collection INT NOT NULL REFERENCES Collection_track_list(collection_track_list_id)
);
