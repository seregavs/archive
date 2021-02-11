@EndUserText.label : 'Данные ручного ввода'
@AbapCatalog.enhancementCategory : #NOT_CLASSIFIED
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #ALLOWED
define table zatdata {
  key clnt    : mandt not null;
  key calyear : /bi0/oicalyear not null;
  key prj     : zaeproj not null;
  key version : zaeversion not null;
  key arrep   : zaearrep not null;
  arunit      : zaeunit;
  m01         : zaem01;
  m02         : zaem02;
  m03         : zaem03;
  m04         : zaem04;
  m05         : zaem05;
  m06         : zaem06;
  m07         : zaem07;
  m08         : zaem08;
  m09         : zaem09;
  m10         : zaem10;
  m11         : zaem11;
  m12         : zaem12;

}
