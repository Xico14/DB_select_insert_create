insert into Genres(title) 
values('Хорор-панк');
insert into Genres(title) 
values('Реп');
insert into Genres(title) 
values('Поп');

insert into Performers(nickname)
values('Король и шут');
insert into Performers(nickname)
values('Гуф');
insert into Performers(nickname)
values('Баста');
insert into Performers(nickname)
values('Басков');

insert into Albums(albums_name, year_of_release)
values('Альбом1', 2001);
insert into Albums(albums_name, year_of_release)
values('Альбом2', 2018);
insert into Albums(albums_name, year_of_release)
values ('Альбом3', 2020);

insert into Tracks(albums_id, track_name, duration)
values(1, 'my_трек1', '00:03:12');
insert into Tracks(albums_id, track_name, duration)
values(1, 'трек2', '00:02:11');
insert into Tracks(albums_id, track_name, duration)
values(2, 'трек3_my', '00:01:55');
insert into Tracks(albums_id, track_name, duration)
values(2, 'трек4', '00:04:30');
insert into Tracks(albums_id, track_name, duration)
values(3, 'my трек5', '00:06:55');
insert into Tracks(albums_id, track_name, duration)
values(3, 'трек6 my', '00:04:33');

insert into Collections(collection_name, year_of_release)
values('сборник1', 2007);
insert into Collections(collection_name, year_of_release)
values('сборник2', 2000);
insert into Collections(collection_name, year_of_release)
values('сборник3', 2018);
insert into Collections(collection_name, year_of_release)
values('сборник4', 2020);

insert into GenresPerformers(genres_id, perfomers_id)
values(1, 1);
insert into GenresPerformers(genres_id, perfomers_id)
values(2, 2);
insert into GenresPerformers(genres_id, perfomers_id)
values(2, 3);
insert into GenresPerformers(genres_id, perfomers_id)
values(3, 4);

insert into PerformersAlbums(perfomers_id, albums_id)
values(1, 1);
insert into PerformersAlbums(perfomers_id, albums_id)
values(2, 2);
insert into PerformersAlbums(perfomers_id, albums_id)
values(3, 2);
insert into PerformersAlbums(perfomers_id, albums_id)
values(4, 3);

insert into CollectionsTrack(collections_id, tracks_id)
values(1, 1);
insert into CollectionsTrack(collections_id, tracks_id)
values(1, 2);
insert into CollectionsTrack(collections_id, tracks_id)
values(2, 3);
insert into CollectionsTrack(collections_id, tracks_id)
values(2, 4);
insert into CollectionsTrack(collections_id, tracks_id)
values(3, 5);
insert into CollectionsTrack(collections_id, tracks_id)
values(4, 6);
