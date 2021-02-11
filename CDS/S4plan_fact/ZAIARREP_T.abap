@AbapCatalog.sqlViewName: 'ZAVARREP_T'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Article in report, text'
@Analytics: {dataCategory: #TEXT }
define view ZAIARREP_T as select from zatarrep {

      key arrep   as Arrep,
      @Semantics.text: true
      @EndUserText.label: 'Позиция'
      arreptt as Arreptt
}
