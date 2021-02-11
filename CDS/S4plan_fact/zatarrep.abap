@EndUserText.label : 'Статьи в отчетах'
@AbapCatalog.enhancementCategory : #NOT_CLASSIFIED
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #ALLOWED
define table zatarrep {
  key clnt  : mandt not null;
  key arrep : zaearrep not null;
  arrept    : zaetext100;
  rep       : zaerep;
  arreptt   : zaetext100;
  gr01      : zaeargrp;
  gr02      : zaeargrp;
  @EndUserText.label : 'X - надо удалить из выборки'
  remove    : abap.char(1);

}
