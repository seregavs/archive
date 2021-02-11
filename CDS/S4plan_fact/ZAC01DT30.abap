@AbapCatalog.sqlViewName: 'ZAV01DT30'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS MR.CC.PS L30'
define view ZAC01DT30
  as select from ZAC01DT25
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
union all select from ZAC01DT25
{
  key Calyear,
  key Prj,
  key Version,
  key '00500'         as Arrep,
  key CalMonth2,
      calmonth,
      Arunit,
      sum( MValue ) as MValue
}
where
     Arrep = '00100'
  or Arrep = '00200'
  or Arrep = '00300'
  or Arrep = '00400'
group by
  Calyear,
  Prj,
  Version,
  CalMonth2,
  calmonth,
  Arunit
union all select from ZAC01DT25
{
  key Calyear,
  key Prj,
  key Version,
  key '00800'         as Arrep,
  key CalMonth2,
      calmonth,
      Arunit,
      sum( MValue ) as MValue
}
where
     Arrep = '00100'
  or Arrep = '00200'
  or Arrep = '00300'
  or Arrep = '00400'
  or Arrep = '00600'
  or Arrep = '00700'
group by
  Calyear,
  Prj,
  Version,
  CalMonth2,
  calmonth,
  Arunit
union all select from ZAC01DT25
{
  key Calyear,
  key Prj,
  key Version,
  key '01200'        as Arrep,
  key CalMonth2,
      calmonth,
      Arunit,
      sum( MValue ) as MValue
}
where
     Arrep = '00100'
  or Arrep = '00200'
  or Arrep = '00300'
  or Arrep = '00400'
  or Arrep = '00600'
  or Arrep = '00700'
  or Arrep = '00900'
  or Arrep = '01000'
  or Arrep = '01100'
group by
  Calyear,
  Prj,
  Version,
  CalMonth2,
  calmonth,
  Arunit
