CREATE TABLE IF NOT EXISTS Genres
	genre_id SERIAL PRIMARY KEY,
	artist VARCHAR(40) NOT NULL 
);

CREATE TABLE IF NOT EXISTS Artist_genre (
	artist_genre_id SERIAL PRIMARY KEY,
	artist VARCHAR(40) NOT NULL REFERENCES Artists(artist_id),
	genre VARCHAR(40) NOT NULL REFERENCES Genres(genre_id)
);


CREATE TABLE IF NOT EXISTS Artists (
	artist_id SERIAL PRIMARY KEY,
	albums VARCHAR(40) NOT NULL,
	artist_name VARCHAR(40) NOT NULL,
	genres VARCHAR(40) NOT NULL REFERENCES Genres(genre_id)
);

CREATE TABLE IF NOT EXISTS Artist_album (
	artist_album_id SERIAL PRIMARY KEY,
	artist VARCHAR(40) NOT NULL REFERENCES Artists(artist_id),
	albums VARCHAR(40) NOT NULL REFERENCES Albums(album_id)
);

CREATE TABLE IF NOT EXISTS Album (
	album_id SERIAL PRIMARY KEY,
	album_name VARCHAR(40) NOT NULL,
	year_of_issue YEAR NOT NULL,
	artist VARCHAR(40) NOT NULL REFERENCES Artist(artist_id)
	track VARCHAR(40) NOT NULL REFERENCES Track(track_id)

CREATE TABLE IF NOT EXISTS Track (
	track_id SERIAL PRIMARY KEY,
	track_name VARCHAR(40) NOT NULL,
	album_name VARCHAR(40) NOT NULL,
	duration SECOND,
	collection VARCHAR(40) NOT NULL,
);

CREATE TABLE IF NOT EXISTS Track_list (
	track_list_id SERIAL PRIMARY KEY,
	track VARCHAR(40) NOT NULL REFERENCES Track(track_id),
	collection VARCHAR(40) NOT NULL REFERENCES Collection_track_list(collection_track_list_id)
);

CREATE TABLE IF NOT EXISTS Collection_track_list (
	collection_track_list_id SERIAL PRIMARY KEY,
	year_of_issue VARCHAR(40) NOT NULL,	
	track VARCHAR(40) NOT NULL REFERENCES Track(track_id) 
);
