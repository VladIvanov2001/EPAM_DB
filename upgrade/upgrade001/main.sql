SET TIME ON
SET TIMING ON
SPOOL UPGRADE_SCHEMA.LOG

DEFINE USER_NAME = &&1

SET SERVEROUTPUT ON
PROMPT Username to upgrade: &&USER_NAME

connect &&USER_NAME/oracle 
-- Run our scripts

PROMPT Calling create_tables started
@create/create_user.sql &&1
@create/create_album.sql &&1
@create/create_playlist.sql &&1
@create/create_composition.sql &&1
@create/compositions_review.sql &&1
@create/album_review.sql &&1
@create/genre.sql &&1
@create/playlist_contain.sql &&1
@create/story_of_listening.sql &&1
@create/user_playlist.sql &&1
@create/user_state.sql &&1

PROMPT Calling create_tables finished

PROMPT Calling creating from excel table
@dataFromExcel.sql &&1
PROMPT Calling creating finished

PROMPT Calling insert_values started
@insert_values.sql
PROMPT Calling insert_values finished


SET SERVEROUTPUT OFF

UNDEFINE USER_NAME
UNDEFINE TABLESPACE_NAME

SPOOL OFF