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
@create/create_user.sql &&2
@create/create_album.sql &&2
@create/create_playlist.sql &&2
@create/create_composition.sql &&2
@create/compositions_review.sql &&2
@create/album_review.sql &&2
@create/genre.sql &&2
@create/playlist_contain.sql &&2
@create/story_of_listening.sql &&2
@create/user_playlist.sql &&2
@create/user_state.sql &&2



PROMPT Calling create_tables finished

PROMPT Calling insert_values started
@insert_values.sql
PROMPT Calling insert_values finished

SET SERVEROUTPUT OFF

UNDEFINE USER_NAME
UNDEFINE TABLESPACE_NAME

SPOOL OFF