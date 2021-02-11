@AbapCatalog.sqlViewName: 'ZAV01DT53'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS MR.CC.PS L53'
define view ZAC01DT53
  as select from    ZAC01DT50 as t1
    left outer join ZAC01DT52 as t2 on  t1.Calyear = t2.Calyear
                                    and t1.Prj     = t2.Prj
                                    and t1.Version = t2.Version
                                    and t1.Arrep   = t2.Arrep
{
  key t1.Calyear,
  key t1.Prj,
  key left(t1.Prj,4) as werks,
  key t1.Version,
  key t1.Arrep,
  key t1.CalMonth2,
      t1.Calmonth,
      t1.Arunit,
      t1.MValue,
      t1.MValueRT,
      t2.MValueRT as MValueRT12
}
