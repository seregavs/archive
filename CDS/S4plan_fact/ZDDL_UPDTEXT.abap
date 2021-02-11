// update text in CDS DDL object
REPORT ZDDL_UPDTEXT.
parameters:
  p_ddl  type ddlname obligatory,
  p_text type ddtext obligatory.

update ddddlsrct from @( value #( ddlname = p_ddl ddlanguage = sy-langu as4local = 'A' ddtext = p_text ) ).

if sy-dbcnt = 1.
  write: |Updated!|.
else.
  write: |DDL { p_ddl } not found|.
endif.
