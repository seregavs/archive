@EndUserText.label : 'Heler table for running total'
@AbapCatalog.enhancementCategory : #NOT_CLASSIFIED
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #ALLOWED
define table zatcalmonthrt {
  key clnt      : mandt not null;
  key calyear   : /bi0/oicalyear not null;
  key calmonth2 : /bi0/oicalmonth2 not null;

}
