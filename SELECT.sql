select track_name, duration from Tracks
where duration = (SELECT MAX(duration) FROM Tracks);

select track_name, duration from Tracks
where duration >= '00:03:05';

select collection_name, year_of_release from Collections
where year_of_release >= 2018 and year_of_release <= 2020;

select  nickname from Performers
where nickname not like '% %';

select
	track_name
from
	Tracks
where
	string_to_array(lower('my'), ' ') && array['my'];

select title, count(a.nickname) from genres g
left join GenresPerformers a2 on g.genres_id = a2.genres_id 
left join Performers a on a2.perfomers_id = a.perfomers_id
group by title 
order by count(a.nickname) desc;

select count(track_name) from tracks t
left join albums a on t.albums_id = a.albums_id
where year_of_release >= 2019 and year_of_release <= 2020;

select a.albums_name, avg(duration) from tracks t 
left join albums a on t.albums_id = a.albums_id
group by albums_name 
order by avg(duration);

select nickname from Performers p 
where nickname not in (select nickname from PerformersAlbums 
						left join PerformersAlbums a2 on p.perfomers_id = a2.perfomers_id
						left join albums a3 on a2.albums_id = a3.albums_id 
						where year_of_release >= 2020 and year_of_release < 2021);

select collection_name from collections c 
left join CollectionsTrack t on t.collections_id = c.collections_id 
left join tracks t2 on t.tracks_id = t2.tracks_id
left join albums a on t2.albums_id = a.albums_id
left join PerformersAlbums a2 on a.albums_id = a2.albums_id 
left join Performers a3 on a2.perfomers_id = a3.perfomers_id
where nickname like 'Ко%';