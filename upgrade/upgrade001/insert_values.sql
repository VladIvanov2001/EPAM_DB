INSERT INTO EXDATA (FIRST_NAME, LAST_NAME, NICKNAME, EMAIL, PLAYLIST_NAME, PLAYLIST_TYPE, MUSIC_TYPE, COMPOSITION_NAME, LENGTH, OWNER_FIRST_NAME, OWNER_LAST_NAME, OWNER_NICKNAME, LIKES, COMPOSITION_LIKES, LISTEN, COMMENTS_TRACK, CURRENT_LISTENING, STOPPED_TIME)
            VALUES ('Elizaveta','Rapinchuk','Bug','Circle_Bug@gmail.com','Sport','System','Sport','Ten Walls - Sparta',3.44,'Ten','Walls','Monsieur','no',88,22000,'����� ��������� ���','Y',2.01);
INSERT INTO EXDATA (FIRST_NAME, LAST_NAME, NICKNAME, EMAIL, PLAYLIST_NAME, PLAYLIST_TYPE, MUSIC_TYPE, COMPOSITION_NAME, LENGTH, OWNER_FIRST_NAME, OWNER_LAST_NAME, OWNER_NICKNAME, LIKES, COMPOSITION_LIKES, LISTEN, COMMENTS_TRACK, CURRENT_LISTENING, STOPPED_TIME) VALUES 
('Elizaveta','Rapinchuk','Bug','Circle_Bug@gmail.com','Bamboo','User','Chill','Murda On They Mind (Tales From Mount Zion)',3.02,NULL,NULL,'DJ Bishop','yes',3306,540050,NULL,NULL,NULL);
INSERT INTO EXDATA (FIRST_NAME, LAST_NAME, NICKNAME, EMAIL, PLAYLIST_NAME, PLAYLIST_TYPE, MUSIC_TYPE, COMPOSITION_NAME, LENGTH, OWNER_FIRST_NAME, OWNER_LAST_NAME, OWNER_NICKNAME, LIKES, COMPOSITION_LIKES, LISTEN, COMMENTS_TRACK, CURRENT_LISTENING, STOPPED_TIME) VALUES 
('Elizaveta','Rapinchuk','Bug','Circle_Bug@gmail.com','Bamboo','User','Electronic','James Blake - Air Lack Thereof',4.09,'H?lder','Leal','Hotshot','no',4455,1433,NULL,NULL,NULL);
INSERT INTO EXDATA (FIRST_NAME, LAST_NAME, NICKNAME, EMAIL, PLAYLIST_NAME, PLAYLIST_TYPE, MUSIC_TYPE, COMPOSITION_NAME, LENGTH, OWNER_FIRST_NAME, OWNER_LAST_NAME, OWNER_NICKNAME, LIKES, COMPOSITION_LIKES, LISTEN, COMMENTS_TRACK, CURRENT_LISTENING, STOPPED_TIME) VALUES 
('Elizaveta','Rapinchuk','Bug','Circle_Bug@gmail.com','Bamboo','User','Electronic','Little Fish',2.13,'H?lder','Leal','Hotshot','yes',6587,8890,NULL,NULL,NULL);
INSERT INTO EXDATA (FIRST_NAME, LAST_NAME, NICKNAME, EMAIL, PLAYLIST_NAME, PLAYLIST_TYPE, MUSIC_TYPE, COMPOSITION_NAME, LENGTH, OWNER_FIRST_NAME, OWNER_LAST_NAME, OWNER_NICKNAME, LIKES, COMPOSITION_LIKES, LISTEN, COMMENTS_TRACK, CURRENT_LISTENING, STOPPED_TIME) VALUES 
('Elizaveta','Rapinchuk','Bug','Circle_Bug@gmail.com','Bamboo','User','Electronic','Jamie XX - Loud Places (feat. Romy)',4.43,'H?lder','Leal','Hotshot','no',2201,202023,NULL,NULL,NULL);


INSERT INTO USERS(FIRST_NAME, SECOND_NAME, EMAIL, LOGIN) SELECT FIRST_NAME, LAST_NAME, NICKNAME, EMAIL from EXDATA;

