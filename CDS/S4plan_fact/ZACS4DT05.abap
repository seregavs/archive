@AbapCatalog.sqlViewName: 'ZAVS4DT05'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS S4 L05'
define view ZACS4DT05
  as select from ZACS4DT01
{
  key rldnr,
  key rbukrs,
  key Calyear,
  key belnr,
  key docln,
      Version,
      racct,
      racct_group,
      drcrk,
      //      poper,
      //      fiscyearper,
      CalMonth,
      budat,
      bschl,
      prj,
      werks,
      xreversing,
      xreversed,
      xtruerev,
      matnr,
      rkcur,
      runit,
      ksl,
      msl,
      ksl1000,
      arunit_usd,
      msl_oz,
      arunit_oz,
      -ksl     as ksl_neg,
      -msl     as msl_neg,
      -ksl1000 as ksl1000_neg,
      -msl_oz  as msl_oz_neg

}
