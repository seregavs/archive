@AbapCatalog.sqlViewName: 'ZAVDATA'
@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Manual entry data'
// @Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view ZACDATA as select from zatdata {
    key calyear as Calyear,
    key prj as Prj,
    key version as Version,
    key arrep as Arrep,
    @EndUserText.label: 'Месяц' 
    key '01' as CalMonth2,
    @EndUserText.label: 'ГодМесяц'
    cast(concat(calyear,'01') as abap.numc( 6 )) as calmonth,
    arunit as Arunit,
    m01 as MValue
}
union all select from zatdata {
    key calyear as Calyear,
    key prj as Prj,
    key version as Version,
    key arrep as Arrep,
    key '02' as CalMonth2,
    concat(calyear,'02') as calmonth,    
    arunit as Arunit,
    m02 as MValue
}
union all select from zatdata {
    key calyear as Calyear,
    key prj as Prj,
    key version as Version,
    key arrep as Arrep,
    key '03' as CalMonth2,
    concat(calyear,'03') as calmonth,    
    arunit as Arunit,
    m03 as MValue
}
union all select from zatdata {
    key calyear as Calyear,
    key prj as Prj,
    key version as Version,
    key arrep as Arrep,
    key '04' as CalMonth2,
    concat(calyear,'04') as calmonth,    
    arunit as Arunit,
    m04 as MValue
}
union all select from zatdata {
    key calyear as Calyear,
    key prj as Prj,
    key version as Version,
    key arrep as Arrep,
    key '05' as CalMonth2,
    concat(calyear,'05') as calmonth,    
    arunit as Arunit,
    m05 as MValue
}
union all select from zatdata {
    key calyear as Calyear,
    key prj as Prj,
    key version as Version,
    key arrep as Arrep,
    key '06' as CalMonth2,
    concat(calyear,'06') as calmonth,    
    arunit as Arunit,
    m06 as MValue
}
union all select from zatdata {
    key calyear as Calyear,
    key prj as Prj,
    key version as Version,
    key arrep as Arrep,
    key '07' as CalMonth2,
    concat(calyear,'07') as calmonth,    
    arunit as Arunit,
    m07 as MValue
}
union all select from zatdata {
    key calyear as Calyear,
    key prj as Prj,
    key version as Version,
    key arrep as Arrep,
    key '08' as CalMonth2,
    concat(calyear,'08') as calmonth,    
    arunit as Arunit,
    m08 as MValue
}
union all select from zatdata {
    key calyear as Calyear,
    key prj as Prj,
    key version as Version,
    key arrep as Arrep,
    key '09' as CalMonth2,
    concat(calyear,'09') as calmonth,    
    arunit as Arunit,
    m09 as MValue
}
union all select from zatdata {
    key calyear as Calyear,
    key prj as Prj,
    key version as Version,
    key arrep as Arrep,
    key '10' as CalMonth2,
    concat(calyear,'10') as calmonth,    
    arunit as Arunit,
    m10 as MValue
}
union all select from zatdata {
    key calyear as Calyear,
    key prj as Prj,
    key version as Version,
    key arrep as Arrep,
    key '11' as CalMonth2,
    concat(calyear,'11') as calmonth,    
    arunit as Arunit,
    m11 as MValue
}
union all select from zatdata {
    key calyear as Calyear,
    key prj as Prj,
    key version as Version,
    key arrep as Arrep,
    key '12' as CalMonth2,
    concat(calyear,'12') as calmonth,    
    arunit as Arunit,
    m12 as MValue
}
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
