@AbapCatalog.sqlViewName: 'ZAV01DT36'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS MR.CC.PS L36'
define view ZAC01DT36
  as select from ZAC01DT35
{
  key Calyear,
  key Prj,
  key Version,
      //  key Arrep                                           as Arrep_orig,
  key case Arrep
       when '00100' then '01400'
       when '00200' then '01500'
       when '00300' then '01600'
       when '00400' then '01700'
       when '00500' then '01800'
       when '00600' then '01900'
       when '00700' then '02000'
       when '00800' then '02100'
       when '00900' then '02200'
       when '01000' then '02300'
       when '01100' then '02400'
       when '01200' then '02500'
     else   Arrep
     end                                              as Arrep,
  key CalMonth2,
      calmonth,
      case Arunit
       when 'USD1K' then 'USD1KOZ'
       else Arunit
       end                                            as Arunit,
       fltp_to_dec( MValue_float as abap.dec( 31, 6 )) as MValue
}
