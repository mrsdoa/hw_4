/* 1 */
SELECT genre_id, count(singer_id) 
FROM hw.genresinger
group by genre_id
order by count(singer_id) DESC;

/* 2 */
select count(name) from hw.album
WHERE release_year BETWEEN 2019 AND 2020; 

/* 3 */
select album_id, AVG(lenght) from hw.song
group by album_id
order by album_id;

/* 4 */
SELECT singer.name FROM singer, album WHERE album.release_year != 2020
group by singer.name;

/* 5 */
select sbornik.name, singer.name from singer, sbornik where singer.name ilike '%Dabro%' ;

/* 6 */
select singer.genre_id, count(*) from album join singer on singer.singer_id = album.singer_id
join genre on singer.genre_id = genre.genre_id
group by singer.genre_id
having count(*) > 1
order by count(*) desc; /* не знаю как вывести название альбома, если добавить name в group by, всё ломается */

/* 7 */
select name from song where song_id not in(select song_id from sbornik);

/* 8 */
select singer.name, song.lenght from singer, song 
where song.lenght = (select MIN(lenght) from song);

/* 9 */
select album.name, song.album_id, count(*) from album inner join song on album.album_id = song.album_id
where song.album_id = (select min(song.album_id) from song)
group by song.album_id, album.name;
