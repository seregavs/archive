@AbapCatalog.sqlViewName: 'ZAVS4DT02'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS S4 L02'
@Analytics.dataCategory: #CUBE
@VDM.viewType: #COMPOSITE
define view ZACS4DT02
  as select from ZACS4DT05
  association [1] to ZAIARREP as _Position   on $projection.Arrep = _Position.Arrep
  association [1] to ZAIUNIT  as _Unit_OZ    on $projection.arunit_oz = _Unit_OZ.ARUNIT
  association [1] to ZAIUNIT  as _Unit_USD1K on $projection.arunit_usd = _Unit_USD1K.ARUNIT
{
  key rbukrs,
  key Calyear,
  key belnr,
      Version,
      cast('00099' as zaearrep)           as Arrep, // Доход от реализации
      //      racct,
      //      racct_group,
      //      drcrk,
      //      poper,
      //      fiscyearper,
      @Semantics.calendar.yearMonth: true
      cast( CalMonth as /bi0/oicalmonth ) as Calmonth,
      //      budat,
      //      bschl,
      cast(prj as  zaeproj) as prj,
      werks,
      //      xreversing,
      //      xreversed,
      //      xtruerev,
      //      rtcur,
      matnr,
      @Semantics.currencyCode: true
      rkcur,
      @Semantics.unitOfMeasure: true
      runit,
      arunit_usd,
      arunit_oz,
      sum( ksl_neg )                      as ksl,
      sum( msl_neg )                      as msl,
      sum(ksl1000_neg)                    as ksl1000,
      sum(msl_oz_neg)                     as msl_oz,

      _Position,
      _Unit_OZ,
      _Unit_USD1K
}
where
  (
        racct_group =  '60'
    and rldnr       =  'CO'
  )
  and(
        matnr       =  'DORE'
    or  matnr       =  'DOREAU'
  )
  and   Calyear     >= '2020'
  and   prj         <> ''
group by
  rbukrs,
  Calyear,
  belnr,
  Version,
  CalMonth,
  prj,
  werks,
  matnr,
  rkcur,
  runit,
  arunit_usd,
  arunit_oz
