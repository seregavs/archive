@EndUserText.label : 'Materialization ZAVDATA'
@AbapCatalog.enhancementCategory : #NOT_CLASSIFIED
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #LIMITED
define table zamdata {
  key clnt      : mandt not null;
  key calyear   : /bi0/oicalyear not null;
  key prj       : zaeproj not null;
  key version   : zaeversion not null;
  key arrep     : zaearrep not null;
  key calmonth2 : /bi0/oicalmonth2 not null;
  key calmonth  : /bi0/oicalmonth not null;
  arunit        : zaeunit;
  mvalue        : zaem01;

}
