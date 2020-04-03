DEFINE USER_NAME = &&1
DEFINE TBS_LOCATION = &&2


SPOOL 'logs.log'
@install\create_tablespaces.sql &&USER_NAME &&TBS_LOCATION
@install\create_user.sql &&USER_NAME
SPOOL OFF