DEFINE DATA_TBS_NAME = &&1
DEFINE CURS = '_DATA'

CREATE TABLE USER_STATE 
(
  ID_STATE INT GENERATED ALWAYS AS IDENTITY INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOT NULL 
, ID_USER INT NOT NULL 
, ID_COMPOSITION INT NOT NULL 
, ID_ALBUM INT NOT NULL 
, CURRENT_COMPOSITION VARCHAR2(20) NOT NULL 
, CURRENT_PLAYLIST VARCHAR2(20) 
, STOPPING_TIME INT 
, CONSTRAINT USER_STATE_PK PRIMARY KEY 
  (
    ID_STATE 
  )
  ENABLE 
)
TABLESPACE &&DATA_TBS_NAME&&CURS;

COMMENT ON COLUMN USER_STATE.CURRENT_COMPOSITION IS 'current composition in playlist';

COMMENT ON COLUMN USER_STATE.ID_STATE IS 'primary key';

COMMENT ON COLUMN USER_STATE.ID_USER IS 'foreign key from users';

COMMENT ON COLUMN USER_STATE.ID_COMPOSITION IS 'foreign key from compositions';

COMMENT ON COLUMN USER_STATE.ID_ALBUM IS 'foreign key from album';

COMMENT ON COLUMN USER_STATE.CURRENT_PLAYLIST IS 'current  playlist';

COMMENT ON COLUMN USER_STATE.STOPPING_TIME IS 'time when use is stopped';

ALTER TABLE USER_STATE ADD CONSTRAINT fk_USER_STATE_ID_USER FOREIGN KEY(ID_USER)
REFERENCES USERS (ID_USER);

ALTER TABLE USER_STATE ADD CONSTRAINT fk_USER_STATE_ID_COMPOSITION FOREIGN KEY(ID_COMPOSITION)
REFERENCES COMPOSITION (ID_COMPOSITION);

ALTER TABLE USER_STATE ADD CONSTRAINT fk_USER_STATE_ID_ALBUM FOREIGN KEY(ID_ALBUM)
REFERENCES ALBUM (ID_ALBUM);