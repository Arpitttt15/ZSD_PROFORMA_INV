@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View for Proforma Invoice'
@Metadata.allowExtensions: true
@UI.headerInfo:{
    typeName: 'Proforma Invoice / Quotation',
    typeNamePlural: 'Proforma Invoice / Quotation',
    title:{ type: #STANDARD, value: 'SalesOrder' } }
define root view entity ZC_PRF_INV
  provider contract transactional_query
  as projection on ZI_PRF_INV
{
      @UI.facet: [{ id : 'SalesOrder',
      purpose: #STANDARD,
      type: #IDENTIFICATION_REFERENCE,
      label: 'Proforma Invoice / Quotation',
      position: 10 }]
      @UI.lineItem:       [{ position: 10, label: 'Sales Order' },{ type: #FOR_ACTION , dataAction: 'ZPRINT', label: 'Generate Print'}]
      @UI.identification: [{ position: 10, label: 'Sales Order' }]
      @UI.selectionField: [{ position: 10 }]

  key SalesOrder,

      @UI.lineItem:       [{ position: 20, label: 'Sales Order Date' }]
      @UI.identification: [{ position: 20, label: 'Sales Order Date' }]
      @UI.selectionField: [{ position: 20 }]
      SalesOrderDate,
      base64,
      m_ind,
      FormType
      
//      @UI.selectionField: [{ position: 10 }]
//      @Consumption.valueHelpDefinition: [{entity: {name: 'ZC_FORM_NAME',element: 'Name'},  useForValidation: true}]
//      @UI.textArrangement: #TEXT_ONLY
//      Form
}
