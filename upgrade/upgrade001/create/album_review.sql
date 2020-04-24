DEFINE SCHEMA_NAME = &&1
DEFINE DATA_TBS_NAME = &&2

CREATE TABLE &&SCHEMA_NAME.ALBUMS_REVIEW 
(
  ID_REVIEW INT NOT NULL 
, ID_USER INT NOT NULL 
, ID_ALBUM INT NOT NULL 
, REVIEW VARCHAR2(20) NOT NULL 
, CONSTRAINT ALBUMS_REVIEW_PK PRIMARY KEY 
  (
    ID_REVIEW 
  )
  ENABLE 
)
TABLESPACE &&DATA_TBS_NAME;

ALTER TABLE &&SCHEMA_NAME.ALBUMS_REVIEW ADD CONSTRAINT fk_Albums_review_ID_User FOREIGN KEY(ID_USER)
REFERENCES &&SCHEMA_NAME.Users (ID_User);

ALTER TABLE &&SCHEMA_NAME.ALBUMS_REVIEW ADD CONSTRAINT fk_Album_review_ID_Album FOREIGN KEY(ID_Album)
REFERENCES &&SCHEMA_NAME.Composition (ID_Composition);