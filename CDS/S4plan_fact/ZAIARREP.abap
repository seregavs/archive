@AbapCatalog.sqlViewName: 'ZAVARREP'
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel.representativeKey: 'Arrep'
@EndUserText.label: 'Article in report text'
@Analytics: {dataCategory: #DIMENSION}
define view ZAIARREP
  as select from zatarrep
  association [1..1] to ZAIARREP_T as _ARRepText on $projection.Arrep = _ARRepText.Arrep
{
      @ObjectModel.text.association: '_ARRepText'
  key arrep  as Arrep,

      arrept as Arrept,
      rep,
      _ARRepText
}
