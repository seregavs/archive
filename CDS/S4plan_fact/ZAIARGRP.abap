@AbapCatalog.sqlViewName: 'ZAVARGRP'
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel.dataCategory: #TEXT
@EndUserText.label: 'Article groups'
define view ZAIARGRP
  as select from zatargrp
{
  key argrp  as Argrp,
      @Semantics.text: true
      argrpt as Argrpt

}
