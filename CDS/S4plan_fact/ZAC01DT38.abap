@AbapCatalog.sqlViewName: 'ZAV01DT38'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS MR.CC.PS L38'
define view ZAC01DT38
  as select from ZAC01DT30
{
  key Calyear,
  key Prj,
  key Version,
  key Arrep,
  key CalMonth2,
      calmonth,
      Arunit,
      MValue

}
union all select from ZAC01DT36
{
  key Calyear,
  key Prj,
  key Version,
  key Arrep,
  key CalMonth2,
      calmonth,
      Arunit,
      MValue

}
