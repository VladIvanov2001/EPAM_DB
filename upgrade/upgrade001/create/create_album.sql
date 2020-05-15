DEFINE DATA_TBS_NAME = &&1
DEFINE CURS = '_DATA'

CREATE TABLE ALBUM 
(
  ID_ALBUM INT GENERATED ALWAYS AS IDENTITY INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOT NULL 
, COUNT_OF_LIKES INT NOT NULL 
, COUNT_OF_REPOSTS INT NOT NULL 
, COUNT_OF_LISTENING INT NOT NULL 
, RATING INT NOT NULL 
, CONSTRAINT ALBUM_PK PRIMARY KEY 
  (
    ID_ALBUM 
  )
  ENABLE 
)
TABLESPACE &&DATA_TBS_NAME&&CURS;


COMMENT ON COLUMN ALBUM.ID_ALBUM IS 'foreign key';

COMMENT ON COLUMN ALBUM.COUNT_OF_LIKES IS 'just count';

COMMENT ON COLUMN ALBUM.COUNT_OF_REPOSTS IS 'just count';

COMMENT ON COLUMN ALBUM.COUNT_OF_LISTENING IS 'just count';

COMMENT ON COLUMN ALBUM.RATING IS 'just a digit';