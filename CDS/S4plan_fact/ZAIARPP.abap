@AbapCatalog.sqlViewName: 'ZAVARPP'
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel.representativeKey: 'aufnr'
@EndUserText.label: 'PP Order'
@Analytics: {dataCategory: #DIMENSION}
define view ZAIARPP
  as select from afko
    inner join   aufk on afko.aufnr = aufk.aufnr
  association [1] to I_ProfitCenter as _ProfitCenter on  $projection.prctr = _ProfitCenter.ProfitCenter
                                                     and $projection.kokrs = _ProfitCenter.ControllingArea
{
      //      @ObjectModel.text.association: '_ARRepText'
  key afko.aufnr as aufnr,
      aufk.kokrs,
      aufk.prctr,
      aufk.werks,

      _ProfitCenter
}
