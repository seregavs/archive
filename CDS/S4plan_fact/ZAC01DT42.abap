@AbapCatalog.sqlViewName: 'ZAV01DT42'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS MR.CC.PS L42'
define view ZAC01DT42
  as select from ZAC01DT41
{
  key Calyear,
  key Prj,
  key Version,
  key Arrep,
  key CalMonth2,
      Calmonth,
      Arunit,
      sum( MValue )   as MValue,
      sum( MValueRT ) as MValueRT
}
group by
  Calyear,
  Prj,
  Version,
  Arrep,
  CalMonth2,
  Calmonth,
  Arunit
