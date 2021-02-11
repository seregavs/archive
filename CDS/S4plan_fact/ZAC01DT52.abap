@AbapCatalog.sqlViewName: 'ZAV01DT52'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS MR.CC.PS L52'
define view ZAC01DT52
  as select from ZAC01DT50 as t1
    inner join   ZAC01DT51 as t2 on  t1.Calyear   = t2.Calyear
                                 and t1.CalMonth2 = t2.max_calmonth2
                                 and t1.Prj       = t2.Prj
                                 and t1.Version   = t2.Version
                                 and t1.Arrep     = t2.Arrep
{
  key t1.Calyear,
  key t1.Prj,
  key t1.Version,
  key t1.Arrep,
  key t1.CalMonth2,
      Calmonth,
      Arunit,
      MValue,
      MValueRT
}
