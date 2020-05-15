DEFINE DATA_TBS_NAME = &&1
DEFINE CURS = '_DATA'

--drop table DATA;

CREATE TABLE DATA ( 
  FIRST_NAME VARCHAR2(26),
  LAST_NAME VARCHAR2(126),
  NICKNAME VARCHAR2(126),
  EMAIL VARCHAR2(126),
  PLAYLIST_NAME VARCHAR2(126),
  PLAYLIST_TYPE VARCHAR2(126),
  MUSIC_TYPE VARCHAR2(126),
  COMPOSITION_NAME VARCHAR2(128),
  lENGTH FLOAT,
  OWNER_FIRST_NAME VARCHAR2(126),
  OWNER_LAST_NAME VARCHAR2(126),
  OWNER_NICKNAME VARCHAR2(126),
  LIKES VARCHAR2(5),
  COMPOSITION_LIKES INT,
  LISTEN FLOAT,
  COMMENTS_TRACK VARCHAR2(126),
  CURRENT_LISTENING VARCHAR2(126),
  STOPPED_TIME FLOAT
)
TABLESPACE &&DATA_TBS_NAME&&CURS;

--Row 10
INSERT INTO DATA (FIRST_NAME, LAST_NAME, NICKNAME, EMAIL, PLAYLIST_NAME, PLAYLIST_TYPE, MUSIC_TYPE, COMPOSITION_NAME, LENGTH, OWNER_FIRST_NAME, OWNER_LAST_NAME, OWNER_NICKNAME, LIKES, COMPOSITION_LIKES, LISTEN, COMMENTS_TRACK, CURRENT_LISTENING, STOPPED_TIME)
            VALUES ('Elizaveta','Rapinchuk','Bug','Circle_Bug@gmail.com','Sport','System','Sport','Ten Walls - Sparta',3.44,'Ten','Walls','Monsieur','no',88,22000,'����� ��������� ���','Y',2.01);
--Row 11
INSERT INTO DATA (FIRST_NAME, LAST_NAME, NICKNAME, EMAIL, PLAYLIST_NAME, PLAYLIST_TYPE, MUSIC_TYPE, COMPOSITION_NAME, LENGTH, OWNER_FIRST_NAME, OWNER_LAST_NAME, OWNER_NICKNAME, LIKES, COMPOSITION_LIKES, LISTEN, COMMENTS_TRACK, CURRENT_LISTENING, STOPPED_TIME) VALUES 
('Elizaveta','Rapinchuk','Bug','Circle_Bug@gmail.com','Bamboo','User','Chill','Murda On They Mind (Tales From Mount Zion)',3.02,NULL,NULL,'DJ Bishop','yes',3306,540050,NULL,NULL,NULL);
--Row 12
INSERT INTO DATA (FIRST_NAME, LAST_NAME, NICKNAME, EMAIL, PLAYLIST_NAME, PLAYLIST_TYPE, MUSIC_TYPE, COMPOSITION_NAME, LENGTH, OWNER_FIRST_NAME, OWNER_LAST_NAME, OWNER_NICKNAME, LIKES, COMPOSITION_LIKES, LISTEN, COMMENTS_TRACK, CURRENT_LISTENING, STOPPED_TIME) VALUES 
('Elizaveta','Rapinchuk','Bug','Circle_Bug@gmail.com','Bamboo','User','Electronic','James Blake - Air Lack Thereof',4.09,'H?lder','Leal','Hotshot','no',4455,1433,NULL,NULL,NULL);
--Row 13
INSERT INTO DATA (FIRST_NAME, LAST_NAME, NICKNAME, EMAIL, PLAYLIST_NAME, PLAYLIST_TYPE, MUSIC_TYPE, COMPOSITION_NAME, LENGTH, OWNER_FIRST_NAME, OWNER_LAST_NAME, OWNER_NICKNAME, LIKES, COMPOSITION_LIKES, LISTEN, COMMENTS_TRACK, CURRENT_LISTENING, STOPPED_TIME) VALUES 
('Elizaveta','Rapinchuk','Bug','Circle_Bug@gmail.com','Bamboo','User','Electronic','Little Fish',2.13,'H?lder','Leal','Hotshot','yes',6587,8890,NULL,NULL,NULL);
--Row 14
INSERT INTO DATA (FIRST_NAME, LAST_NAME, NICKNAME, EMAIL, PLAYLIST_NAME, PLAYLIST_TYPE, MUSIC_TYPE, COMPOSITION_NAME, LENGTH, OWNER_FIRST_NAME, OWNER_LAST_NAME, OWNER_NICKNAME, LIKES, COMPOSITION_LIKES, LISTEN, COMMENTS_TRACK, CURRENT_LISTENING, STOPPED_TIME) VALUES 
('Elizaveta','Rapinchuk','Bug','Circle_Bug@gmail.com','Bamboo','User','Electronic','Jamie XX - Loud Places (feat. Romy)',4.43,'H?lder','Leal','Hotshot','no',2201,202023,NULL,NULL,NULL);
