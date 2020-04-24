DEFINE SCHEMA_NAME = &&1
DEFINE DATA_TBS_NAME = &&2

CREATE TABLE &&SCHEMA_NAME.USER_STATE 
(
  ID_STATE INT NOT NULL 
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
TABLESPACE &&DATA_TBS_NAME;

COMMENT ON COLUMN &&SCHEMA_NAMEUSER_STATE.CURRENT_COMPOSITION IS 'current composition in playlist';

COMMENT ON COLUMN &&SCHEMA_NAMEUSER_STATE.STOPPING_TIME IS 'time when use is stopped';

ALTER TABLE &&SCHEMA_NAME.USER_STATE ADD CONSTRAINT fk_User_state_ID_User FOREIGN KEY(ID_User)
REFERENCES Users (ID_User);

ALTER TABLE &&SCHEMA_NAME.USER_STATE ADD CONSTRAINT fk_User_state_ID_Composition FOREIGN KEY(ID_Composition)
REFERENCES &&SCHEMA_NAME.Composition (ID_Composition);

ALTER TABLE &&SCHEMA_NAME.USER_STATE ADD CONSTRAINT fk_User_state_ID_Album FOREIGN KEY(ID_Album)
REFERENCES &&SCHEMA_NAME.Album (ID_Album);