INSERT INTO ALBUM(COUNT_OF_LIKES, COUNT_OF_REPOSTS, COUNT_OF_LISTENING, RATING) 
       SELECT  dbms_random.value(1, 10), dbms_random.value(1, 10),dbms_random.value(1, 10),dbms_random.value(1, 10) from EXDATA;

INSERT INTO COMPOSITION(NAME_OF_SONG, DURATION_OF_COMPOSITION, COUNT_OF_LIKES, COUNT_OF_REPOSTS, COUNT_OF_LISTENING, RATING, GENRE, STYLE, DIRECTION, ID_ALBUM) 
       SELECT DBMS_RANDOM.STRING ('x', DBMS_RANDOM.VALUE (3,5), LENGTH, COMPOSITION_LIKES, dbms_random.value(1, 10), LISTEN, dbms_random.value(1, 10), MUSIC_TYPE, MUSIC_TYPE, MUSIC_TYPE, 1 FROM EXDATA;

INSERT INTO PLAYLIST(PLAYLIST_BY_USER, PLAYLIST_BY_SYSTEM, PRIVATE_PLAYLIST, PUBLIC_PLAYLIST) SELECT 'Y', 'N', 'N', 'N' from dual;
INSERT INTO PLAYLIST(PLAYLIST_BY_USER, PLAYLIST_BY_SYSTEM, PRIVATE_PLAYLIST, PUBLIC_PLAYLIST) SELECT 'N', 'Y', 'Y', 'Y' from dual;


INSERT INTO ALBUMS_REVIEW(ID_USER, ID_ALBUM, REVIEW) SELECT 1,1,'good' from dual;
INSERT INTO ALBUMS_REVIEW(ID_USER, ID_ALBUM, REVIEW) SELECT 3,3,'not bad' from dual;

INSERT INTO COMPOSITION_REVIEW(ID_USER, ID_COMPOSITION, REVIEW) SELECT dbms_random.value(1, 2), dbms_random.value(1, 2), COMMENTS_TRACK FROM EXDATA;

INSERT INTO GENRE(GENRE, RATING, ID_COMPOSITION) SELECT MUSIC_TYPE, 1, 1 from EXDATA;

INSERT INTO PLAYLIST_CONTAIN(ID_COMPOSITION, ID_PLAYLIST, ID_ALBUM) SELECT dbms_random.value(1, 3),dbms_random.value(1, 3),dbms_random.value(1, 3) from dual;
INSERT INTO PLAYLIST_CONTAIN(ID_COMPOSITION, ID_PLAYLIST, ID_ALBUM) SELECT dbms_random.value(1, 3),dbms_random.value(1, 3),dbms_random.value(1, 3) from dual;


INSERT INTO STORY_OF_LISTENING(ID_USER, ID_COMPOSITION, ID_ALBUM, DATE_OF_LISTENING) SELECT dbms_random.value(1, 3), dbms_random.value(1, 3), dbms_random.value(1, 3), sysdate - DBMS_RANDOM.VALUE (1, 18250) from dual;
INSERT INTO STORY_OF_LISTENING(ID_USER, ID_COMPOSITION, ID_ALBUM, DATE_OF_LISTENING) SELECT dbms_random.value(1, 3), dbms_random.value(1, 3), dbms_random.value(1, 3), sysdate - DBMS_RANDOM.VALUE (1, 18250) from dual;


INSERT INTO USER_PLAYLIST(ID_USER, ID_PLAYLIST) SELECT dbms_random.value(1, 3), dbms_random.value(1, 3) from dual;

INSERT INTO USER_STATE(ID_USER, ID_COMPOSITION, ID_ALBUM, CURRENT_COMPOSITION, CURRENT_PLAYLIST, STOPPING_TIME) select dbms_random.value(1, 2),dbms_random.value(1, 2),dbms_random.value(1, 2),DBMS_RANDOM.STRING ('x', DBMS_RANDOM.VALUE (3,5))
,CURRENT_LISTENING, STOPPED_TIME from EXDATA;