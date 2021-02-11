@AbapCatalog.sqlViewName: 'ZAV01DT50'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS MR.CC.PS L50'
define view ZAC01DT50
  as select from ZAC01DT44
{
  key Calyear,
  key Prj,
  key Version,
  key Arrep,
  key CalMonth2,
      Calmonth,
      cast(Arunit as zaeunit) as Arunit,
      MValue,
      MValueRT
}
union all select from ZAC03DT43
{
  key Calyear,
  key Prj,
  key Version,
  key Arrep,
  key CalMonth2,
      Calmonth,
      Arunit,
      fltp_to_dec( Mvalue as abap.dec( 31, 6 ))   as MValue,
      fltp_to_dec( MvalueRT as abap.dec( 31, 6 )) as MValueRT
}
union all select from ZAC01DT42
{
  key Calyear,
  key Prj,
  key Version,
  key Arrep,
  key CalMonth2,
      Calmonth,
      Arunit,
      MValue,
      MValueRT
}
