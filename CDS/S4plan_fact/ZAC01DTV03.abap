@AbapCatalog.sqlViewName: 'ZAV01DTV03'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@VDM.viewType: #CONSUMPTION
@Analytics.query: true
@EndUserText.label: 'CDS MR.CC.PS VL03'
define view ZAC01DTV03
  as select from ZAC01DTV01
{
      @AnalyticsDetails.query.display: #KEY_TEXT
      @AnalyticsDetails.query.axis: #ROWS
  key Calyear,
      @AnalyticsDetails.query.display: #TEXT
      @AnalyticsDetails.query.axis:   #FREE
  key Prj,
      @AnalyticsDetails.query.display: #KEY_TEXT
      @AnalyticsDetails.query.axis:   #FREE
  key Werk,
      @AnalyticsDetails.query.display: #KEY_TEXT
      @AnalyticsDetails.query.axis: #ROWS
      @AnalyticsDetails.query.sortDirection: #ASC      
  key Arrep,
      @AnalyticsDetails.query.display: #TEXT
      @AnalyticsDetails.query.axis: #ROWS
  key Version,  
      @AnalyticsDetails.query.display: #TEXT
      @AnalyticsDetails.query.axis: #COLUMNS
  key CalMonth2,

      @AnalyticsDetails.query.display: #TEXT
      @AnalyticsDetails.query.axis: #ROWS
      Arunit,
      @DefaultAggregation: #SUM
      @AnalyticsDetails.query.axis: #COLUMNS
      @AnalyticsDetails.query.decimals: 2
      MValue,
      @DefaultAggregation: #SUM
      @AnalyticsDetails.query.axis: #COLUMNS
      @AnalyticsDetails.query.decimals: 2
      MValueRT,
      @DefaultAggregation: #SUM
      @AnalyticsDetails.query.axis: #COLUMNS
      @AnalyticsDetails.query.decimals: 2
      MValueRT12
      /* Associations */


}
where
  ( Arrep <> '00099' and Arrep <> '03007' )// removing unnesesary articles
