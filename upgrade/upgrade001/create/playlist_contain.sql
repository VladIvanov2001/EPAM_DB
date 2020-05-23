DEFINE DATA_TBS_NAME = &&1
DEFINE CURS = '_DATA'

CREATE TABLE PLAYLIST_CONTAIN 
(
  ID_CONTAIN INT GENERATED ALWAYS AS IDENTITY INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOT NULL 
, ID_COMPOSITION INT NOT NULL 
, ID_PLAYLIST INT NOT NULL 
, ID_ALBUM INT NOT NULL 
, CONSTRAINT PLAYLIST_CONTAIN PRIMARY KEY 
  (
    ID_CONTAIN 
  )
  ENABLE 
)
TABLESPACE &&DATA_TBS_NAME&&CURS;

ALTER TABLE PLAYLIST_CONTAIN ADD CONSTRAINT fk_PLAYLIST_CONTAIN_ID_COMPOSITION FOREIGN KEY(ID_COMPOSITION)
REFERENCES COMPOSITION (ID_COMPOSITION);

ALTER TABLE PLAYLIST_CONTAIN ADD CONSTRAINT fk_PLAYLIST_CONTAIN_ID_PLAYLIST FOREIGN KEY(ID_PLAYLIST)
REFERENCES PLAYLIST (ID_PLAYLIST);

ALTER TABLE PLAYLIST_CONTAIN ADD CONSTRAINT fk_PLAYLIST_CONTAIN_ID_ALBUM FOREIGN KEY(ID_ALBUM)
REFERENCES ALBUM (ID_ALBUM);

COMMENT ON COLUMN PLAYLIST_CONTAIN.ID_CONTAIN IS 'primary key';

COMMENT ON COLUMN PLAYLIST_CONTAIN.ID_COMPOSITION IS 'foreign key from composition';

COMMENT ON COLUMN PLAYLIST_CONTAIN.ID_PLAYLIST IS 'foreign key from playlist';

COMMENT ON COLUMN PLAYLIST_CONTAIN.ID_ALBUM IS 'foreign key from album';