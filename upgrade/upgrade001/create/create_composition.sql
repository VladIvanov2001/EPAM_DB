DEFINE SCHEMA_NAME = &&1
DEFINE DATA_TBS_NAME = &&2

CREATE TABLE SCHEMA_NAME.COMPOSITION 
(
  ID_COMPOSITION INT NOT NULL 
, DURATION_OF_COMPOSITION INT NOT NULL 
, COUNT_OF_LIKES INT NOT NULL 
, COUNT_OF_REPOSTS INT NOT NULL 
, COUNT_OF_LISTENING INT NOT NULL 
, RATING INT NOT NULL 
, GENRE VARCHAR2(20) NOT NULL 
, STYLE VARCHAR2(20) NOT NULL 
, DIRECTION VARCHAR2(20) NOT NULL 
, ID_ALBUM INT NOT NULL 
, CONSTRAINT COMPOSITION_PK PRIMARY KEY 
  (
    ID_COMPOSITION 
  )
  ENABLE 
)
TABLESPACE &&DATA_TBS_NAME;

COMMENT ON COLUMN COMPOSITION.RATING IS 'rating in app';

COMMENT ON COLUMN COMPOSITION.GENRE IS 'genre of music';

COMMENT ON COLUMN COMPOSITION.STYLE IS 'style of music';

COMMENT ON COLUMN COMPOSITION.DIRECTION IS 'direction in music';

COMMENT ON COLUMN COMPOSITION.ID_ALBUM IS 'for checking: is the compostion belongs to the album';


ALTER TABLE SCHEMA_NAME.Composition ADD CONSTRAINT fk_Composition_ID_Album FOREIGN KEY(ID_ALBUM)
REFERENCES SCHEMA_NAME.Album (ID_ALBUM);