DEFINE USER_NAME = &&1

@drop\drop_tablespaces.sql &&USEN_NAME
@drop\drop_user.sql &&USER_NAME