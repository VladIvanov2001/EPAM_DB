DEFINE DATA_TBS_NAME = &&1

CREATE TABLE ALBUM 
(
  ID_ALBUM INT NOT NULL 
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
TABLESPACE &&DATA_TBS_NAME;