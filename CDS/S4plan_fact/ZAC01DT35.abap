@AbapCatalog.sqlViewName: 'ZAV01DT35'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS MR.CC.PS L35'
define view ZAC01DT35
  as select from ZAC01DT30 as t1
    inner join   ZAC01DT30 as t2 on  t1.Calyear   = t2.Calyear
                                 and t1.calmonth  = t2.calmonth
                                 and t1.CalMonth2 = t2.CalMonth2
                                 and t2.Arrep     = '01300'
                                 and t1.Prj       = t2.Prj
                                 and t1.Version   = t2.Version
{
  key t1.Calyear,
  key t1.Prj,
  key t1.Version,
  key t1.Arrep,
  key t1.CalMonth2,
      t1.calmonth,
      cast(t1.Arunit as zaeunit) as Arunit,
      t1.MValue                                                                         as MValue_orig,
      t2.MValue                                                                         as OZMValue,
      div( t1.MValue * 1000, t2.MValue )                                                as MValue_Int,
      cast(t1.MValue * 1000 as abap.fltp(16,16)) / cast( t2.MValue as abap.fltp(16,16)) as MValue_float
}
where
       (
         t1.Arrep    <> '01300'
         and t1.Arrep <> '02600' and t1.Arrep <> '00099' and t1.Arrep <> '03007'
       )
