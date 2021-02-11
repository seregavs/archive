@AbapCatalog.sqlViewName: 'ZAV03DT25'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Plan L25'
define view ZAC03DT25
  as select from ZAC03DT20
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
