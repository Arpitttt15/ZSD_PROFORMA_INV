@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View for Proforma Invoice'
@Metadata.allowExtensions: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZI_PRF_INV
  as select from    I_SalesOrder as a
    left outer join ztb_prfm_inv as b on a.SalesOrder = b.salesorder
{
  key a.SalesOrder,
      a.SalesOrderDate,
      b.base64_3 as base64,
      b.m_ind,
      b.status   as Form,
      b.formtype as FormType
}
where
  a.DistributionChannel = '30'
