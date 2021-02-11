@AbapCatalog.sqlViewName: 'ZAV03DT30'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS MR.CC.PS L30'
define view ZAC03DT30
  as select from ZAC03DT25
{
  key Calyear,
  key Prj,
  key Version,
  key '00200' as Arrep,
  key CalMonth2,
      calmonth,
      Arunit,
      MValue
}
where Arrep = '03021'
union all select from ZAC03DT25
{
  key Calyear,
  key Prj,
  key Version,
  key '00100' as Arrep,
  key CalMonth2,
      calmonth,
      Arunit,
      MValue
}
where Arrep = '03020'
union all select from ZAC03DT20 
{
  key Calyear,
  key Prj,
  key Version,
  key '01300' as Arrep,
  key CalMonth2,
      calmonth,
      Arunit,
      cast(MValue * 1000 as abap.fltp) / 31.1034768 as MValue
}
where Arrep = '03006'
union all select from ZAC03DT25
{
  key Calyear,
  key Prj,
  key Version,
  key '03007' as Arrep,
  key CalMonth2,
      calmonth,
      Arunit,
      MValue
}
where Arrep = '03007'
union all select from ZAC03DT25
{
  key Calyear,
  key Prj,
  key Version,
  key '00300' as Arrep,
  key CalMonth2,
      calmonth,
      Arunit,
      MValue
}
where Arrep = '03019'
union all select from ZAC03DT25
{
  key Calyear,
  key Prj,
  key Version,
  key '00600' as Arrep,
  key CalMonth2,
      calmonth,
      Arunit,
      MValue
}
where Arrep = '03015'
union all select from ZAC03DT25
{
  key Calyear,
  key Prj,
  key Version,
  key '00400' as Arrep,
  key CalMonth2,
      calmonth,
      Arunit,
      sum( MValue ) as MValue
}
where Arrep = '03011' or Arrep = '03010'
group by Calyear, Prj, Version, CalMonth2, calmonth, Arunit
union all select from ZAC03DT25
{
  key Calyear,
  key Prj,
  key Version,
  key '00900' as Arrep,
  key CalMonth2,
      calmonth,
      Arunit,
      MValue
}
where Arrep = '03009'
union all select from ZAC03DT25
{
  key Calyear,
  key Prj,
  key Version,
  key '00700' as Arrep,
  key CalMonth2,
      calmonth,
      Arunit,
      MValue
}
where Arrep = '03005'
union all select from ZAC03DT25
{
  key Calyear,
  key Prj,
  key Version,
  key '01000' as Arrep,
  key CalMonth2,
      calmonth,
      Arunit,
      sum( MValue ) as MValue
}
where Arrep = '03000' or Arrep = '03001' or Arrep = '03002' or Arrep = '03004'
group by Calyear, Prj, Version, CalMonth2, calmonth, Arunit
