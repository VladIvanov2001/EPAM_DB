DEFINE DATA_TBS_NAME = &&1
DEFINE CURS = '_DATA'

CREATE TABLE PLAYLIST
(
  ID_PLAYLIST INT GENERATED ALWAYS AS IDENTITY INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOT NULL 
, INCLUDING_ALBUMS VARCHAR2(20) 
, INCLUDING_COMPOSITIONS VARCHAR2(20) NOT NULL 
, PLAYLIST_BY_USER CHAR(1) 
, PLAYLIST_BY_SYSTEM CHAR(1) 
, PRIVATE_PLAYLIST CHAR(1) 
, PUBLIC_PLAYLIST CHAR(1) 
, CONSTRAINT PLAYLIST_PK PRIMARY KEY 
  (
    ID_PLAYLIST 
  )
  ENABLE 
)
TABLESPACE &&DATA_TBS_NAME&&CURS;

CREATE UNIQUE INDEX PLAYLIST_ID_PLAYLIST ON PLAYLIST (PLAYLIST_ID_PLAYLIST ASC);

COMMENT ON COLUMN PLAYLIST.ID_PLAYLIST IS 'primary key';

COMMENT ON COLUMN PLAYLIST.PLAYLIST_BY_USER IS 'boolean type';

COMMENT ON COLUMN PLAYLIST.PLAYLIST_BY_SYSTEM IS 'boolean type';

COMMENT ON COLUMN PLAYLIST.PRIVATE_PLAYLIST IS 'boolean type';

COMMENT ON COLUMN PLAYLIST.PUBLIC_PLAYLIST IS 'boolean type';