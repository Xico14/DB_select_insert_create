create table if not exists Genres(
	genres_id SERIAL primary key,
	title VARCHAR(150) not null
);
create table if not exists Performers(
	perfomers_id SERIAL primary key,
	nickname VARCHAR(150) not null
);
create table if not exists GenresPerformers(
	id SERIAL primary key,
	genres_id integer references Genres(genres_id),
	perfomers_id integer references Performers(perfomers_id)
);
create table if not exists Albums(
	albums_id SERIAL primary key,
	albums_name VARCHAR(150) not null,
	year_of_release integer not null
);
create table if not exists PerformersAlbums(
	id SERIAL primary key,
	perfomers_id integer references Performers(perfomers_id),
	albums_id integer references Albums(albums_id)
);
create table if not exists Tracks(
	tracks_id SERIAL primary key,
	albums_id integer references Albums(albums_id),
	track_name VARCHAR(150) not null,
	duration TIME not null
);
create table if not exists Collections(
	collections_id SERIAL primary key,
	collection_name VARCHAR(150) not null,
	year_of_release integer not null
	
);
create table if not exists CollectionsTrack(
	id SERIAL primary key,
	collections_id integer references Collections(collections_id),
	tracks_id integer references Tracks(tracks_id)
);