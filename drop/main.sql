DEFINE USER_NAME = &&1

SPOOL 'drop\DROP_SCHEMA.log'
@drop\drop_tablespaces.sql &&USER_NAME
@drop\drop_user.sql &&USER_NAME
SPOOL OFF