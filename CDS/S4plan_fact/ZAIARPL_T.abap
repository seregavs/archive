@AbapCatalog.sqlViewName: 'ZAVARPL_T'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Plant text'
@Analytics: {dataCategory: #TEXT }
define view ZAIARPL_T
  as select from t001w
{
  key werks,
      @Semantics.text: true
      @EndUserText.label: 'Завод'
      name1 as werk_text
}
