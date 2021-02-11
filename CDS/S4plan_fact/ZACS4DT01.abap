@AbapCatalog.sqlViewName: 'ZAVS4DT01'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS S4 L01'
@Analytics.dataCategory: #FACT
define view ZACS4DT01
  as select from acdoca
{
  key rldnr,
  key rbukrs,
      @Semantics.calendar.year : true
  key gjahr                as Calyear,
  key belnr,
  key docln,
      cast('FACT' as zaeversion) as Version,
      racct,
      substring(racct,1,2) as racct_group,
      drcrk,
      poper,
      fiscyearper,
      substring(budat,1,6) as CalMonth,
      budat,
      bschl,
      case prctr
       when 'PST0000000' then '01'
       else ''
      end as prj, 
      werks,
      
      xreversing,
      xreversed,
      xtruerev,
      
      matnr,
      
      @Semantics.currencyCode: true
      rkcur,
      @Semantics.unitOfMeasure: true
      runit,

      @DefaultAggregation: #SUM
      @Semantics.amount.currencyCode: 'rkcur'
      ksl,
      @DefaultAggregation: #SUM
      @Semantics.quantity.unitOfMeasure: 'runit'
      msl,
      
      division(ksl, 1000, 2 ) as ksl1000, // in 1000 USD
      cast('USD1K' as zaeunit) as arunit_usd,
      case runit
        when 'G' then cast(msl as abap.fltp)  * 0.03215074
        when 'KG' then cast(msl as abap.fltp) * 0.00003215        
        else cast(0 as abap.fltp)
      end as msl_oz,
      case runit
        when 'G' then cast(msl as abap.fltp)  
        when 'KG' then cast(msl as abap.fltp)        
        else cast(0 as abap.fltp)
      end as msl_uni,      
      cast('OZ' as zaeunit) as arunit_oz
}
// where rldnr = 'CO'
