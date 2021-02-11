@AbapCatalog.sqlViewName: 'ZAVCALMONRT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ClientHandling.algorithm: #SESSION_VARIABLE
@EndUserText.label: 'Calmonth Runnig total'
define view ZAICALMONRT
  as select from zatcalmonthrt as t1
    inner join   zatcalmonthrt as t2 on  t1.calyear   =  t2.calyear
                                     and t1.calmonth2 <= t2.calmonth2
{
  key t1.calyear                                               as Calyear,
  key t1.calmonth2                                             as Calmonth2,
  key t2.calmonth2                                             as Calmonth2RT,
      case when
        t1.calmonth2 = t2.calmonth2
        then 1
        else 0
      end                                                      as currentmonth2,
      cast(concat(t1.calyear, t2.calmonth2) as abap.numc( 6 )) as CalmonthRT

}
