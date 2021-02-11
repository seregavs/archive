@AbapCatalog.sqlViewName: 'ZAV01DT41'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS MR.CC.PS L41'
define view ZAC01DT41
  as select from ZAC01DT38   as t1
    inner join   ZAICALMONRT as t2 on  t1.Calyear   = t2.Calyear
                                   and t1.CalMonth2 = t2.Calmonth2
{
  key t1.Calyear,
  key t1.Prj,
  key t1.Version,
  key t1.Arrep,
  key t2.Calmonth2RT               as CalMonth2,
      t2.CalmonthRT                as Calmonth,
      t1.Arunit,
      t1.MValue * t2.currentmonth2 as MValue,      
      t1.MValue                    as MValueRT
}
where t1.Arrep <> '02600'
