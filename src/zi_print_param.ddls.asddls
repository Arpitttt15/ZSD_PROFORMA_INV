@EndUserText.label: 'Print parameter'
define abstract entity ZI_PRINT_PARAM
{
  @Consumption.valueHelpDefinition: [{
     entity: { name: 'ZC_FORM_NAME', element: 'Id' }
  }]
  @UI.textArrangement: #TEXT_ONLY
  @EndUserText.label: 'Form Type'
  FormType : zde_form;
}
