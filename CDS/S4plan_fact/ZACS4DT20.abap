@AbapCatalog.sqlViewName: 'ZAVS4DT20'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS PP L20'
@Analytics.dataCategory: #CUBE
@VDM.viewType: #COMPOSITE
define view ZACS4DT20
  as select from aufm
  // данные по добыче из производственных заказов. Сверка с Tcode: COOIS / документированные движения материала без плановых заказов
  association [1] to I_Material     as _Material on $projection.matnr = _Material.Material
  association [1] to I_CalendarDate as _CalDay   on $projection.budat = _CalDay.CalendarDate
  association [1] to ZAIARPL        as _Plant    on $projection.werks = _Plant.werks
  association [1] to ZAIARPP        as _Aufnr    on $projection.aufnr = _Aufnr.aufnr
  association [1] to ZAIARREP       as _Arrep    on $projection.Arrep = _Arrep.Arrep
{

  aufnr,
  @EndUserText.label: 'Дата'
  @ObjectModel.foreignKey.association: '_CalDay'
  budat,
  _CalDay.YearMonth as CalMonth,
  _CalDay.CalendarYear as CalYear,
  @EndUserText.label: 'Материал'
  @ObjectModel.text.element:  [ 'MaterialName' ]
  @ObjectModel.foreignKey.association: '_Material'
  matnr,
  @EndUserText.label: 'Завод'
  @ObjectModel.text.element:  [ 'werk_text' ]
  @ObjectModel.foreignKey.association: '_Plant'
  werks,
  bwart,
  cast('FACT' as zaeversion) as Version,
  cast('00100' as zaearrep)  as Arrep, // Добыча руды
  shkzg,
  @Semantics.quantity.unitOfMeasure: 'meins'
  @EndUserText.label: 'Вес'  
  @DefaultAggregation: #SUM
  menge,
  @Semantics.unitOfMeasure: true
  @EndUserText.label: 'UOM'
  meins,
  @DefaultAggregation: #SUM
   @EndUserText.label: 'Вес, унций'
  case meins
  when 'G' then cast(menge as abap.fltp)  * 0.03215074
  when 'KG' then cast(menge as abap.fltp) * 0.00003215
  else cast(0 as abap.fltp)
  end                        as menge_oz,

  _Material,
  _CalDay,
  _Plant,
  _Aufnr,
  _Arrep
}
