@AbapCatalog.sqlViewName: 'ZAV03DT20'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Plan L20'
define view ZAC03DT20 as select from zamdata as t1 inner join zatarrep on t1.arrep = zatarrep.arrep
{
  key calyear,
  key prj,
  key version,
  key t1.arrep,
  @EndUserText.label: 'Месяц'
  key calmonth2,
  @EndUserText.label: 'ГодМесяц'
      calmonth,      
      arunit,
      @EndUserText.label: 'Значение'
      mvalue
}
 where zatarrep.remove <> 'X'
   and zatarrep.rep = '03'
