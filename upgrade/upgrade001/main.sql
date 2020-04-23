SET TIME ON
SET TIMING ON
SPOOL UPGRADE_SCHEMA.LOG

DEFINE USER_NAME = &&1
DEFINE TABLESPACE_NAME = &&2

SET SERVEROUTPUT ON
PROMPT Username to upgrade: &&USER_NAME

connect &&USER_NAME/oracle 
-- Run our scripts

PROMPT Calling create_tables started
@create/create_user.sql &&USER_NAME &&TABLESPACE_NAME
@create/create_album.sql &&USER_NAME &&TABLESPACE_NAME
@create/create_playlist.sql &&USER_NAME &&TABLESPACE_NAME
@create/create_composition.sql &&USER_NAME &&TABLESPACE_NAME
@create/compositions_review.sql &&USER_NAME &&TABLESPACE_NAME
@create/album_review.sql &&USER_NAME &&TABLESPACE_NAME
@create/genre.sql &&USER_NAME &&TABLESPACE_NAME
@create/playlist_contain.sql &&USER_NAME &&TABLESPACE_NAME
@create/story_of_listening.sql &&USER_NAME &&TABLESPACE_NAME
@create/user_playlist.sql &&USER_NAME &&TABLESPACE_NAME
@create/user_state.sql &&USER_NAME &&TABLESPACE_NAME



PROMPT Calling create_tables finished

PROMPT Calling insert_values started
@insert_values.sql &&USER_NAME
PROMPT Calling insert_values finished

SET SERVEROUTPUT OFF

UNDEFINE USER_NAME
UNDEFINE TABLESPACE_NAME

SPOOL OFF