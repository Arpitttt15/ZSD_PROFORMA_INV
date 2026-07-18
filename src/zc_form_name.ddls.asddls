@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection for Form Name'
@Metadata.allowExtensions: true
@ObjectModel.resultSet.sizeCategory: #XS
define root view entity ZC_FORM_NAME
  provider contract transactional_query
  as projection on ZI_FORM_NAME
{
  @ObjectModel.text.element: ['Name']
  @UI.textArrangement: #TEXT_ONLY
  key Id,
  @Semantics.text: true
      Name
}
