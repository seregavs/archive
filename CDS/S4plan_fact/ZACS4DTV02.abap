@AbapCatalog.sqlViewName: 'ZAVS4DTV02'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@VDM.viewType: #CONSUMPTION
@Analytics.query: true
@EndUserText.label: 'CDS S4 PP Dore'
define view ZACS4DTV02
  as select from ZACS4DT20
{
  @AnalyticsDetails.query.display: #KEY
  @AnalyticsDetails.query.axis: #ROWS
  aufnr,
  @AnalyticsDetails.query.axis: #FREE  
  budat,
  @AnalyticsDetails.query.axis: #FREE  
  CalYear,
  @AnalyticsDetails.query.axis: #FREE  
  CalMonth,
  @AnalyticsDetails.query.display: #KEY
  @AnalyticsDetails.query.axis: #ROWS
  matnr,
  @AnalyticsDetails.query.display: #KEY_TEXT
  @AnalyticsDetails.query.axis: #ROWS
  werks,
  @AnalyticsDetails.query.display: #KEY_TEXT
  @AnalyticsDetails.query.axis: #FREE
  bwart,
  @AnalyticsDetails.query.display: #KEY
  @AnalyticsDetails.query.axis: #FREE
  Version,
  @AnalyticsDetails.query.display: #KEY
  @AnalyticsDetails.query.axis: #FREE
  Arrep,
  @AnalyticsDetails.query.display: #KEY
  @AnalyticsDetails.query.axis: #FREE
  shkzg,
  @AnalyticsDetails.query.axis: #COLUMNS
  @AnalyticsDetails.query.decimals: 2
  menge,
  meins,
  @AnalyticsDetails.query.axis: #COLUMNS
  @AnalyticsDetails.query.decimals: 3
  menge_oz

}
where
  (
       matnr = 'DORE'
    or matnr = 'DOREAG'
    or matnr = 'DOREAU'
    or matnr = 'DORES'
    or matnr = 'DORESAU'
    or matnr = 'DORESAG'
  )
