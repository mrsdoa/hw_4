/* 1 */
SELECT genre_id, count(singer_id) 
FROM hw.genresinger
group by genre_id;

/* 2 */
select count(name) from hw.album
WHERE release_year BETWEEN 2019 AND 2020; 

/* 3 */
select AVG(lenght), album_id from hw.song
group by album_id;

/* 4 */
SELECT hw.singer.name, hw.album.name, hw.album.release_year FROM hw.singer, hw.album WHERE hw.album.release_year != 2020;

/* 5 */
select hw.singer.name, hw.sbornik.name from hw.singer, hw.sbornik where hw.singer.name ilike '%Dabro%' ;

/* 6 */
SELECT album.name, singer.genre_id, count(singer.genre_id)  FROM album JOIN singer ON singer.singer_id = album.singer_id
JOIN genre ON singer.genre_id = genre.genre_id
GROUP BY singer.genre_id, album.name
HAVING COUNT (singer.genre_id) > 1
ORDER BY singer.genre_id DESC; ; /* что-то не так, .. */

/* 7 */
select name from song where song_id not in(select song_id from sbornik);

/* 8 */
select * from singer, song 
where song.lenght = (select MIN(lenght) from song);

/* 9 */
select album.name, count(song.album_id) from album inner join song on album.album_id = song.album_id
group by album.name;
