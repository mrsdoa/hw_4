INSERT INTO hw.genre ("name") VALUES('Rnb'),('Rock'),('Disco'),('Dance'),('Pop');
INSERT INTO hw.singer ("name") VALUES('NILETTO'),('Dabro'), ('Basta'), ('30 Seconds to Mars'), ('50 Cent'), ('Linkin Park'), ('Elvira T'), ('Viagra');
INSERT INTO hw.album ("name", release_year) VALUES('America', 2016), ('A Beautiful Lie', 2020), ('This Is War', 2018), ('Bulletproof', 2019), ('Forever King', 2021), ('The Lost Tape', 2020), ('Her Loss', 2018), ('Savage Mode', 2020);
INSERT INTO hw.song ("name", lenght, album_id) VALUES('Numb', 123, 2), ('In the End', 156, 1), ('Burn It Down', 184, 4), ('From the Inside', 99, 3), ('Сансара', 156, 5), ('Вечно молодой', 111, 6), ('Времени нет', 135, 7), ('The Kill', 176, 8), ('Attack', 141, 3), ('I know', 108, 2), ('I heard It Through the Grapevine', 99, 1), ('Всё решено', 117, 4),('Такси', 109, 5), ('У меня появился другой', 149, 6), ('Umbrealla', 106, 7);
INSERT INTO hw.sbornik ("name", release_year) VALUES('LOVE AUTUMN', 2018), ('HITS CULTES', 2021), ('70S ROCK DRIVE', 2018), ('REBEL: ALTERNATIVE AND INDIE ROCK', 2019), ('FOLK HOUSE BEATS', 2019), ('IBIZA TOP HITS', 2019), ('SPRING HOUSE PARTY', 2021), ('ALL OUT 80S', 2020); 

INSERT INTO hw.albumsinger (album_id, singer_id) VALUES(1, 8), (2, 7), (3, 6), (4, 5), (5, 4), (6, 3), (7, 2), (8, 1);
INSERT INTO hw.genresinger (genre_id, singer_id) VALUES(1, 8), (2, 6), (3, 5), (4, 2), (5, 7);
INSERT INTO hw.sborniksong (sbornik_id, song_id) VALUES(8, 15), (7, 13), (6, 11), (8, 9), (4, 7), (3, 5), (2, 3), (1, 1);

INSERT INTO hw.genresinger (genre_id, singer_id) VALUES(1, 5);