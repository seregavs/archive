@AbapCatalog.sqlViewName: 'ZAV01DT43'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS MR.CC.PS L43'
define view ZAC01DT43
  as select from ZAC01DT42 as t1
    inner join   ZAC01DT42 as t2 on  t1.Calyear   = t2.Calyear
                                 and t1.Prj       = t2.Prj
                                 and t1.Version   = t2.Version
                                 and t1.Arrep     = '00099'
                                 and t2.Arrep     = '01300'
                                 and t1.Calmonth  = t2.Calmonth
                                 and t1.CalMonth2 = t2.CalMonth2
{
  key t1.Calyear,
  key t1.Prj,
  key t1.Version,
  key '02600'                                                                                as Arrep,
  key t1.CalMonth2,
      t1.Calmonth,
      'USD1K'                                                                                as Arunit,
      t1.MValue                                                                              as MValue99,
      t1.MValueRT                                                                            as MvalueRT99,
      t2.MValue                                                                              as MValue1300,
      t2.MValueRT                                                                            as MvalueRT1300,
      cast(t1.MValue * 1000 as abap.fltp(16,16)) /   cast(t2.MValue as abap.fltp(16,16))     as Mvalue_float,
      cast(t1.MValueRT * 1000 as abap.fltp(16,16)) /   cast(t2.MValueRT as abap.fltp(16,16)) as MvalueRT_float
}
where t1.Version = 'FACT'
