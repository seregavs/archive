@AbapCatalog.sqlViewName: 'ZAV01DT20'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS MR.CC.PS L20'
define view ZAC01DT20 as select from zamdata as t1 inner join zatarrep on t1.arrep = zatarrep.arrep
{
  key t1.calyear,
  key t1.prj,
  key t1.version,
  key t1.arrep,
  @EndUserText.label: 'Месяц'
  key t1.calmonth2,
  @EndUserText.label: 'ГодМесяц'
      t1.calmonth,      
      t1.arunit,
      @EndUserText.label: 'Значение'
      t1.mvalue
}
 where zatarrep.remove <> 'X'
   and zatarrep.rep = '01'
