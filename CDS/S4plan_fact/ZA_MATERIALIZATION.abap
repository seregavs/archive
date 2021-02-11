REPORT ZA_MATERIALIZATION.

" to elaborate "too many tables" problem

DELETE FROM ZAMDATA.
INSERT ZAMDATA FROM ( SELECT * FROM ZACDATA ).
WRITE: / |Материализация ZACDATA выполнена. { sy-dbcnt } строк добавлено|.
*    DATA:
*      lo_conn      TYPE REF TO cl_sql_connection,
*      lo_statement TYPE REF TO cl_sql_statement,
*      lx_sql       TYPE REF TO cx_sql_exception.
*
*            DATA(lv_sql) =
*           |INSERT INTO  "{ i_adso_tbl }" SET "{ me->get_iobjnm( ) }" = '{ <fs_zmkkeym>-key_mask }' WHERE "{ me->get_iobjnm( ) }" = '{ <fs_zmkkeym>-key_orig }' |.
*        TRY.
*            lo_conn = cl_sql_connection=>get_connection( ).
*            lo_statement = lo_conn->create_statement( ).
*            DATA(l_row_cnt) = lo_statement->execute_update( lv_sql ).
*
*          CATCH cx_sql_exception INTO lx_sql.
*        ENDTRY
