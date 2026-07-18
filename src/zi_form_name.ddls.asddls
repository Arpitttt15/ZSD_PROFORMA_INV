@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface for Form Name'
@Metadata.allowExtensions: true
define root view entity ZI_FORM_NAME
  as select from ztb_status
{
  key id   as Id,
      name as Name
}
