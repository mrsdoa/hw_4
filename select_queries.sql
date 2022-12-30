/* 1 */
SELECT genre_id, count(singer_id) 
FROM tets.genresinger
group by genre_id
order by count(singer_id) DESC;

/* 2 */
select count(name) from tets.album
WHERE release_year BETWEEN 2019 AND 2020; 

/* 3 */
select album_id, AVG(lenght) from tets.song
group by album_id
order by album_id;

/* 4 updated */
select distinct s.name, a.release_year from tets.singer s
join tets.albumsinger al on s.singer_id = al.singer_id
join tets.album a on a.album_id = al.album_id
where a.release_year not in (select distinct a.release_year from tets.singer s
join tets.albumsinger al on s.singer_id = al.singer_id
join tets.album a on a.album_id = al.album_id where a.release_year = 2020); 

/* 5 */
select * from tets.singer s
join tets.albumsinger al on s.singer_id = al.singer_id
join tets.album a on a.album_id = al.album_id
join tets.song so on so.album_id = al.album_id
join tets.sborniksong sk on sk.song_id = so.song_id
join tets.sbornik sb on sk.sbornik_id = sb.sbornik_id
where s.name ilike '%Dabro%';

/* 6 */
select singer.genre_id, count(*) from album join singer on singer.singer_id = album.singer_id
join genre on singer.genre_id = genre.genre_id
group by singer.genre_id
having count(*) > 1
order by count(*) desc; 

/* 7 */
select name from song where song_id not in(select song_id from sbornik);

/* 8 */
/*select * from singer, song 
where song.lenght = (select MIN(lenght) from song);*/
select * from tets.singer s
join tets.albumsinger al on s.singer_id = al.singer_id
join tets.album a on a.album_id = al.album_id
join tets.song so on so.album_id = al.album_id
where so.lenght = (select MIN(tets.song.lenght) from tets.song);

/* 9 updated */
select al.name, count(so.name) from tets.album al
join tets.song so on al.album_id = so.album_id
group by al.name
having count(so.name) = (select count(so.name) from tets.album al
join tets.song so on al.album_id = so.album_id
group by al.name order by count(so.name) asc limit 1);
