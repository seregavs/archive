@AbapCatalog.sqlViewName: 'ZAVS4DT03'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS S4 L03'
@Analytics.dataCategory: #CUBE
@VDM.viewType: #COMPOSITE
define view ZACS4DT03
  as select from ZACS4DT02
{
  key rbukrs,
  key Calyear,
  key belnr,
      Version,
      Arrep,
      Calmonth,
      prj,
      werks,
      matnr,
      rkcur,
      runit,
      arunit_usd,
      arunit_oz,
      ksl,
      msl,
      ksl1000,
      msl_oz
      //      /* Associations */
      //      _Position,
      //      _Unit_OZ,
      //      _Unit_USD1K
}
union all select from t000
{
      $session.client         as mandt,
  key '1200'                  as rbukrs,
  key '2019'                  as Calyear,
  key '4100000001'            as belnr,
      'FACT'                  as Version,
      '00099'                 as Arrep,
      '201911'                as CalMonth,
      cast('1008' as zaeproj)                   as prj,
      '1008'                  as werks , 
      cast('DOREAU' as matnr) as matnr,
      cast('USD' as waers)    as rkcur,
      cast('G' as meins)      as runit,
      'USD1K'                 as arunit_usd,
      'OZ'                    as arunit_oz,
      215172.12               as ksl,
      60522.390               as msl,
      215.17                  as ksl1000,
      1945.839                as msl_oz
}
where
  mandt = '000'
