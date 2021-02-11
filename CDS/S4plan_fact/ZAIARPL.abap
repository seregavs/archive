@AbapCatalog.sqlViewName: 'ZAVARPL'
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel.representativeKey: 'werks'
@EndUserText.label: 'Plant'
@Analytics: {dataCategory: #DIMENSION}
define view ZAIARPL
  as select from t001w
  association [1..1] to ZAIARPL_T as _PlantText on $projection.werks = _PlantText.werks
{
      @ObjectModel.text.association: '_PlantText'
  key werks,
      ort01,

      _PlantText
}
