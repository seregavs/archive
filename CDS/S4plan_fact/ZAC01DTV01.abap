@AbapCatalog.sqlViewName: 'ZAV01DTV01'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@EndUserText.label: 'CDS MR.CC.PS VL01'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Analytics.dataCategory: #CUBE

define view ZAC01DTV01
  as select from ZAC01DT53
  association [1] to ZAIARREP as _Position on $projection.Arrep = _Position.Arrep
  association [1] to ZAIPRJ as _Prj on $projection.Prj = _Prj.prj
  association [1] to ZAIARPL as _Plant on $projection.Werk = _Plant.werks
{
      @Semantics.calendar.year : true
  key Calyear,
      @EndUserText.label: 'Проект'
      @ObjectModel.text.element:  [ 'projt' ]
      @ObjectModel.foreignKey.association: '_Prj'      
  key Prj,
      @EndUserText.label: 'Завод'
      @ObjectModel.text.element:  [ 'werk_text' ]
      @ObjectModel.foreignKey.association: '_Plant'     
  key ZAC01DT53.werks as Werk, 
      @EndUserText.label: 'Версия'
  key Version,
      @EndUserText.label: 'Позиция'
      @ObjectModel.text.element:  [ 'Arreptt' ]
      @ObjectModel.foreignKey.association: '_Position'
  key Arrep,
      @Semantics.calendar.month: true
      @EndUserText.label: 'Месяц'
  key CalMonth2,
      @Semantics.calendar.yearMonth: true
      @EndUserText.label: 'ГодМесяц'
      Calmonth,
      @EndUserText.label: 'Ед.изм'
      Arunit,
      @DefaultAggregation: #SUM
      @EndUserText.label: 'Значение'
      MValue,
      @DefaultAggregation: #SUM
      @EndUserText.label: 'Значение НИ'
      MValueRT,
      @DefaultAggregation: #SUM
      @EndUserText.label: 'Значение НИ Год'
      MValueRT12,

      _Position,
      _Prj,
      _Plant

}
