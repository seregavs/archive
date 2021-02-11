@AbapCatalog.sqlViewName: 'ZAV01DT51'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS MR.CC.PS L51'
define view ZAC01DT51
  as select from ZAC01DT50
{
  key Calyear,
  key Prj,
  key Version,
  key Arrep,
      max(CalMonth2) as max_calmonth2
}
group by
  Calyear,
  Prj,
  Version,
  Arrep
