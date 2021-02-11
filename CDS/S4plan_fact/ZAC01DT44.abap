@AbapCatalog.sqlViewName: 'ZAV01DT44'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS MR.CC.PS L44'
define view ZAC01DT44
  as select from ZAC01DT43
{
  key Calyear,
  key Prj,
  key Version,
  key Arrep,
  key CalMonth2,
      Calmonth,
      Arunit,
      //    MValue99,
      //    MvalueRT99,
      //    MValue1300,
      //    MvalueRT1300,
      //    Mvalue_float,
      //    MvalueRT_float,
      fltp_to_dec( Mvalue_float as abap.dec( 31, 6 ))   as MValue,
      fltp_to_dec( MvalueRT_float as abap.dec( 31, 6 )) as MValueRT
}
