DEFINE DATA_TBS_NAME = &&1
DEFINE CURS = '_DATA'

CREATE TABLE ALBUMS_REVIEW 
(
  ID_REVIEW INT GENERATED ALWAYS AS IDENTITY INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOT NULL 
, ID_USER INT NOT NULL 
, ID_ALBUM INT NOT NULL 
, REVIEW VARCHAR2(20) NOT NULL 
, CONSTRAINT ALBUMS_REVIEW_PK PRIMARY KEY 
  (
    ID_REVIEW 
  )
  ENABLE 
)
TABLESPACE &&DATA_TBS_NAME&&CURS;

ALTER TABLE ALBUMS_REVIEW ADD CONSTRAINT fk_ALBUMS_REVIEW_ID_USER FOREIGN KEY(ID_USER)
REFERENCES USERS (ID_USER);

ALTER TABLE ALBUMS_REVIEW ADD CONSTRAINT fk_ALBUMS_REVIEW_ID_ALBUM FOREIGN KEY(ID_ALBUM)
REFERENCES COMPOSITION (ID_ALBUM);

CREATE UNIQUE INDEX ALBUMS_REVIEW_ID_ALBUM ON ALBUMS_REVIEW (ID_ALBUM ASC);

CREATE UNIQUE INDEX ALBUMS_REVIEW_ID_USER ON ALBUMS_REVIEW (ID_USER ASC);

COMMENT ON COLUMN ALBUMS_REVIEW.ID_USER IS 'foreign key from USERS';

COMMENT ON COLUMN ALBUMS_REVIEW.ID_ALBUM IS 'foreign key from ALBUM';

COMMENT ON COLUMN ALBUMS_REVIEW.REVIEW IS 'review about album';
