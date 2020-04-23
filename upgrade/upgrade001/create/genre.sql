CREATE TABLE GENRE 
(
  ID_GENRE INT NOT NULL 
, GENRE VARCHAR2(50) NOT NULL 
, RATING INT NOT NULL 
, ID_COMPOSITION INT NOT NULL 
, CONSTRAINT GENRE_PK PRIMARY KEY 
  (
    ID_GENRE 
  )
  ENABLE 
);


ALTER TABLE GENRE ADD CONSTRAINT fk_Genre_ID_COMPOSITION FOREIGN KEY(ID_COMPOSITION)
REFERENCES COMPOSITION (ID_COMPOSITION);