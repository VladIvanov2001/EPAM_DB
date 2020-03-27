DEFINE USER_NAME = &&1
DEFINE TABLESPACE_NAME = &&2

@drop\drop_tablespaces.sql &&TABLESPACE_NAME
@drop\drop_user.sql &&USER_NAME