DEFINE TABLESPACE_NAME = &&1
DEFINE TBS_LOCATION = &&2
DEFINE USER_NAME = &&3


SPOOL 'logs.log'
@install\create_tablespaces.sql &&TABLESPACE_NAME &&TBS_LOCATION
@install\create_user.sql &&USER_NAME &&PASSWORD
SPOOL OFF
