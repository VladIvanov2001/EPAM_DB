CREATE TABLE STORY_OF_LISTENING 
(
  ID_STORY INT NOT NULL 
, ID_USER INT NOT NULL 
, ID_COMPOSITION INT NOT NULL 
, ID_ALBUM INT NOT NULL 
, DATE_OF_LISTENING DATE NOT NULL 
, CONSTRAINT ST_PK PRIMARY KEY 
  (
    ID_STORY 
  )
  ENABLE 
);

ALTER TABLE STORY_OF_LISTENING ADD CONSTRAINT fk_STORY_OF_LISTENING_ID_USER FOREIGN KEY(ID_USER)
REFERENCES USERS (ID_USER);

ALTER TABLE STORY_OF_LISTENING ADD CONSTRAINT fk_STORY_OF_LISTENING_ID_Album FOREIGN KEY(ID_Album)
REFERENCES ALBUM (ID_ALBUM);
