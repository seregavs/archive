@AbapCatalog.sqlViewName: 'ZAV01DT25'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS MR.CC.PS L25'
define view ZAC01DT25
  as select from ZAC01DT20
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
union all select from ZAC03DT30
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
// union with CDSs based on S/4 data to substitube some articles
