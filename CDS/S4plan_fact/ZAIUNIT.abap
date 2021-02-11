@AbapCatalog.sqlViewName: 'ZAVUNIT'
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel.dataCategory: #TEXT
@EndUserText.label: 'Unit'
@Analytics: {dataCategory: #DIMENSION}
@ObjectModel.representativeKey: 'ARUNIT'
define view ZAIUNIT
  as select from dd07t
{
      @EndUserText.label: 'Ед.изм'
  key domvalue_l as ARUNIT,
      @Semantics.text: true
      @EndUserText.label: 'Ед.изм'
      ddtext     as arunitt
}
where
      domname    = 'ZADUNIT'
  and as4local   = 'A'
  and ddlanguage = $session.system_language
