@AbapCatalog.sqlViewName: 'ZAVS4DTV01'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@VDM.viewType: #CONSUMPTION
@Analytics.query: true
@EndUserText.label: 'CDS S4 Revenue Dore'
define view ZACS4DTV01
  as select from ZACS4DT03
{
      @AnalyticsDetails.query.display: #KEY
      @AnalyticsDetails.query.axis: #ROWS
  key rbukrs as BUKRS,
      @AnalyticsDetails.query.display: #KEY_TEXT
      @AnalyticsDetails.query.axis: #ROWS
  key Calyear as GJAHR,
      @AnalyticsDetails.query.display: #KEY
      @AnalyticsDetails.query.axis: #ROWS
  key belnr as BELNR,
      Version,
      Arrep,
      @AnalyticsDetails.query.display: #KEY
      @AnalyticsDetails.query.axis: #ROWS
      Calmonth,
      prj,
      @AnalyticsDetails.query.display: #KEY_TEXT
      @AnalyticsDetails.query.axis: #ROWS
      werks,      
      @AnalyticsDetails.query.display: #KEY_TEXT
      @AnalyticsDetails.query.axis: #ROWS
      matnr,
      rkcur,
      runit,
      arunit_usd,
      arunit_oz,
      @DefaultAggregation: #SUM
      @AnalyticsDetails.query.axis: #COLUMNS
      @AnalyticsDetails.query.decimals: 2
      ksl,
      @DefaultAggregation: #SUM
      @AnalyticsDetails.query.axis: #COLUMNS
      @AnalyticsDetails.query.decimals: 2
      msl,
      @DefaultAggregation: #SUM
      @AnalyticsDetails.query.axis: #COLUMNS
      @AnalyticsDetails.query.decimals: 2
//      fltp_to_dec(ksl1000 as abap.dec(31,0) ) as ksl1000,
      msl_oz,
      @DefaultAggregation: #SUM
      @AnalyticsDetails.query.axis: #COLUMNS
      @AnalyticsDetails.query.decimals: 2
      ksl1000


}
