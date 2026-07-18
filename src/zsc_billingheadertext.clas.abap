"! <p class="shorttext synchronized">Consumption model for client proxy - generated</p>
"! This class has been generated based on the metadata with namespace
"! <em>com.sap.gateway.srvd_a2x.api_billingdocument.v0001</em>
CLASS zsc_billingheadertext DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cl_v4_abs_pm_model_prov
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES:
      "! <p class="shorttext synchronized">Types for primitive collection fields</p>
      BEGIN OF tys_types_for_prim_colls,
        "! additionalTargets
        "! Used for TYS_SAP_MESSAGE-ADDITIONAL_TARGETS
        additional_targets TYPE string,
      END OF tys_types_for_prim_colls.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of D_BILLG_DOC_CRTE_FRM_SDDOC</p>
      BEGIN OF tys_value_controls_1,
        "! BILLING_DOCUMENT_DATE
        billing_document_date TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_1.

    TYPES:
      "! <p class="shorttext synchronized">D_BillgDocCrteFrmSDDocRefPP</p>
      BEGIN OF tys_d_billg_doc_crte_frm_sddoc,
        "! <em>Value Control Structure</em>
        value_controls        TYPE tys_value_controls_1,
        "! SDDocument
        sddocument            TYPE c LENGTH 10,
        "! BillingDocumentType
        billing_document_type TYPE c LENGTH 4,
        "! BillingDocumentDate
        billing_document_date TYPE datn,
        "! DestinationCountry
        destination_country   TYPE c LENGTH 3,
        "! SalesOrganization
        sales_organization    TYPE c LENGTH 4,
        "! SDDocumentCategory
        sddocument_category   TYPE c LENGTH 4,
      END OF tys_d_billg_doc_crte_frm_sddoc,
      "! <p class="shorttext synchronized">List of D_BillgDocCrteFrmSDDocRefPP</p>
      tyt_d_billg_doc_crte_frm_sddoc TYPE STANDARD TABLE OF tys_d_billg_doc_crte_frm_sddoc WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of D_BILLG_DOC_CRTE_FRM_SDD_2</p>
      BEGIN OF tys_value_controls_2,
        "! DEFAULT_BILLING_DOCUMENT_D
        default_billing_document_d TYPE /iwbep/v4_value_control,
        "! CUT_OFF_BILLING_DOCUMENT_D
        cut_off_billing_document_d TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_2.

    TYPES:
      "! <p class="shorttext synchronized">D_BillgDocCrteFrmSDDocCtrlPP</p>
      BEGIN OF tys_d_billg_doc_crte_frm_sdd_2,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_2,
        "! DefaultBillingDocumentDate
        default_billing_document_d TYPE datn,
        "! DefaultBillingDocumentType
        default_billing_document_t TYPE c LENGTH 4,
        "! AutomPostingToAcctgIsDisabled
        autom_posting_to_acctg_is  TYPE abap_bool,
        "! CutOffBillingDocumentDate
        cut_off_billing_document_d TYPE datn,
      END OF tys_d_billg_doc_crte_frm_sdd_2,
      "! <p class="shorttext synchronized">List of D_BillgDocCrteFrmSDDocCtrlPP</p>
      tyt_d_billg_doc_crte_frm_sdd_2 TYPE STANDARD TABLE OF tys_d_billg_doc_crte_frm_sdd_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of SAP_MESSAGE</p>
      BEGIN OF tys_value_controls_3,
        "! TARGET
        target       TYPE /iwbep/v4_value_control,
        "! LONGTEXT_URL
        longtext_url TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_3.

    TYPES:
      "! <p class="shorttext synchronized">SAP__Message</p>
      BEGIN OF tys_sap_message,
        "! <em>Value Control Structure</em>
        value_controls     TYPE tys_value_controls_3,
        "! code
        code               TYPE string,
        "! message
        message            TYPE string,
        "! target
        target             TYPE string,
        "! additionalTargets
        additional_targets TYPE STANDARD TABLE OF tys_types_for_prim_colls-additional_targets WITH DEFAULT KEY,
        "! transition
        transition         TYPE abap_bool,
        "! numericSeverity
        numeric_severity   TYPE int1,
        "! longtextUrl
        longtext_url       TYPE string,
      END OF tys_sap_message,
      "! <p class="shorttext synchronized">List of SAP__Message</p>
      tyt_sap_message TYPE STANDARD TABLE OF tys_sap_message WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of PRICING_DOCUMENT_HEADER_EL</p>
      BEGIN OF tys_value_controls_4,
        "! CONDITION_RATE_AMOUNT
        condition_rate_amount      TYPE /iwbep/v4_value_control,
        "! CONDITION_QUANTITY
        condition_quantity         TYPE /iwbep/v4_value_control,
        "! CONDITION_BASE_QUANTITY
        condition_base_quantity    TYPE /iwbep/v4_value_control,
        "! CONDITION_RATE_RATIO
        condition_rate_ratio       TYPE /iwbep/v4_value_control,
        "! CONDITION_AMOUNT
        condition_amount           TYPE /iwbep/v4_value_control,
        "! CONDITION_BASE_AMOUNT
        condition_base_amount      TYPE /iwbep/v4_value_control,
        "! CONDITION_IS_MANUALLY_CHAN
        condition_is_manually_chan TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_4.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of BILLING_DOCUMENT_ITEM_TYPE</p>
      BEGIN OF tys_value_controls_5,
        "! CREATION_DATE
        creation_date              TYPE /iwbep/v4_value_control,
        "! SERVICES_RENDERED_DATE
        services_rendered_date     TYPE /iwbep/v4_value_control,
        "! PRICING_DATE
        pricing_date               TYPE /iwbep/v4_value_control,
        "! PRICE_DETN_EXCHANGE_RATE_D
        price_detn_exchange_rate_d TYPE /iwbep/v4_value_control,
        "! TAX_RATE_VALIDITY_START_DA
        tax_rate_validity_start_da TYPE /iwbep/v4_value_control,
        "! BILLING_PERIOD_OF_PERF_STA
        billing_period_of_perf_sta TYPE /iwbep/v4_value_control,
        "! BILLING_PERIOD_OF_PERF_END
        billing_period_of_perf_end TYPE /iwbep/v4_value_control,
        "! HIGHER_LEVEL_ITEM
        higher_level_item          TYPE /iwbep/v4_value_control,
        "! ITEM_PARTNER
        item_partner               TYPE /iwbep/v4_value_control,
        "! ITEM_TEXT
        item_text                  TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_5.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of BILLING_DOCUMENT_TYPE</p>
      BEGIN OF tys_value_controls_6,
        "! CREATION_DATE
        creation_date             TYPE /iwbep/v4_value_control,
        "! LAST_CHANGE_DATE
        last_change_date          TYPE /iwbep/v4_value_control,
        "! LAST_CHANGE_DATE_TIME
        last_change_date_time     TYPE /iwbep/v4_value_control,
        "! BILLING_DOCUMENT_DATE
        billing_document_date     TYPE /iwbep/v4_value_control,
        "! FIXED_VALUE_DATE
        fixed_value_date          TYPE /iwbep/v4_value_control,
        "! EXCHANGE_RATE_DATE
        exchange_rate_date        TYPE /iwbep/v4_value_control,
        "! INVOICE_LIST_BILLING_DATE
        invoice_list_billing_date TYPE /iwbep/v4_value_control,
        "! YY_1_LRDATE_BDH
        yy_1_lrdate_bdh           TYPE /iwbep/v4_value_control,
        "! ITEM
        item                      TYPE /iwbep/v4_value_control,
        "! PARTNER
        partner                   TYPE /iwbep/v4_value_control,
        "! PRICING_DOCUMENT_2
        pricing_document_2        TYPE /iwbep/v4_value_control,
        "! TEXT
        text                      TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_6.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of PRICING_DOCUMENT_TYPE</p>
      BEGIN OF tys_value_controls_7,
        "! PRICING_DOCUMENT_ELEMENT
        pricing_document_element TYPE /iwbep/v4_value_control,
        "! PRICING_DOCUMENT_ITEM
        pricing_document_item    TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_7.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of PRICING_DOCUMENT_ITEM_TYPE</p>
      BEGIN OF tys_value_controls_8,
        "! PRICING_DOCUMENT_ITEM_ELEM
        pricing_document_item_elem TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_8.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of BILLING_DOCUMENT_PARTNER_T</p>
      BEGIN OF tys_value_controls_9,
        "! CUSTOMER
        customer                   TYPE /iwbep/v4_value_control,
        "! SUPPLIER
        supplier                   TYPE /iwbep/v4_value_control,
        "! PERSONNEL
        personnel                  TYPE /iwbep/v4_value_control,
        "! CONTACT_PERSON
        contact_person             TYPE /iwbep/v4_value_control,
        "! BUSINESS_PARTNER_ADDRESS_U
        business_partner_address_u TYPE /iwbep/v4_value_control,
        "! ADDRESS_ID
        address_id                 TYPE /iwbep/v4_value_control,
        "! ADDRESS_PERSON_ID
        address_person_id          TYPE /iwbep/v4_value_control,
        "! VATREGISTRATION
        vatregistration            TYPE /iwbep/v4_value_control,
        "! UNLOADING_POINT_NAME
        unloading_point_name       TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_9.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of PRICING_DOCUMENT_ITEM_ELEM</p>
      BEGIN OF tys_value_controls_10,
        "! CONDITION_RATE_AMOUNT
        condition_rate_amount      TYPE /iwbep/v4_value_control,
        "! CONDITION_QUANTITY
        condition_quantity         TYPE /iwbep/v4_value_control,
        "! CONDITION_BASE_QUANTITY
        condition_base_quantity    TYPE /iwbep/v4_value_control,
        "! CONDITION_RATE_RATIO
        condition_rate_ratio       TYPE /iwbep/v4_value_control,
        "! CONDITION_AMOUNT
        condition_amount           TYPE /iwbep/v4_value_control,
        "! CONDITION_BASE_AMOUNT
        condition_base_amount      TYPE /iwbep/v4_value_control,
        "! CONDITION_IS_MANUALLY_CHAN
        condition_is_manually_chan TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_10.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of BILLING_DOCUMENT_ITEM_PA_2</p>
      BEGIN OF tys_value_controls_11,
        "! CUSTOMER
        customer                   TYPE /iwbep/v4_value_control,
        "! SUPPLIER
        supplier                   TYPE /iwbep/v4_value_control,
        "! PERSONNEL
        personnel                  TYPE /iwbep/v4_value_control,
        "! CONTACT_PERSON
        contact_person             TYPE /iwbep/v4_value_control,
        "! BUSINESS_PARTNER_ADDRESS_U
        business_partner_address_u TYPE /iwbep/v4_value_control,
        "! ADDRESS_ID
        address_id                 TYPE /iwbep/v4_value_control,
        "! ADDRESS_PERSON_ID
        address_person_id          TYPE /iwbep/v4_value_control,
        "! VATREGISTRATION
        vatregistration            TYPE /iwbep/v4_value_control,
        "! UNLOADING_POINT_NAME
        unloading_point_name       TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_11.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of action CreateFromSDDocument</p>
      "! <em>with the internal name</em> CREATE_FROM_SDDOCUMENT
      BEGIN OF tys_parameters_1,
        "! _Control
        control   TYPE tys_d_billg_doc_crte_frm_sdd_2,
        "! _Reference
        reference TYPE tyt_d_billg_doc_crte_frm_sddoc,
      END OF tys_parameters_1,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_1</p>
      tyt_parameters_1 TYPE STANDARD TABLE OF tys_parameters_1 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">BillingDocumentItemPartner_Type</p>
      BEGIN OF tys_billing_document_item_pa_2,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_11,
        "! <em>Key property</em> BillingDocument
        billing_document           TYPE c LENGTH 10,
        "! <em>Key property</em> BillingDocumentItem
        billing_document_item      TYPE c LENGTH 6,
        "! <em>Key property</em> PartnerFunction
        partner_function           TYPE c LENGTH 2,
        "! Customer
        customer                   TYPE c LENGTH 10,
        "! Supplier
        supplier                   TYPE c LENGTH 10,
        "! Personnel
        personnel                  TYPE c LENGTH 8,
        "! ContactPerson
        contact_person             TYPE c LENGTH 10,
        "! ReferenceBusinessPartner
        reference_business_partner TYPE c LENGTH 10,
        "! BusinessPartnerAddressUUID
        business_partner_address_u TYPE sysuuid_x16,
        "! PartnerIsSpecificForSDDocItem
        partner_is_specific_for_sd TYPE abap_bool,
        "! FullName
        full_name                  TYPE c LENGTH 80,
        "! AddressID
        address_id                 TYPE c LENGTH 10,
        "! AddressPersonID
        address_person_id          TYPE c LENGTH 10,
        "! AddressObjectType
        address_object_type        TYPE c LENGTH 1,
        "! SDDocPartnerAddrIsDocSpecific
        sddoc_partner_addr_is_doc  TYPE abap_bool,
        "! FormOfAddress
        form_of_address            TYPE c LENGTH 4,
        "! CorrespondenceLanguage
        correspondence_language    TYPE c LENGTH 2,
        "! StreetPrefixName1
        street_prefix_name_1       TYPE c LENGTH 40,
        "! StreetPrefixName2
        street_prefix_name_2       TYPE c LENGTH 40,
        "! StreetName
        street_name                TYPE c LENGTH 60,
        "! StreetSuffixName1
        street_suffix_name_1       TYPE c LENGTH 40,
        "! StreetSuffixName2
        street_suffix_name_2       TYPE c LENGTH 40,
        "! HouseNumber
        house_number               TYPE c LENGTH 10,
        "! PostalCode
        postal_code                TYPE c LENGTH 10,
        "! CityName
        city_name                  TYPE c LENGTH 40,
        "! DistrictName
        district_name              TYPE c LENGTH 40,
        "! Region
        region                     TYPE c LENGTH 3,
        "! Country
        country                    TYPE c LENGTH 3,
        "! InternationalPhoneNumber
        international_phone_number TYPE c LENGTH 30,
        "! InternationalMobilePhoneNumber
        international_mobile_phone TYPE c LENGTH 30,
        "! InternationalFaxNumber
        international_fax_number   TYPE c LENGTH 30,
        "! EmailAddress
        email_address              TYPE c LENGTH 241,
        "! POBox
        pobox                      TYPE c LENGTH 10,
        "! POBoxPostalCode
        pobox_postal_code          TYPE c LENGTH 10,
        "! TaxJurisdiction
        tax_jurisdiction           TYPE c LENGTH 15,
        "! TransportZone
        transport_zone             TYPE c LENGTH 10,
        "! VATRegistration
        vatregistration            TYPE c LENGTH 20,
        "! UnloadingPointName
        unloading_point_name       TYPE c LENGTH 25,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_billing_document_item_pa_2,
      "! <p class="shorttext synchronized">List of BillingDocumentItemPartner_Type</p>
      tyt_billing_document_item_pa_2 TYPE STANDARD TABLE OF tys_billing_document_item_pa_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">BillingDocumentItemText_Type</p>
      BEGIN OF tys_billing_document_item_te_2,
        "! <em>Key property</em> BillingDocument
        billing_document      TYPE c LENGTH 10,
        "! <em>Key property</em> BillingDocumentItem
        billing_document_item TYPE c LENGTH 6,
        "! <em>Key property</em> Language
        language              TYPE c LENGTH 2,
        "! <em>Key property</em> LongTextID
        long_text_id          TYPE c LENGTH 4,
        "! LongText
        long_text             TYPE string,
        "! SAP__Messages
        sap_messages          TYPE tyt_sap_message,
        "! odata.etag
        etag                  TYPE string,
      END OF tys_billing_document_item_te_2,
      "! <p class="shorttext synchronized">List of BillingDocumentItemText_Type</p>
      tyt_billing_document_item_te_2 TYPE STANDARD TABLE OF tys_billing_document_item_te_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">BillingDocumentItem_Type</p>
      BEGIN OF tys_billing_document_item_type,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_5,
        "! <em>Key property</em> BillingDocument
        billing_document           TYPE c LENGTH 10,
        "! <em>Key property</em> BillingDocumentItem
        billing_document_item      TYPE c LENGTH 6,
        "! SalesDocumentItemCategory
        sales_document_item_catego TYPE c LENGTH 4,
        "! SalesDocumentItemType
        sales_document_item_type   TYPE c LENGTH 1,
        "! ReturnItemProcessingType
        return_item_processing_typ TYPE c LENGTH 1,
        "! CreatedByUser
        created_by_user            TYPE c LENGTH 12,
        "! CreationDate
        creation_date              TYPE datn,
        "! CreationTime
        creation_time              TYPE timn,
        "! ReferenceLogicalSystem
        reference_logical_system   TYPE c LENGTH 10,
        "! OrganizationDivision
        organization_division      TYPE c LENGTH 2,
        "! Division
        division                   TYPE c LENGTH 2,
        "! SalesOffice
        sales_office               TYPE c LENGTH 4,
        "! Product
        product                    TYPE c LENGTH 18,
        "! OriginallyRequestedMaterial
        originally_requested_mater TYPE c LENGTH 18,
        "! InternationalArticleNumber
        international_article_numb TYPE c LENGTH 18,
        "! PricingReferenceMaterial
        pricing_reference_material TYPE c LENGTH 18,
        "! Batch
        batch                      TYPE c LENGTH 10,
        "! ProductGroup
        product_group              TYPE c LENGTH 9,
        "! AdditionalMaterialGroup1
        additional_material_group  TYPE c LENGTH 3,
        "! AdditionalMaterialGroup2
        additional_material_grou_2 TYPE c LENGTH 3,
        "! AdditionalMaterialGroup3
        additional_material_grou_3 TYPE c LENGTH 3,
        "! AdditionalMaterialGroup4
        additional_material_grou_4 TYPE c LENGTH 3,
        "! AdditionalMaterialGroup5
        additional_material_grou_5 TYPE c LENGTH 3,
        "! ProductConfiguration
        product_configuration      TYPE c LENGTH 18,
        "! Plant
        plant                      TYPE c LENGTH 4,
        "! StorageLocation
        storage_location           TYPE c LENGTH 4,
        "! PlantRegion
        plant_region               TYPE c LENGTH 3,
        "! PlantCounty
        plant_county               TYPE c LENGTH 3,
        "! PlantCity
        plant_city                 TYPE c LENGTH 4,
        "! MaterialDeterminationType
        material_determination_typ TYPE c LENGTH 1,
        "! SoldProduct
        sold_product               TYPE c LENGTH 18,
        "! BillingDocumentItemText
        billing_document_item_text TYPE c LENGTH 40,
        "! ServicesRenderedDate
        services_rendered_date     TYPE datn,
        "! BillingQuantity
        billing_quantity           TYPE p LENGTH 7 DECIMALS 3,
        "! BillingQuantityUnitSAPCode
        billing_quantity_unit_sapc TYPE c LENGTH 3,
        "! BillingQuantityUnitISOCode
        billing_quantity_unit_isoc TYPE c LENGTH 3,
        "! BillingQuantityInBaseUnit
        billing_quantity_in_base_u TYPE p LENGTH 7 DECIMALS 3,
        "! BaseUnitSAPCode
        base_unit_sapcode          TYPE c LENGTH 3,
        "! BaseUnitISOCode
        base_unit_isocode          TYPE c LENGTH 3,
        "! MRPRequiredQuantityInBaseUnit
        mrprequired_quantity_in_ba TYPE p LENGTH 7 DECIMALS 3,
        "! BillingToBaseQuantityDnmntr
        billing_to_base_quantity_d TYPE p LENGTH 3 DECIMALS 0,
        "! BillingToBaseQuantityNmrtr
        billing_to_base_quantity_n TYPE p LENGTH 3 DECIMALS 0,
        "! ItemGrossWeight
        item_gross_weight          TYPE p LENGTH 8 DECIMALS 3,
        "! ItemNetWeight
        item_net_weight            TYPE p LENGTH 8 DECIMALS 3,
        "! ItemWeightUnitSAPCode
        item_weight_unit_sapcode   TYPE c LENGTH 3,
        "! ItemWeightUnitISOCode
        item_weight_unit_isocode   TYPE c LENGTH 3,
        "! ItemVolume
        item_volume                TYPE p LENGTH 8 DECIMALS 3,
        "! ItemVolumeUnitSAPCode
        item_volume_unit_sapcode   TYPE c LENGTH 3,
        "! ItemVolumeUnitISOCode
        item_volume_unit_isocode   TYPE c LENGTH 3,
        "! BillingPlanRule
        billing_plan_rule          TYPE c LENGTH 1,
        "! BillingPlan
        billing_plan               TYPE c LENGTH 10,
        "! BillingPlanItem
        billing_plan_item          TYPE c LENGTH 6,
        "! NetAmount
        net_amount                 TYPE decfloat16,
        "! TransactionCurrency
        transaction_currency       TYPE c LENGTH 3,
        "! GrossAmount
        gross_amount               TYPE decfloat16,
        "! PricingDate
        pricing_date               TYPE datn,
        "! AbsltPriceDetnExchangeRate
        abslt_price_detn_exchange  TYPE p LENGTH 5 DECIMALS 5,
        "! PriceDetnExchRateIsIndrctQtan
        price_detn_exch_rate_is_in TYPE abap_bool,
        "! PriceDetnExchangeRateDate
        price_detn_exchange_rate_d TYPE datn,
        "! PricingScaleQuantityInBaseUnit
        pricing_scale_quantity_in  TYPE p LENGTH 7 DECIMALS 3,
        "! TaxAmount
        tax_amount                 TYPE decfloat16,
        "! CostAmount
        cost_amount                TYPE decfloat16,
        "! Subtotal1Amount
        subtotal_1_amount          TYPE decfloat16,
        "! Subtotal2Amount
        subtotal_2_amount          TYPE decfloat16,
        "! Subtotal3Amount
        subtotal_3_amount          TYPE decfloat16,
        "! Subtotal4Amount
        subtotal_4_amount          TYPE decfloat16,
        "! Subtotal5Amount
        subtotal_5_amount          TYPE decfloat16,
        "! Subtotal6Amount
        subtotal_6_amount          TYPE decfloat16,
        "! StatisticalValueControl
        statistical_value_control  TYPE c LENGTH 1,
        "! CashDiscountIsDeductible
        cash_discount_is_deductibl TYPE abap_bool,
        "! CustomerConditionGroup1
        customer_condition_group_1 TYPE c LENGTH 2,
        "! CustomerConditionGroup2
        customer_condition_group_2 TYPE c LENGTH 2,
        "! CustomerConditionGroup3
        customer_condition_group_3 TYPE c LENGTH 2,
        "! CustomerConditionGroup4
        customer_condition_group_4 TYPE c LENGTH 2,
        "! CustomerConditionGroup5
        customer_condition_group_5 TYPE c LENGTH 2,
        "! ManualPriceChangeType
        manual_price_change_type   TYPE c LENGTH 1,
        "! MaterialPricingGroup
        material_pricing_group     TYPE c LENGTH 2,
        "! AbsltStatisticsExchangeRate
        abslt_statistics_exchange  TYPE p LENGTH 5 DECIMALS 5,
        "! StatisticsExchRateIsIndrctQtan
        statistics_exch_rate_is_in TYPE abap_bool,
        "! MainItemPricingRefMaterial
        main_item_pricing_ref_mate TYPE c LENGTH 18,
        "! MainItemMaterialPricingGroup
        main_item_material_pricing TYPE c LENGTH 2,
        "! TimeSheetOvertimeCategory
        time_sheet_overtime_catego TYPE c LENGTH 4,
        "! DepartureCountry
        departure_country          TYPE c LENGTH 3,
        "! TaxJurisdiction
        tax_jurisdiction           TYPE c LENGTH 15,
        "! ProductTaxClassification1
        product_tax_classification TYPE c LENGTH 1,
        "! ProductTaxClassification2
        product_tax_classificati_2 TYPE c LENGTH 1,
        "! ProductTaxClassification3
        product_tax_classificati_3 TYPE c LENGTH 1,
        "! ProductTaxClassification4
        product_tax_classificati_4 TYPE c LENGTH 1,
        "! ProductTaxClassification5
        product_tax_classificati_5 TYPE c LENGTH 1,
        "! ProductTaxClassification6
        product_tax_classificati_6 TYPE c LENGTH 1,
        "! ProductTaxClassification7
        product_tax_classificati_7 TYPE c LENGTH 1,
        "! ProductTaxClassification8
        product_tax_classificati_8 TYPE c LENGTH 1,
        "! ProductTaxClassification9
        product_tax_classificati_9 TYPE c LENGTH 1,
        "! TaxCode
        tax_code                   TYPE c LENGTH 2,
        "! TaxRateValidityStartDate
        tax_rate_validity_start_da TYPE datn,
        "! EligibleAmountForCashDiscount
        eligible_amount_for_cash_d TYPE decfloat16,
        "! BusinessArea
        business_area              TYPE c LENGTH 4,
        "! ProfitCenter
        profit_center              TYPE c LENGTH 10,
        "! WBSElementExternalID
        wbselement_external_id     TYPE c LENGTH 24,
        "! ProviderContract
        provider_contract          TYPE c LENGTH 20,
        "! ProviderContractItem
        provider_contract_item     TYPE c LENGTH 6,
        "! BillingPeriodOfPerfStartDate
        billing_period_of_perf_sta TYPE datn,
        "! BillingPeriodOfPerfEndDate
        billing_period_of_perf_end TYPE datn,
        "! ControllingArea
        controlling_area           TYPE c LENGTH 4,
        "! CostCenter
        cost_center                TYPE c LENGTH 10,
        "! MatlAccountAssignmentGroup
        matl_account_assignment_gr TYPE c LENGTH 2,
        "! ReferenceSDDocument
        reference_sddocument       TYPE c LENGTH 10,
        "! ReferenceSDDocumentItem
        reference_sddocument_item  TYPE c LENGTH 6,
        "! ReferenceSDDocumentCategory
        reference_sddocument_categ TYPE c LENGTH 4,
        "! SalesDocument
        sales_document             TYPE c LENGTH 10,
        "! SalesDocumentItem
        sales_document_item        TYPE c LENGTH 6,
        "! SalesSDDocumentCategory
        sales_sddocument_category  TYPE c LENGTH 4,
        "! HigherLevelItem
        higher_level_item          TYPE c LENGTH 6,
        "! BillingDocumentItemInPartSgmt
        billing_document_item_in_p TYPE c LENGTH 6,
        "! SalesGroup
        sales_group                TYPE c LENGTH 3,
        "! AdditionalCustomerGroup1
        additional_customer_group  TYPE c LENGTH 3,
        "! AdditionalCustomerGroup2
        additional_customer_grou_2 TYPE c LENGTH 3,
        "! AdditionalCustomerGroup3
        additional_customer_grou_3 TYPE c LENGTH 3,
        "! AdditionalCustomerGroup4
        additional_customer_grou_4 TYPE c LENGTH 3,
        "! AdditionalCustomerGroup5
        additional_customer_grou_5 TYPE c LENGTH 3,
        "! SDDocumentReason
        sddocument_reason          TYPE c LENGTH 3,
        "! ItemIsRelevantForCredit
        item_is_relevant_for_credi TYPE abap_bool,
        "! CreditRelatedPrice
        credit_related_price       TYPE decfloat16,
        "! ShippingPoint
        shipping_point             TYPE c LENGTH 4,
        "! ServiceDocumentType
        service_document_type      TYPE c LENGTH 4,
        "! ServiceDocument
        service_document           TYPE c LENGTH 10,
        "! ServiceDocumentItem
        service_document_item      TYPE c LENGTH 6,
        "! BusinessSolutionOrder
        business_solution_order    TYPE c LENGTH 10,
        "! BusinessSolutionOrderItem
        business_solution_order_it TYPE c LENGTH 6,
        "! HigherLevelItemUsage
        higher_level_item_usage    TYPE c LENGTH 1,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_billing_document_item_type,
      "! <p class="shorttext synchronized">List of BillingDocumentItem_Type</p>
      tyt_billing_document_item_type TYPE STANDARD TABLE OF tys_billing_document_item_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">BillingDocumentPartner_Type</p>
      BEGIN OF tys_billing_document_partner_t,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_9,
        "! <em>Key property</em> BillingDocument
        billing_document           TYPE c LENGTH 10,
        "! <em>Key property</em> PartnerFunction
        partner_function           TYPE c LENGTH 2,
        "! Customer
        customer                   TYPE c LENGTH 10,
        "! Supplier
        supplier                   TYPE c LENGTH 10,
        "! Personnel
        personnel                  TYPE c LENGTH 8,
        "! ContactPerson
        contact_person             TYPE c LENGTH 10,
        "! ReferenceBusinessPartner
        reference_business_partner TYPE c LENGTH 10,
        "! BusinessPartnerAddressUUID
        business_partner_address_u TYPE sysuuid_x16,
        "! FullName
        full_name                  TYPE c LENGTH 80,
        "! AddressID
        address_id                 TYPE c LENGTH 10,
        "! AddressPersonID
        address_person_id          TYPE c LENGTH 10,
        "! AddressObjectType
        address_object_type        TYPE c LENGTH 1,
        "! SDDocPartnerAddrIsDocSpecific
        sddoc_partner_addr_is_doc  TYPE abap_bool,
        "! FormOfAddress
        form_of_address            TYPE c LENGTH 4,
        "! CorrespondenceLanguage
        correspondence_language    TYPE c LENGTH 2,
        "! StreetPrefixName1
        street_prefix_name_1       TYPE c LENGTH 40,
        "! StreetPrefixName2
        street_prefix_name_2       TYPE c LENGTH 40,
        "! StreetName
        street_name                TYPE c LENGTH 60,
        "! StreetSuffixName1
        street_suffix_name_1       TYPE c LENGTH 40,
        "! StreetSuffixName2
        street_suffix_name_2       TYPE c LENGTH 40,
        "! HouseNumber
        house_number               TYPE c LENGTH 10,
        "! PostalCode
        postal_code                TYPE c LENGTH 10,
        "! CityName
        city_name                  TYPE c LENGTH 40,
        "! DistrictName
        district_name              TYPE c LENGTH 40,
        "! Region
        region                     TYPE c LENGTH 3,
        "! Country
        country                    TYPE c LENGTH 3,
        "! InternationalPhoneNumber
        international_phone_number TYPE c LENGTH 30,
        "! InternationalMobilePhoneNumber
        international_mobile_phone TYPE c LENGTH 30,
        "! InternationalFaxNumber
        international_fax_number   TYPE c LENGTH 30,
        "! EmailAddress
        email_address              TYPE c LENGTH 241,
        "! POBox
        pobox                      TYPE c LENGTH 10,
        "! POBoxPostalCode
        pobox_postal_code          TYPE c LENGTH 10,
        "! TaxJurisdiction
        tax_jurisdiction           TYPE c LENGTH 15,
        "! TransportZone
        transport_zone             TYPE c LENGTH 10,
        "! VATRegistration
        vatregistration            TYPE c LENGTH 20,
        "! UnloadingPointName
        unloading_point_name       TYPE c LENGTH 25,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_billing_document_partner_t,
      "! <p class="shorttext synchronized">List of BillingDocumentPartner_Type</p>
      tyt_billing_document_partner_t TYPE STANDARD TABLE OF tys_billing_document_partner_t WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">BillingDocumentText_Type</p>
      BEGIN OF tys_billing_document_text_type,
        "! <em>Key property</em> BillingDocument
        billing_document TYPE c LENGTH 10,
        "! <em>Key property</em> Language
        language         TYPE c LENGTH 2,
        "! <em>Key property</em> LongTextID
        long_text_id     TYPE c LENGTH 4,
        "! LongText
        long_text        TYPE string,
        "! SAP__Messages
        sap_messages     TYPE tyt_sap_message,
        "! odata.etag
        etag             TYPE string,
      END OF tys_billing_document_text_type,
      "! <p class="shorttext synchronized">List of BillingDocumentText_Type</p>
      tyt_billing_document_text_type TYPE STANDARD TABLE OF tys_billing_document_text_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">BillingDocument_Type</p>
      BEGIN OF tys_billing_document_type,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_6,
        "! <em>Key property</em> BillingDocument
        billing_document           TYPE c LENGTH 10,
        "! SDDocumentCategory
        sddocument_category        TYPE c LENGTH 4,
        "! BillingDocumentCategory
        billing_document_category  TYPE c LENGTH 1,
        "! BillingDocumentType
        billing_document_type_2    TYPE c LENGTH 4,
        "! CreatedByUser
        created_by_user            TYPE c LENGTH 12,
        "! CreationDate
        creation_date              TYPE datn,
        "! CreationTime
        creation_time              TYPE timn,
        "! LastChangeDate
        last_change_date           TYPE datn,
        "! LastChangeDateTime
        last_change_date_time      TYPE timestampl,
        "! LogicalSystem
        logical_system             TYPE c LENGTH 10,
        "! SalesOrganization
        sales_organization         TYPE c LENGTH 4,
        "! DistributionChannel
        distribution_channel       TYPE c LENGTH 2,
        "! Division
        division                   TYPE c LENGTH 2,
        "! BillingDocumentDate
        billing_document_date      TYPE datn,
        "! BillingDocumentIsCancelled
        billing_document_is_cancel TYPE abap_bool,
        "! CancelledBillingDocument
        cancelled_billing_document TYPE c LENGTH 10,
        "! BillingDocCombinationCriteria
        billing_doc_combination_cr TYPE c LENGTH 40,
        "! IsIntrastatReportingRelevant
        is_intrastat_reporting_rel TYPE abap_bool,
        "! IsIntrastatReportingExcluded
        is_intrastat_reporting_exc TYPE abap_bool,
        "! TotalNetAmount
        total_net_amount           TYPE decfloat16,
        "! TransactionCurrency
        transaction_currency       TYPE c LENGTH 3,
        "! StatisticsCurrency
        statistics_currency        TYPE c LENGTH 3,
        "! TotalTaxAmount
        total_tax_amount           TYPE decfloat16,
        "! TotalGrossAmount
        total_gross_amount         TYPE decfloat16,
        "! CustomerPriceGroup
        customer_price_group       TYPE c LENGTH 2,
        "! PriceListType
        price_list_type            TYPE c LENGTH 2,
        "! TaxDepartureCountry
        tax_departure_country      TYPE c LENGTH 3,
        "! VATRegistration
        vatregistration            TYPE c LENGTH 20,
        "! VATRegistrationOrigin
        vatregistration_origin     TYPE c LENGTH 1,
        "! VATRegistrationCountry
        vatregistration_country    TYPE c LENGTH 3,
        "! CustomerTaxClassification1
        customer_tax_classificatio TYPE c LENGTH 1,
        "! CustomerTaxClassification2
        customer_tax_classificat_2 TYPE c LENGTH 1,
        "! CustomerTaxClassification3
        customer_tax_classificat_3 TYPE c LENGTH 1,
        "! CustomerTaxClassification4
        customer_tax_classificat_4 TYPE c LENGTH 1,
        "! CustomerTaxClassification5
        customer_tax_classificat_5 TYPE c LENGTH 1,
        "! CustomerTaxClassification6
        customer_tax_classificat_6 TYPE c LENGTH 1,
        "! CustomerTaxClassification7
        customer_tax_classificat_7 TYPE c LENGTH 1,
        "! CustomerTaxClassification8
        customer_tax_classificat_8 TYPE c LENGTH 1,
        "! CustomerTaxClassification9
        customer_tax_classificat_9 TYPE c LENGTH 1,
        "! IsEUTriangularDeal
        is_eutriangular_deal       TYPE abap_bool,
        "! SDPricingProcedure
        sdpricing_procedure        TYPE c LENGTH 6,
        "! ShippingCondition
        shipping_condition         TYPE c LENGTH 2,
        "! IncotermsVersion
        incoterms_version          TYPE c LENGTH 4,
        "! IncotermsClassification
        incoterms_classification   TYPE c LENGTH 3,
        "! IncotermsTransferLocation
        incoterms_transfer_locatio TYPE c LENGTH 28,
        "! IncotermsLocation1
        incoterms_location_1       TYPE c LENGTH 70,
        "! IncotermsLocation2
        incoterms_location_2       TYPE c LENGTH 70,
        "! PayerParty
        payer_party                TYPE c LENGTH 10,
        "! ContractAccount
        contract_account           TYPE c LENGTH 12,
        "! CustomerPaymentTerms
        customer_payment_terms     TYPE c LENGTH 4,
        "! PaymentMethod
        payment_method             TYPE c LENGTH 1,
        "! PaymentReference
        payment_reference          TYPE c LENGTH 30,
        "! FixedValueDate
        fixed_value_date           TYPE datn,
        "! AdditionalValueDays
        additional_value_days      TYPE c LENGTH 2,
        "! SEPAMandate
        sepamandate                TYPE c LENGTH 35,
        "! CompanyCode
        company_code               TYPE c LENGTH 4,
        "! FiscalYear
        fiscal_year                TYPE c LENGTH 4,
        "! AccountingDocument
        accounting_document        TYPE c LENGTH 10,
        "! CustomerAccountAssignmentGroup
        customer_account_assignmen TYPE c LENGTH 2,
        "! AccountingExchangeRateIsSet
        accounting_exchange_rate_i TYPE abap_bool,
        "! AbsltAccountingExchangeRate
        abslt_accounting_exchange  TYPE p LENGTH 5 DECIMALS 5,
        "! AcctgExchangeRateIsIndrctQtan
        acctg_exchange_rate_is_ind TYPE abap_bool,
        "! ExchangeRateDate
        exchange_rate_date         TYPE datn,
        "! ExchangeRateType
        exchange_rate_type         TYPE c LENGTH 4,
        "! DocumentReferenceID
        document_reference_id      TYPE c LENGTH 16,
        "! AssignmentReference
        assignment_reference       TYPE c LENGTH 18,
        "! ReversalReason
        reversal_reason            TYPE c LENGTH 2,
        "! DunningArea
        dunning_area               TYPE c LENGTH 2,
        "! DunningBlockingReason
        dunning_blocking_reason    TYPE c LENGTH 1,
        "! DunningKey
        dunning_key                TYPE c LENGTH 1,
        "! IsRelevantForAccrual
        is_relevant_for_accrual    TYPE abap_bool,
        "! SoldToParty
        sold_to_party              TYPE c LENGTH 10,
        "! PartnerCompany
        partner_company            TYPE c LENGTH 6,
        "! PurchaseOrderByCustomer
        purchase_order_by_customer TYPE c LENGTH 35,
        "! CustomerGroup
        customer_group             TYPE c LENGTH 2,
        "! Country
        country                    TYPE c LENGTH 3,
        "! CityCode
        city_code                  TYPE c LENGTH 4,
        "! SalesDistrict
        sales_district             TYPE c LENGTH 6,
        "! Region
        region                     TYPE c LENGTH 3,
        "! County
        county                     TYPE c LENGTH 3,
        "! CreditControlArea
        credit_control_area        TYPE c LENGTH 4,
        "! PricingDocument
        pricing_document           TYPE c LENGTH 10,
        "! SAPObjectTypeInUppercase
        sapobject_type_in_uppercas TYPE c LENGTH 30,
        "! OverallSDProcessStatus
        overall_sdprocess_status   TYPE c LENGTH 1,
        "! OverallBillingStatus
        overall_billing_status     TYPE c LENGTH 1,
        "! AccountingPostingStatus
        accounting_posting_status  TYPE c LENGTH 1,
        "! AccountingTransferStatus
        accounting_transfer_status TYPE c LENGTH 1,
        "! BillingIssueType
        billing_issue_type         TYPE c LENGTH 1,
        "! InvoiceListStatus
        invoice_list_status        TYPE c LENGTH 1,
        "! OvrlItmGeneralIncompletionSts
        ovrl_itm_general_incomplet TYPE c LENGTH 1,
        "! OverallPricingIncompletionSts
        overall_pricing_incompleti TYPE c LENGTH 1,
        "! InvoiceListType
        invoice_list_type          TYPE c LENGTH 4,
        "! InvoiceListBillingDate
        invoice_list_billing_date  TYPE datn,
        "! YY1_VehicleNo_BDH
        yy_1_vehicle_no_bdh        TYPE c LENGTH 20,
        "! YY1_LRno_BDH
        yy_1_lrno_bdh              TYPE c LENGTH 15,
        "! YY1_LRdate_BDH
        yy_1_lrdate_bdh            TYPE datn,
        "! YY1_VehicleType_BDH
        yy_1_vehicle_type_bdh      TYPE c LENGTH 4,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_billing_document_type,
      "! <p class="shorttext synchronized">List of BillingDocument_Type</p>
      tyt_billing_document_type TYPE STANDARD TABLE OF tys_billing_document_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">PricingDocumentHeaderElement_Type</p>
      BEGIN OF tys_pricing_document_header_el,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_4,
        "! <em>Key property</em> PricingDocument
        pricing_document           TYPE c LENGTH 10,
        "! <em>Key property</em> PrcgDocumentHostObjectNodeID
        prcg_document_host_object  TYPE c LENGTH 90,
        "! <em>Key property</em> PrcgDocHostObjSONTInUppercase
        prcg_doc_host_obj_sontin_u TYPE c LENGTH 30,
        "! <em>Key property</em> PricingProcedureStep
        pricing_procedure_step     TYPE c LENGTH 3,
        "! <em>Key property</em> PricingDocumentElementCounter
        pricing_document_element_c TYPE c LENGTH 3,
        "! ConditionType
        condition_type             TYPE c LENGTH 4,
        "! PriceElementDescription
        price_element_description  TYPE c LENGTH 30,
        "! ConditionClass
        condition_class            TYPE c LENGTH 1,
        "! ConditionCalculationType
        condition_calculation_type TYPE c LENGTH 3,
        "! ConditionRateAmount
        condition_rate_amount      TYPE p LENGTH 13 DECIMALS 9,
        "! ConditionCurrency
        condition_currency         TYPE c LENGTH 3,
        "! ConditionQuantity
        condition_quantity         TYPE p LENGTH 3 DECIMALS 0,
        "! ConditionBaseQuantity
        condition_base_quantity    TYPE p LENGTH 13 DECIMALS 9,
        "! ConditionQuantityISOUnit
        condition_quantity_isounit TYPE c LENGTH 3,
        "! ConditionQuantitySAPUnit
        condition_quantity_sapunit TYPE c LENGTH 3,
        "! ConditionRateRatio
        condition_rate_ratio       TYPE p LENGTH 13 DECIMALS 9,
        "! ConditionRateRatioISOUnit
        condition_rate_ratio_isoun TYPE c LENGTH 3,
        "! ConditionRateRatioSAPUnit
        condition_rate_ratio_sapun TYPE c LENGTH 3,
        "! ConditionAmount
        condition_amount           TYPE decfloat16,
        "! ConditionBaseAmount
        condition_base_amount      TYPE p LENGTH 13 DECIMALS 9,
        "! TransactionCurrency
        transaction_currency       TYPE c LENGTH 3,
        "! TaxCode
        tax_code                   TYPE c LENGTH 2,
        "! VariantCondition
        variant_condition          TYPE c LENGTH 26,
        "! ConditionOrigin
        condition_origin           TYPE c LENGTH 1,
        "! ConditionInactiveReason
        condition_inactive_reason  TYPE c LENGTH 1,
        "! ConditionIsManuallyChanged
        condition_is_manually_chan TYPE abap_bool,
        "! ConditionIsForStatistics
        condition_is_for_statistic TYPE abap_bool,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_pricing_document_header_el,
      "! <p class="shorttext synchronized">List of PricingDocumentHeaderElement_Type</p>
      tyt_pricing_document_header_el TYPE STANDARD TABLE OF tys_pricing_document_header_el WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">PricingDocumentItemElement_Type</p>
      BEGIN OF tys_pricing_document_item_elem,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_10,
        "! <em>Key property</em> PricingDocument
        pricing_document           TYPE c LENGTH 10,
        "! <em>Key property</em> PrcgDocumentHostObjectNodeID
        prcg_document_host_object  TYPE c LENGTH 90,
        "! <em>Key property</em> PrcgDocHostObjSONTInUppercase
        prcg_doc_host_obj_sontin_u TYPE c LENGTH 30,
        "! <em>Key property</em> PricingDocumentItem
        pricing_document_item      TYPE c LENGTH 6,
        "! <em>Key property</em> PricingProcedureStep
        pricing_procedure_step     TYPE c LENGTH 3,
        "! <em>Key property</em> PricingDocItemElementCounter
        pricing_doc_item_element_c TYPE c LENGTH 3,
        "! ConditionType
        condition_type             TYPE c LENGTH 4,
        "! PriceElementDescription
        price_element_description  TYPE c LENGTH 30,
        "! ConditionClass
        condition_class            TYPE c LENGTH 1,
        "! ConditionCalculationType
        condition_calculation_type TYPE c LENGTH 3,
        "! ConditionRateAmount
        condition_rate_amount      TYPE p LENGTH 13 DECIMALS 9,
        "! ConditionCurrency
        condition_currency         TYPE c LENGTH 3,
        "! ConditionQuantity
        condition_quantity         TYPE p LENGTH 3 DECIMALS 0,
        "! ConditionBaseQuantity
        condition_base_quantity    TYPE p LENGTH 13 DECIMALS 9,
        "! ConditionQuantityISOUnit
        condition_quantity_isounit TYPE c LENGTH 3,
        "! ConditionQuantitySAPUnit
        condition_quantity_sapunit TYPE c LENGTH 3,
        "! ConditionRateRatio
        condition_rate_ratio       TYPE p LENGTH 13 DECIMALS 9,
        "! ConditionRateRatioISOUnit
        condition_rate_ratio_isoun TYPE c LENGTH 3,
        "! ConditionRateRatioSAPUnit
        condition_rate_ratio_sapun TYPE c LENGTH 3,
        "! ConditionAmount
        condition_amount           TYPE decfloat16,
        "! ConditionBaseAmount
        condition_base_amount      TYPE p LENGTH 13 DECIMALS 9,
        "! TransactionCurrency
        transaction_currency       TYPE c LENGTH 3,
        "! TaxCode
        tax_code                   TYPE c LENGTH 2,
        "! VariantCondition
        variant_condition          TYPE c LENGTH 26,
        "! ConditionOrigin
        condition_origin           TYPE c LENGTH 1,
        "! ConditionInactiveReason
        condition_inactive_reason  TYPE c LENGTH 1,
        "! ConditionIsManuallyChanged
        condition_is_manually_chan TYPE abap_bool,
        "! ConditionIsForStatistics
        condition_is_for_statistic TYPE abap_bool,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_pricing_document_item_elem,
      "! <p class="shorttext synchronized">List of PricingDocumentItemElement_Type</p>
      tyt_pricing_document_item_elem TYPE STANDARD TABLE OF tys_pricing_document_item_elem WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">PricingDocumentItem_Type</p>
      BEGIN OF tys_pricing_document_item_type,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_8,
        "! <em>Key property</em> PricingDocument
        pricing_document           TYPE c LENGTH 10,
        "! <em>Key property</em> PrcgDocumentHostObjectNodeID
        prcg_document_host_object  TYPE c LENGTH 90,
        "! <em>Key property</em> PrcgDocHostObjSONTInUppercase
        prcg_doc_host_obj_sontin_u TYPE c LENGTH 30,
        "! <em>Key property</em> PricingDocumentItem
        pricing_document_item      TYPE c LENGTH 6,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_pricing_document_item_type,
      "! <p class="shorttext synchronized">List of PricingDocumentItem_Type</p>
      tyt_pricing_document_item_type TYPE STANDARD TABLE OF tys_pricing_document_item_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">PricingDocument_Type</p>
      BEGIN OF tys_pricing_document_type,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_7,
        "! <em>Key property</em> PricingDocument
        pricing_document           TYPE c LENGTH 10,
        "! <em>Key property</em> PrcgDocumentHostObjectNodeID
        prcg_document_host_object  TYPE c LENGTH 90,
        "! <em>Key property</em> PrcgDocHostObjSONTInUppercase
        prcg_doc_host_obj_sontin_u TYPE c LENGTH 30,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_pricing_document_type,
      "! <p class="shorttext synchronized">List of PricingDocument_Type</p>
      tyt_pricing_document_type TYPE STANDARD TABLE OF tys_pricing_document_type WITH DEFAULT KEY.


    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the entity sets</p>
      BEGIN OF gcs_entity_set,
        "! BillingDocument
        "! <br/> Collection of type 'BillingDocument_Type'
        billing_document           TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'BILLING_DOCUMENT',
        "! BillingDocumentItem
        "! <br/> Collection of type 'BillingDocumentItem_Type'
        billing_document_item      TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'BILLING_DOCUMENT_ITEM',
        "! BillingDocumentItemPartner
        "! <br/> Collection of type 'BillingDocumentItemPartner_Type'
        billing_document_item_part TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'BILLING_DOCUMENT_ITEM_PART',
        "! BillingDocumentItemText
        "! <br/> Collection of type 'BillingDocumentItemText_Type'
        billing_document_item_text TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'BILLING_DOCUMENT_ITEM_TEXT',
        "! BillingDocumentPartner
        "! <br/> Collection of type 'BillingDocumentPartner_Type'
        billing_document_partner   TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'BILLING_DOCUMENT_PARTNER',
        "! BillingDocumentText
        "! <br/> Collection of type 'BillingDocumentText_Type'
        billing_document_text      TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'BILLING_DOCUMENT_TEXT',
      END OF gcs_entity_set .

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the bound actions</p>
      BEGIN OF gcs_bound_action,
        "! CreateFromSDDocument
        "! <em>bound against collections of entity type</em> BillingDocument_Type
        "! <br/> See structure type {@link ..tys_parameters_1} for the parameters
        create_from_sddocument TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'CREATE_FROM_SDDOCUMENT',
        "! PostToAccounting
        "! <em>bound against entity type</em> BillingDocument_Type
        post_to_accounting     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'POST_TO_ACCOUNTING',
      END OF gcs_bound_action.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for complex types</p>
      BEGIN OF gcs_complex_type,
        "! <p class="shorttext synchronized">Internal names for D_BillgDocCrteFrmSDDocRefPP</p>
        "! See also structure type {@link ..tys_d_billg_doc_crte_frm_sddoc}
        BEGIN OF d_billg_doc_crte_frm_sddoc,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF d_billg_doc_crte_frm_sddoc,
        "! <p class="shorttext synchronized">Internal names for D_BillgDocCrteFrmSDDocCtrlPP</p>
        "! See also structure type {@link ..tys_d_billg_doc_crte_frm_sdd_2}
        BEGIN OF d_billg_doc_crte_frm_sdd_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF d_billg_doc_crte_frm_sdd_2,
        "! <p class="shorttext synchronized">Internal names for SAP__Message</p>
        "! See also structure type {@link ..tys_sap_message}
        BEGIN OF sap_message,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF sap_message,
      END OF gcs_complex_type.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for entity types</p>
      BEGIN OF gcs_entity_type,
        "! <p class="shorttext synchronized">Internal names for BillingDocumentItemPartner_Type</p>
        "! See also structure type {@link ..tys_billing_document_item_pa_2}
        BEGIN OF billing_document_item_pa_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _BillingDocument
            billing_document_2 TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'BILLING_DOCUMENT_2',
            "! _Item
            item               TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'ITEM',
          END OF navigation,
        END OF billing_document_item_pa_2,
        "! <p class="shorttext synchronized">Internal names for BillingDocumentItemText_Type</p>
        "! See also structure type {@link ..tys_billing_document_item_te_2}
        BEGIN OF billing_document_item_te_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _BillingDocument
            billing_document_2 TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'BILLING_DOCUMENT_2',
            "! _Item
            item               TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'ITEM',
          END OF navigation,
        END OF billing_document_item_te_2,
        "! <p class="shorttext synchronized">Internal names for BillingDocumentItem_Type</p>
        "! See also structure type {@link ..tys_billing_document_item_type}
        BEGIN OF billing_document_item_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _BillingDocument
            billing_document_2 TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'BILLING_DOCUMENT_2',
            "! _ItemPartner
            item_partner       TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'ITEM_PARTNER',
            "! _ItemText
            item_text          TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'ITEM_TEXT',
          END OF navigation,
        END OF billing_document_item_type,
        "! <p class="shorttext synchronized">Internal names for BillingDocumentPartner_Type</p>
        "! See also structure type {@link ..tys_billing_document_partner_t}
        BEGIN OF billing_document_partner_t,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _BillingDocument
            billing_document_2 TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'BILLING_DOCUMENT_2',
          END OF navigation,
        END OF billing_document_partner_t,
        "! <p class="shorttext synchronized">Internal names for BillingDocumentText_Type</p>
        "! See also structure type {@link ..tys_billing_document_text_type}
        BEGIN OF billing_document_text_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _BillingDocument
            billing_document_2 TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'BILLING_DOCUMENT_2',
          END OF navigation,
        END OF billing_document_text_type,
        "! <p class="shorttext synchronized">Internal names for BillingDocument_Type</p>
        "! See also structure type {@link ..tys_billing_document_type}
        BEGIN OF billing_document_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _Item
            item               TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'ITEM',
            "! _Partner
            partner            TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PARTNER',
            "! _PricingDocument
            pricing_document_2 TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRICING_DOCUMENT_2',
            "! _Text
            text               TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TEXT',
          END OF navigation,
        END OF billing_document_type,
        "! <p class="shorttext synchronized">Internal names for PricingDocumentHeaderElement_Type</p>
        "! See also structure type {@link ..tys_pricing_document_header_el}
        BEGIN OF pricing_document_header_el,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _PricingDocument
            pricing_document_2 TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRICING_DOCUMENT_2',
          END OF navigation,
        END OF pricing_document_header_el,
        "! <p class="shorttext synchronized">Internal names for PricingDocumentItemElement_Type</p>
        "! See also structure type {@link ..tys_pricing_document_item_elem}
        BEGIN OF pricing_document_item_elem,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _PricingDocument
            pricing_document_2      TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRICING_DOCUMENT_2',
            "! _PricingDocumentItem
            pricing_document_item_2 TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRICING_DOCUMENT_ITEM_2',
          END OF navigation,
        END OF pricing_document_item_elem,
        "! <p class="shorttext synchronized">Internal names for PricingDocumentItem_Type</p>
        "! See also structure type {@link ..tys_pricing_document_item_type}
        BEGIN OF pricing_document_item_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _PricingDocument
            pricing_document_2         TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRICING_DOCUMENT_2',
            "! _PricingDocumentItemElement
            pricing_document_item_elem TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRICING_DOCUMENT_ITEM_ELEM',
          END OF navigation,
        END OF pricing_document_item_type,
        "! <p class="shorttext synchronized">Internal names for PricingDocument_Type</p>
        "! See also structure type {@link ..tys_pricing_document_type}
        BEGIN OF pricing_document_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _PricingDocumentElement
            pricing_document_element TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRICING_DOCUMENT_ELEMENT',
            "! _PricingDocumentItem
            pricing_document_item    TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRICING_DOCUMENT_ITEM',
          END OF navigation,
        END OF pricing_document_type,
      END OF gcs_entity_type.


    METHODS /iwbep/if_v4_mp_basic_pm~define REDEFINITION.


  PRIVATE SECTION.

    "! <p class="shorttext synchronized">Model</p>
    DATA mo_model TYPE REF TO /iwbep/if_v4_pm_model.


    "! <p class="shorttext synchronized">Define D_BillgDocCrteFrmSDDocRefPP</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_d_billg_doc_crte_frm_sddoc RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define D_BillgDocCrteFrmSDDocCtrlPP</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_d_billg_doc_crte_frm_sdd_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define SAP__Message</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_sap_message RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define BillingDocumentItemPartner_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_billing_document_item_pa_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define BillingDocumentItemText_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_billing_document_item_te_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define BillingDocumentItem_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_billing_document_item_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define BillingDocumentPartner_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_billing_document_partner_t RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define BillingDocumentText_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_billing_document_text_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define BillingDocument_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_billing_document_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define PricingDocumentHeaderElement_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_pricing_document_header_el RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define PricingDocumentItemElement_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_pricing_document_item_elem RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define PricingDocumentItem_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_pricing_document_item_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define PricingDocument_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_pricing_document_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define CreateFromSDDocument</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_create_from_sddocument RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define PostToAccounting</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_post_to_accounting RAISING /iwbep/cx_gateway.

ENDCLASS.



CLASS ZSC_BILLINGHEADERTEXT IMPLEMENTATION.


  METHOD /iwbep/if_v4_mp_basic_pm~define.

    mo_model = io_model.
    mo_model->set_schema_namespace( 'com.sap.gateway.srvd_a2x.api_billingdocument.v0001' ) ##NO_TEXT.

    def_d_billg_doc_crte_frm_sddoc( ).
    def_d_billg_doc_crte_frm_sdd_2( ).
    def_sap_message( ).
    def_billing_document_item_pa_2( ).
    def_billing_document_item_te_2( ).
    def_billing_document_item_type( ).
    def_billing_document_partner_t( ).
    def_billing_document_text_type( ).
    def_billing_document_type( ).
    def_pricing_document_header_el( ).
    def_pricing_document_item_elem( ).
    def_pricing_document_item_type( ).
    def_pricing_document_type( ).
    def_create_from_sddocument( ).
    def_post_to_accounting( ).

  ENDMETHOD.


  METHOD def_billing_document_item_pa_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'BILLING_DOCUMENT_ITEM_PA_2'
                                    is_structure              = VALUE tys_billing_document_item_pa_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'BillingDocumentItemPartner_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'BILLING_DOCUMENT_ITEM_PART' ).
    lo_entity_set->set_edm_name( 'BillingDocumentItemPartner' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_DOCUMENT' ).
    lo_primitive_property->set_edm_name( 'BillingDocument' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_DOCUMENT_ITEM' ).
    lo_primitive_property->set_edm_name( 'BillingDocumentItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARTNER_FUNCTION' ).
    lo_primitive_property->set_edm_name( 'PartnerFunction' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER' ).
    lo_primitive_property->set_edm_name( 'Customer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER' ).
    lo_primitive_property->set_edm_name( 'Supplier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PERSONNEL' ).
    lo_primitive_property->set_edm_name( 'Personnel' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONTACT_PERSON' ).
    lo_primitive_property->set_edm_name( 'ContactPerson' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REFERENCE_BUSINESS_PARTNER' ).
    lo_primitive_property->set_edm_name( 'ReferenceBusinessPartner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_ADDRESS_U' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerAddressUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARTNER_IS_SPECIFIC_FOR_SD' ).
    lo_primitive_property->set_edm_name( 'PartnerIsSpecificForSDDocItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FULL_NAME' ).
    lo_primitive_property->set_edm_name( 'FullName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_PERSON_ID' ).
    lo_primitive_property->set_edm_name( 'AddressPersonID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_OBJECT_TYPE' ).
    lo_primitive_property->set_edm_name( 'AddressObjectType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SDDOC_PARTNER_ADDR_IS_DOC' ).
    lo_primitive_property->set_edm_name( 'SDDocPartnerAddrIsDocSpecific' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FORM_OF_ADDRESS' ).
    lo_primitive_property->set_edm_name( 'FormOfAddress' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CORRESPONDENCE_LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'CorrespondenceLanguage' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_PREFIX_NAME_1' ).
    lo_primitive_property->set_edm_name( 'StreetPrefixName1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_PREFIX_NAME_2' ).
    lo_primitive_property->set_edm_name( 'StreetPrefixName2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_NAME' ).
    lo_primitive_property->set_edm_name( 'StreetName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_SUFFIX_NAME_1' ).
    lo_primitive_property->set_edm_name( 'StreetSuffixName1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_SUFFIX_NAME_2' ).
    lo_primitive_property->set_edm_name( 'StreetSuffixName2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HOUSE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'HouseNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'PostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CITY_NAME' ).
    lo_primitive_property->set_edm_name( 'CityName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISTRICT_NAME' ).
    lo_primitive_property->set_edm_name( 'DistrictName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REGION' ).
    lo_primitive_property->set_edm_name( 'Region' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY' ).
    lo_primitive_property->set_edm_name( 'Country' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_PHONE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'InternationalPhoneNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_MOBILE_PHONE' ).
    lo_primitive_property->set_edm_name( 'InternationalMobilePhoneNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_FAX_NUMBER' ).
    lo_primitive_property->set_edm_name( 'InternationalFaxNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EMAIL_ADDRESS' ).
    lo_primitive_property->set_edm_name( 'EmailAddress' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 241 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX' ).
    lo_primitive_property->set_edm_name( 'POBox' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX_POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'POBoxPostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_JURISDICTION' ).
    lo_primitive_property->set_edm_name( 'TaxJurisdiction' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORT_ZONE' ).
    lo_primitive_property->set_edm_name( 'TransportZone' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VATREGISTRATION' ).
    lo_primitive_property->set_edm_name( 'VATRegistration' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNLOADING_POINT_NAME' ).
    lo_primitive_property->set_edm_name( 'UnloadingPointName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 25 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'BILLING_DOCUMENT_2' ).
    lo_navigation_property->set_edm_name( '_BillingDocument' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'BILLING_DOCUMENT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'ITEM' ).
    lo_navigation_property->set_edm_name( '_Item' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'BILLING_DOCUMENT_ITEM_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_billing_document_item_te_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'BILLING_DOCUMENT_ITEM_TE_2'
                                    is_structure              = VALUE tys_billing_document_item_te_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'BillingDocumentItemText_Type' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'BILLING_DOCUMENT_ITEM_TEXT' ).
    lo_entity_set->set_edm_name( 'BillingDocumentItemText' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_DOCUMENT' ).
    lo_primitive_property->set_edm_name( 'BillingDocument' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_DOCUMENT_ITEM' ).
    lo_primitive_property->set_edm_name( 'BillingDocumentItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'Language' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LONG_TEXT_ID' ).
    lo_primitive_property->set_edm_name( 'LongTextID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LONG_TEXT' ).
    lo_primitive_property->set_edm_name( 'LongText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'BILLING_DOCUMENT_2' ).
    lo_navigation_property->set_edm_name( '_BillingDocument' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'BILLING_DOCUMENT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'ITEM' ).
    lo_navigation_property->set_edm_name( '_Item' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'BILLING_DOCUMENT_ITEM_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_billing_document_item_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'BILLING_DOCUMENT_ITEM_TYPE'
                                    is_structure              = VALUE tys_billing_document_item_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'BillingDocumentItem_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'BILLING_DOCUMENT_ITEM' ).
    lo_entity_set->set_edm_name( 'BillingDocumentItem' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_DOCUMENT' ).
    lo_primitive_property->set_edm_name( 'BillingDocument' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_DOCUMENT_ITEM' ).
    lo_primitive_property->set_edm_name( 'BillingDocumentItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_DOCUMENT_ITEM_CATEGO' ).
    lo_primitive_property->set_edm_name( 'SalesDocumentItemCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_DOCUMENT_ITEM_TYPE' ).
    lo_primitive_property->set_edm_name( 'SalesDocumentItemType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'RETURN_ITEM_PROCESSING_TYP' ).
    lo_primitive_property->set_edm_name( 'ReturnItemProcessingType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'CreatedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATION_DATE' ).
    lo_primitive_property->set_edm_name( 'CreationDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATION_TIME' ).
    lo_primitive_property->set_edm_name( 'CreationTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REFERENCE_LOGICAL_SYSTEM' ).
    lo_primitive_property->set_edm_name( 'ReferenceLogicalSystem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORGANIZATION_DIVISION' ).
    lo_primitive_property->set_edm_name( 'OrganizationDivision' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DIVISION' ).
    lo_primitive_property->set_edm_name( 'Division' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_OFFICE' ).
    lo_primitive_property->set_edm_name( 'SalesOffice' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORIGINALLY_REQUESTED_MATER' ).
    lo_primitive_property->set_edm_name( 'OriginallyRequestedMaterial' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_ARTICLE_NUMB' ).
    lo_primitive_property->set_edm_name( 'InternationalArticleNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_REFERENCE_MATERIAL' ).
    lo_primitive_property->set_edm_name( 'PricingReferenceMaterial' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BATCH' ).
    lo_primitive_property->set_edm_name( 'Batch' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_GROUP' ).
    lo_primitive_property->set_edm_name( 'ProductGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 9 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_MATERIAL_GROUP' ).
    lo_primitive_property->set_edm_name( 'AdditionalMaterialGroup1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_MATERIAL_GROU_2' ).
    lo_primitive_property->set_edm_name( 'AdditionalMaterialGroup2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_MATERIAL_GROU_3' ).
    lo_primitive_property->set_edm_name( 'AdditionalMaterialGroup3' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_MATERIAL_GROU_4' ).
    lo_primitive_property->set_edm_name( 'AdditionalMaterialGroup4' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_MATERIAL_GROU_5' ).
    lo_primitive_property->set_edm_name( 'AdditionalMaterialGroup5' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_CONFIGURATION' ).
    lo_primitive_property->set_edm_name( 'ProductConfiguration' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STORAGE_LOCATION' ).
    lo_primitive_property->set_edm_name( 'StorageLocation' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT_REGION' ).
    lo_primitive_property->set_edm_name( 'PlantRegion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT_COUNTY' ).
    lo_primitive_property->set_edm_name( 'PlantCounty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT_CITY' ).
    lo_primitive_property->set_edm_name( 'PlantCity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL_DETERMINATION_TYP' ).
    lo_primitive_property->set_edm_name( 'MaterialDeterminationType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SOLD_PRODUCT' ).
    lo_primitive_property->set_edm_name( 'SoldProduct' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_DOCUMENT_ITEM_TEXT' ).
    lo_primitive_property->set_edm_name( 'BillingDocumentItemText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SERVICES_RENDERED_DATE' ).
    lo_primitive_property->set_edm_name( 'ServicesRenderedDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'BillingQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_QUANTITY_UNIT_SAPC' ).
    lo_primitive_property->set_edm_name( 'BillingQuantityUnitSAPCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_QUANTITY_UNIT_ISOC' ).
    lo_primitive_property->set_edm_name( 'BillingQuantityUnitISOCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_QUANTITY_IN_BASE_U' ).
    lo_primitive_property->set_edm_name( 'BillingQuantityInBaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT_SAPCODE' ).
    lo_primitive_property->set_edm_name( 'BaseUnitSAPCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT_ISOCODE' ).
    lo_primitive_property->set_edm_name( 'BaseUnitISOCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MRPREQUIRED_QUANTITY_IN_BA' ).
    lo_primitive_property->set_edm_name( 'MRPRequiredQuantityInBaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_TO_BASE_QUANTITY_D' ).
    lo_primitive_property->set_edm_name( 'BillingToBaseQuantityDnmntr' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_TO_BASE_QUANTITY_N' ).
    lo_primitive_property->set_edm_name( 'BillingToBaseQuantityNmrtr' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITEM_GROSS_WEIGHT' ).
    lo_primitive_property->set_edm_name( 'ItemGrossWeight' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITEM_NET_WEIGHT' ).
    lo_primitive_property->set_edm_name( 'ItemNetWeight' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITEM_WEIGHT_UNIT_SAPCODE' ).
    lo_primitive_property->set_edm_name( 'ItemWeightUnitSAPCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITEM_WEIGHT_UNIT_ISOCODE' ).
    lo_primitive_property->set_edm_name( 'ItemWeightUnitISOCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITEM_VOLUME' ).
    lo_primitive_property->set_edm_name( 'ItemVolume' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITEM_VOLUME_UNIT_SAPCODE' ).
    lo_primitive_property->set_edm_name( 'ItemVolumeUnitSAPCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITEM_VOLUME_UNIT_ISOCODE' ).
    lo_primitive_property->set_edm_name( 'ItemVolumeUnitISOCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_RULE' ).
    lo_primitive_property->set_edm_name( 'BillingPlanRule' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN' ).
    lo_primitive_property->set_edm_name( 'BillingPlan' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PLAN_ITEM' ).
    lo_primitive_property->set_edm_name( 'BillingPlanItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'NET_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'NetAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSACTION_CURRENCY' ).
    lo_primitive_property->set_edm_name( 'TransactionCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GROSS_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'GrossAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_DATE' ).
    lo_primitive_property->set_edm_name( 'PricingDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ABSLT_PRICE_DETN_EXCHANGE' ).
    lo_primitive_property->set_edm_name( 'AbsltPriceDetnExchangeRate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 5 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICE_DETN_EXCH_RATE_IS_IN' ).
    lo_primitive_property->set_edm_name( 'PriceDetnExchRateIsIndrctQtan' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICE_DETN_EXCHANGE_RATE_D' ).
    lo_primitive_property->set_edm_name( 'PriceDetnExchangeRateDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_SCALE_QUANTITY_IN' ).
    lo_primitive_property->set_edm_name( 'PricingScaleQuantityInBaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'TaxAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COST_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'CostAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUBTOTAL_1_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'Subtotal1Amount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUBTOTAL_2_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'Subtotal2Amount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUBTOTAL_3_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'Subtotal3Amount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUBTOTAL_4_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'Subtotal4Amount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUBTOTAL_5_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'Subtotal5Amount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUBTOTAL_6_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'Subtotal6Amount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STATISTICAL_VALUE_CONTROL' ).
    lo_primitive_property->set_edm_name( 'StatisticalValueControl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CASH_DISCOUNT_IS_DEDUCTIBL' ).
    lo_primitive_property->set_edm_name( 'CashDiscountIsDeductible' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_CONDITION_GROUP_1' ).
    lo_primitive_property->set_edm_name( 'CustomerConditionGroup1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_CONDITION_GROUP_2' ).
    lo_primitive_property->set_edm_name( 'CustomerConditionGroup2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_CONDITION_GROUP_3' ).
    lo_primitive_property->set_edm_name( 'CustomerConditionGroup3' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_CONDITION_GROUP_4' ).
    lo_primitive_property->set_edm_name( 'CustomerConditionGroup4' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_CONDITION_GROUP_5' ).
    lo_primitive_property->set_edm_name( 'CustomerConditionGroup5' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MANUAL_PRICE_CHANGE_TYPE' ).
    lo_primitive_property->set_edm_name( 'ManualPriceChangeType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL_PRICING_GROUP' ).
    lo_primitive_property->set_edm_name( 'MaterialPricingGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ABSLT_STATISTICS_EXCHANGE' ).
    lo_primitive_property->set_edm_name( 'AbsltStatisticsExchangeRate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 5 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STATISTICS_EXCH_RATE_IS_IN' ).
    lo_primitive_property->set_edm_name( 'StatisticsExchRateIsIndrctQtan' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAIN_ITEM_PRICING_REF_MATE' ).
    lo_primitive_property->set_edm_name( 'MainItemPricingRefMaterial' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAIN_ITEM_MATERIAL_PRICING' ).
    lo_primitive_property->set_edm_name( 'MainItemMaterialPricingGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TIME_SHEET_OVERTIME_CATEGO' ).
    lo_primitive_property->set_edm_name( 'TimeSheetOvertimeCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DEPARTURE_COUNTRY' ).
    lo_primitive_property->set_edm_name( 'DepartureCountry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_JURISDICTION' ).
    lo_primitive_property->set_edm_name( 'TaxJurisdiction' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_TAX_CLASSIFICATION' ).
    lo_primitive_property->set_edm_name( 'ProductTaxClassification1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_TAX_CLASSIFICATI_2' ).
    lo_primitive_property->set_edm_name( 'ProductTaxClassification2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_TAX_CLASSIFICATI_3' ).
    lo_primitive_property->set_edm_name( 'ProductTaxClassification3' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_TAX_CLASSIFICATI_4' ).
    lo_primitive_property->set_edm_name( 'ProductTaxClassification4' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_TAX_CLASSIFICATI_5' ).
    lo_primitive_property->set_edm_name( 'ProductTaxClassification5' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_TAX_CLASSIFICATI_6' ).
    lo_primitive_property->set_edm_name( 'ProductTaxClassification6' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_TAX_CLASSIFICATI_7' ).
    lo_primitive_property->set_edm_name( 'ProductTaxClassification7' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_TAX_CLASSIFICATI_8' ).
    lo_primitive_property->set_edm_name( 'ProductTaxClassification8' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_TAX_CLASSIFICATI_9' ).
    lo_primitive_property->set_edm_name( 'ProductTaxClassification9' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_CODE' ).
    lo_primitive_property->set_edm_name( 'TaxCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_RATE_VALIDITY_START_DA' ).
    lo_primitive_property->set_edm_name( 'TaxRateValidityStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ELIGIBLE_AMOUNT_FOR_CASH_D' ).
    lo_primitive_property->set_edm_name( 'EligibleAmountForCashDiscount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_AREA' ).
    lo_primitive_property->set_edm_name( 'BusinessArea' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROFIT_CENTER' ).
    lo_primitive_property->set_edm_name( 'ProfitCenter' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WBSELEMENT_EXTERNAL_ID' ).
    lo_primitive_property->set_edm_name( 'WBSElementExternalID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 24 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROVIDER_CONTRACT' ).
    lo_primitive_property->set_edm_name( 'ProviderContract' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROVIDER_CONTRACT_ITEM' ).
    lo_primitive_property->set_edm_name( 'ProviderContractItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PERIOD_OF_PERF_STA' ).
    lo_primitive_property->set_edm_name( 'BillingPeriodOfPerfStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_PERIOD_OF_PERF_END' ).
    lo_primitive_property->set_edm_name( 'BillingPeriodOfPerfEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONTROLLING_AREA' ).
    lo_primitive_property->set_edm_name( 'ControllingArea' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COST_CENTER' ).
    lo_primitive_property->set_edm_name( 'CostCenter' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATL_ACCOUNT_ASSIGNMENT_GR' ).
    lo_primitive_property->set_edm_name( 'MatlAccountAssignmentGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REFERENCE_SDDOCUMENT' ).
    lo_primitive_property->set_edm_name( 'ReferenceSDDocument' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REFERENCE_SDDOCUMENT_ITEM' ).
    lo_primitive_property->set_edm_name( 'ReferenceSDDocumentItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REFERENCE_SDDOCUMENT_CATEG' ).
    lo_primitive_property->set_edm_name( 'ReferenceSDDocumentCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_DOCUMENT' ).
    lo_primitive_property->set_edm_name( 'SalesDocument' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_DOCUMENT_ITEM' ).
    lo_primitive_property->set_edm_name( 'SalesDocumentItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_SDDOCUMENT_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'SalesSDDocumentCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HIGHER_LEVEL_ITEM' ).
    lo_primitive_property->set_edm_name( 'HigherLevelItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_DOCUMENT_ITEM_IN_P' ).
    lo_primitive_property->set_edm_name( 'BillingDocumentItemInPartSgmt' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_GROUP' ).
    lo_primitive_property->set_edm_name( 'SalesGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_CUSTOMER_GROUP' ).
    lo_primitive_property->set_edm_name( 'AdditionalCustomerGroup1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_CUSTOMER_GROU_2' ).
    lo_primitive_property->set_edm_name( 'AdditionalCustomerGroup2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_CUSTOMER_GROU_3' ).
    lo_primitive_property->set_edm_name( 'AdditionalCustomerGroup3' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_CUSTOMER_GROU_4' ).
    lo_primitive_property->set_edm_name( 'AdditionalCustomerGroup4' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_CUSTOMER_GROU_5' ).
    lo_primitive_property->set_edm_name( 'AdditionalCustomerGroup5' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SDDOCUMENT_REASON' ).
    lo_primitive_property->set_edm_name( 'SDDocumentReason' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITEM_IS_RELEVANT_FOR_CREDI' ).
    lo_primitive_property->set_edm_name( 'ItemIsRelevantForCredit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREDIT_RELATED_PRICE' ).
    lo_primitive_property->set_edm_name( 'CreditRelatedPrice' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 11 ) ##NUMBER_OK.
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIPPING_POINT' ).
    lo_primitive_property->set_edm_name( 'ShippingPoint' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SERVICE_DOCUMENT_TYPE' ).
    lo_primitive_property->set_edm_name( 'ServiceDocumentType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SERVICE_DOCUMENT' ).
    lo_primitive_property->set_edm_name( 'ServiceDocument' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SERVICE_DOCUMENT_ITEM' ).
    lo_primitive_property->set_edm_name( 'ServiceDocumentItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_SOLUTION_ORDER' ).
    lo_primitive_property->set_edm_name( 'BusinessSolutionOrder' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_SOLUTION_ORDER_IT' ).
    lo_primitive_property->set_edm_name( 'BusinessSolutionOrderItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HIGHER_LEVEL_ITEM_USAGE' ).
    lo_primitive_property->set_edm_name( 'HigherLevelItemUsage' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'BILLING_DOCUMENT_2' ).
    lo_navigation_property->set_edm_name( '_BillingDocument' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'BILLING_DOCUMENT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'ITEM_PARTNER' ).
    lo_navigation_property->set_edm_name( '_ItemPartner' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'BILLING_DOCUMENT_ITEM_PA_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'ITEM_TEXT' ).
    lo_navigation_property->set_edm_name( '_ItemText' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'BILLING_DOCUMENT_ITEM_TE_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

  ENDMETHOD.


  METHOD def_billing_document_partner_t.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'BILLING_DOCUMENT_PARTNER_T'
                                    is_structure              = VALUE tys_billing_document_partner_t( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'BillingDocumentPartner_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'BILLING_DOCUMENT_PARTNER' ).
    lo_entity_set->set_edm_name( 'BillingDocumentPartner' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_DOCUMENT' ).
    lo_primitive_property->set_edm_name( 'BillingDocument' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARTNER_FUNCTION' ).
    lo_primitive_property->set_edm_name( 'PartnerFunction' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER' ).
    lo_primitive_property->set_edm_name( 'Customer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER' ).
    lo_primitive_property->set_edm_name( 'Supplier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PERSONNEL' ).
    lo_primitive_property->set_edm_name( 'Personnel' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONTACT_PERSON' ).
    lo_primitive_property->set_edm_name( 'ContactPerson' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REFERENCE_BUSINESS_PARTNER' ).
    lo_primitive_property->set_edm_name( 'ReferenceBusinessPartner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_ADDRESS_U' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerAddressUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FULL_NAME' ).
    lo_primitive_property->set_edm_name( 'FullName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_ID' ).
    lo_primitive_property->set_edm_name( 'AddressID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_PERSON_ID' ).
    lo_primitive_property->set_edm_name( 'AddressPersonID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDRESS_OBJECT_TYPE' ).
    lo_primitive_property->set_edm_name( 'AddressObjectType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SDDOC_PARTNER_ADDR_IS_DOC' ).
    lo_primitive_property->set_edm_name( 'SDDocPartnerAddrIsDocSpecific' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FORM_OF_ADDRESS' ).
    lo_primitive_property->set_edm_name( 'FormOfAddress' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CORRESPONDENCE_LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'CorrespondenceLanguage' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_PREFIX_NAME_1' ).
    lo_primitive_property->set_edm_name( 'StreetPrefixName1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_PREFIX_NAME_2' ).
    lo_primitive_property->set_edm_name( 'StreetPrefixName2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_NAME' ).
    lo_primitive_property->set_edm_name( 'StreetName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_SUFFIX_NAME_1' ).
    lo_primitive_property->set_edm_name( 'StreetSuffixName1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_SUFFIX_NAME_2' ).
    lo_primitive_property->set_edm_name( 'StreetSuffixName2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HOUSE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'HouseNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'PostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CITY_NAME' ).
    lo_primitive_property->set_edm_name( 'CityName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISTRICT_NAME' ).
    lo_primitive_property->set_edm_name( 'DistrictName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REGION' ).
    lo_primitive_property->set_edm_name( 'Region' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY' ).
    lo_primitive_property->set_edm_name( 'Country' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_PHONE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'InternationalPhoneNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_MOBILE_PHONE' ).
    lo_primitive_property->set_edm_name( 'InternationalMobilePhoneNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_FAX_NUMBER' ).
    lo_primitive_property->set_edm_name( 'InternationalFaxNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EMAIL_ADDRESS' ).
    lo_primitive_property->set_edm_name( 'EmailAddress' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 241 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX' ).
    lo_primitive_property->set_edm_name( 'POBox' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POBOX_POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'POBoxPostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_JURISDICTION' ).
    lo_primitive_property->set_edm_name( 'TaxJurisdiction' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORT_ZONE' ).
    lo_primitive_property->set_edm_name( 'TransportZone' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VATREGISTRATION' ).
    lo_primitive_property->set_edm_name( 'VATRegistration' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNLOADING_POINT_NAME' ).
    lo_primitive_property->set_edm_name( 'UnloadingPointName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 25 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'BILLING_DOCUMENT_2' ).
    lo_navigation_property->set_edm_name( '_BillingDocument' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'BILLING_DOCUMENT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_billing_document_text_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'BILLING_DOCUMENT_TEXT_TYPE'
                                    is_structure              = VALUE tys_billing_document_text_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'BillingDocumentText_Type' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'BILLING_DOCUMENT_TEXT' ).
    lo_entity_set->set_edm_name( 'BillingDocumentText' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_DOCUMENT' ).
    lo_primitive_property->set_edm_name( 'BillingDocument' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'Language' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LONG_TEXT_ID' ).
    lo_primitive_property->set_edm_name( 'LongTextID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LONG_TEXT' ).
    lo_primitive_property->set_edm_name( 'LongText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'BILLING_DOCUMENT_2' ).
    lo_navigation_property->set_edm_name( '_BillingDocument' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'BILLING_DOCUMENT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_billing_document_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'BILLING_DOCUMENT_TYPE'
                                    is_structure              = VALUE tys_billing_document_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'BillingDocument_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'BILLING_DOCUMENT' ).
    lo_entity_set->set_edm_name( 'BillingDocument' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_DOCUMENT' ).
    lo_primitive_property->set_edm_name( 'BillingDocument' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SDDOCUMENT_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'SDDocumentCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_DOCUMENT_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'BillingDocumentCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_DOCUMENT_TYPE_2' ).
    lo_primitive_property->set_edm_name( 'BillingDocumentType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'CreatedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATION_DATE' ).
    lo_primitive_property->set_edm_name( 'CreationDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATION_TIME' ).
    lo_primitive_property->set_edm_name( 'CreationTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGE_DATE' ).
    lo_primitive_property->set_edm_name( 'LastChangeDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGE_DATE_TIME' ).
    lo_primitive_property->set_edm_name( 'LastChangeDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LOGICAL_SYSTEM' ).
    lo_primitive_property->set_edm_name( 'LogicalSystem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORGANIZATION' ).
    lo_primitive_property->set_edm_name( 'SalesOrganization' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISTRIBUTION_CHANNEL' ).
    lo_primitive_property->set_edm_name( 'DistributionChannel' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DIVISION' ).
    lo_primitive_property->set_edm_name( 'Division' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_DOCUMENT_DATE' ).
    lo_primitive_property->set_edm_name( 'BillingDocumentDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_DOCUMENT_IS_CANCEL' ).
    lo_primitive_property->set_edm_name( 'BillingDocumentIsCancelled' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CANCELLED_BILLING_DOCUMENT' ).
    lo_primitive_property->set_edm_name( 'CancelledBillingDocument' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_DOC_COMBINATION_CR' ).
    lo_primitive_property->set_edm_name( 'BillingDocCombinationCriteria' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_INTRASTAT_REPORTING_REL' ).
    lo_primitive_property->set_edm_name( 'IsIntrastatReportingRelevant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_INTRASTAT_REPORTING_EXC' ).
    lo_primitive_property->set_edm_name( 'IsIntrastatReportingExcluded' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TOTAL_NET_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'TotalNetAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSACTION_CURRENCY' ).
    lo_primitive_property->set_edm_name( 'TransactionCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STATISTICS_CURRENCY' ).
    lo_primitive_property->set_edm_name( 'StatisticsCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TOTAL_TAX_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'TotalTaxAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TOTAL_GROSS_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'TotalGrossAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_PRICE_GROUP' ).
    lo_primitive_property->set_edm_name( 'CustomerPriceGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICE_LIST_TYPE' ).
    lo_primitive_property->set_edm_name( 'PriceListType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_DEPARTURE_COUNTRY' ).
    lo_primitive_property->set_edm_name( 'TaxDepartureCountry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VATREGISTRATION' ).
    lo_primitive_property->set_edm_name( 'VATRegistration' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VATREGISTRATION_ORIGIN' ).
    lo_primitive_property->set_edm_name( 'VATRegistrationOrigin' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VATREGISTRATION_COUNTRY' ).
    lo_primitive_property->set_edm_name( 'VATRegistrationCountry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_TAX_CLASSIFICATIO' ).
    lo_primitive_property->set_edm_name( 'CustomerTaxClassification1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_TAX_CLASSIFICAT_2' ).
    lo_primitive_property->set_edm_name( 'CustomerTaxClassification2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_TAX_CLASSIFICAT_3' ).
    lo_primitive_property->set_edm_name( 'CustomerTaxClassification3' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_TAX_CLASSIFICAT_4' ).
    lo_primitive_property->set_edm_name( 'CustomerTaxClassification4' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_TAX_CLASSIFICAT_5' ).
    lo_primitive_property->set_edm_name( 'CustomerTaxClassification5' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_TAX_CLASSIFICAT_6' ).
    lo_primitive_property->set_edm_name( 'CustomerTaxClassification6' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_TAX_CLASSIFICAT_7' ).
    lo_primitive_property->set_edm_name( 'CustomerTaxClassification7' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_TAX_CLASSIFICAT_8' ).
    lo_primitive_property->set_edm_name( 'CustomerTaxClassification8' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_TAX_CLASSIFICAT_9' ).
    lo_primitive_property->set_edm_name( 'CustomerTaxClassification9' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_EUTRIANGULAR_DEAL' ).
    lo_primitive_property->set_edm_name( 'IsEUTriangularDeal' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SDPRICING_PROCEDURE' ).
    lo_primitive_property->set_edm_name( 'SDPricingProcedure' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIPPING_CONDITION' ).
    lo_primitive_property->set_edm_name( 'ShippingCondition' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INCOTERMS_VERSION' ).
    lo_primitive_property->set_edm_name( 'IncotermsVersion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INCOTERMS_CLASSIFICATION' ).
    lo_primitive_property->set_edm_name( 'IncotermsClassification' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INCOTERMS_TRANSFER_LOCATIO' ).
    lo_primitive_property->set_edm_name( 'IncotermsTransferLocation' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 28 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INCOTERMS_LOCATION_1' ).
    lo_primitive_property->set_edm_name( 'IncotermsLocation1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INCOTERMS_LOCATION_2' ).
    lo_primitive_property->set_edm_name( 'IncotermsLocation2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PAYER_PARTY' ).
    lo_primitive_property->set_edm_name( 'PayerParty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONTRACT_ACCOUNT' ).
    lo_primitive_property->set_edm_name( 'ContractAccount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_PAYMENT_TERMS' ).
    lo_primitive_property->set_edm_name( 'CustomerPaymentTerms' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PAYMENT_METHOD' ).
    lo_primitive_property->set_edm_name( 'PaymentMethod' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PAYMENT_REFERENCE' ).
    lo_primitive_property->set_edm_name( 'PaymentReference' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FIXED_VALUE_DATE' ).
    lo_primitive_property->set_edm_name( 'FixedValueDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDITIONAL_VALUE_DAYS' ).
    lo_primitive_property->set_edm_name( 'AdditionalValueDays' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SEPAMANDATE' ).
    lo_primitive_property->set_edm_name( 'SEPAMandate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 35 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPANY_CODE' ).
    lo_primitive_property->set_edm_name( 'CompanyCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FISCAL_YEAR' ).
    lo_primitive_property->set_edm_name( 'FiscalYear' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACCOUNTING_DOCUMENT' ).
    lo_primitive_property->set_edm_name( 'AccountingDocument' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_ACCOUNT_ASSIGNMEN' ).
    lo_primitive_property->set_edm_name( 'CustomerAccountAssignmentGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACCOUNTING_EXCHANGE_RATE_I' ).
    lo_primitive_property->set_edm_name( 'AccountingExchangeRateIsSet' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ABSLT_ACCOUNTING_EXCHANGE' ).
    lo_primitive_property->set_edm_name( 'AbsltAccountingExchangeRate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 5 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACCTG_EXCHANGE_RATE_IS_IND' ).
    lo_primitive_property->set_edm_name( 'AcctgExchangeRateIsIndrctQtan' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EXCHANGE_RATE_DATE' ).
    lo_primitive_property->set_edm_name( 'ExchangeRateDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EXCHANGE_RATE_TYPE' ).
    lo_primitive_property->set_edm_name( 'ExchangeRateType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_REFERENCE_ID' ).
    lo_primitive_property->set_edm_name( 'DocumentReferenceID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 16 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ASSIGNMENT_REFERENCE' ).
    lo_primitive_property->set_edm_name( 'AssignmentReference' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REVERSAL_REASON' ).
    lo_primitive_property->set_edm_name( 'ReversalReason' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DUNNING_AREA' ).
    lo_primitive_property->set_edm_name( 'DunningArea' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DUNNING_BLOCKING_REASON' ).
    lo_primitive_property->set_edm_name( 'DunningBlockingReason' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DUNNING_KEY' ).
    lo_primitive_property->set_edm_name( 'DunningKey' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_RELEVANT_FOR_ACCRUAL' ).
    lo_primitive_property->set_edm_name( 'IsRelevantForAccrual' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SOLD_TO_PARTY' ).
    lo_primitive_property->set_edm_name( 'SoldToParty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARTNER_COMPANY' ).
    lo_primitive_property->set_edm_name( 'PartnerCompany' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PURCHASE_ORDER_BY_CUSTOMER' ).
    lo_primitive_property->set_edm_name( 'PurchaseOrderByCustomer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 35 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_GROUP' ).
    lo_primitive_property->set_edm_name( 'CustomerGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY' ).
    lo_primitive_property->set_edm_name( 'Country' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CITY_CODE' ).
    lo_primitive_property->set_edm_name( 'CityCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_DISTRICT' ).
    lo_primitive_property->set_edm_name( 'SalesDistrict' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REGION' ).
    lo_primitive_property->set_edm_name( 'Region' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTY' ).
    lo_primitive_property->set_edm_name( 'County' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREDIT_CONTROL_AREA' ).
    lo_primitive_property->set_edm_name( 'CreditControlArea' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_DOCUMENT' ).
    lo_primitive_property->set_edm_name( 'PricingDocument' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SAPOBJECT_TYPE_IN_UPPERCAS' ).
    lo_primitive_property->set_edm_name( 'SAPObjectTypeInUppercase' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'OVERALL_SDPROCESS_STATUS' ).
    lo_primitive_property->set_edm_name( 'OverallSDProcessStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'OVERALL_BILLING_STATUS' ).
    lo_primitive_property->set_edm_name( 'OverallBillingStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACCOUNTING_POSTING_STATUS' ).
    lo_primitive_property->set_edm_name( 'AccountingPostingStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACCOUNTING_TRANSFER_STATUS' ).
    lo_primitive_property->set_edm_name( 'AccountingTransferStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILLING_ISSUE_TYPE' ).
    lo_primitive_property->set_edm_name( 'BillingIssueType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INVOICE_LIST_STATUS' ).
    lo_primitive_property->set_edm_name( 'InvoiceListStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'OVRL_ITM_GENERAL_INCOMPLET' ).
    lo_primitive_property->set_edm_name( 'OvrlItmGeneralIncompletionSts' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'OVERALL_PRICING_INCOMPLETI' ).
    lo_primitive_property->set_edm_name( 'OverallPricingIncompletionSts' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INVOICE_LIST_TYPE' ).
    lo_primitive_property->set_edm_name( 'InvoiceListType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INVOICE_LIST_BILLING_DATE' ).
    lo_primitive_property->set_edm_name( 'InvoiceListBillingDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_VEHICLE_NO_BDH' ).
    lo_primitive_property->set_edm_name( 'YY1_VehicleNo_BDH' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_LRNO_BDH' ).
    lo_primitive_property->set_edm_name( 'YY1_LRno_BDH' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_LRDATE_BDH' ).
    lo_primitive_property->set_edm_name( 'YY1_LRdate_BDH' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_VEHICLE_TYPE_BDH' ).
    lo_primitive_property->set_edm_name( 'YY1_VehicleType_BDH' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'ITEM' ).
    lo_navigation_property->set_edm_name( '_Item' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'BILLING_DOCUMENT_ITEM_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PARTNER' ).
    lo_navigation_property->set_edm_name( '_Partner' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'BILLING_DOCUMENT_PARTNER_T' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRICING_DOCUMENT_2' ).
    lo_navigation_property->set_edm_name( '_PricingDocument' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRICING_DOCUMENT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TEXT' ).
    lo_navigation_property->set_edm_name( '_Text' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'BILLING_DOCUMENT_TEXT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

  ENDMETHOD.


  METHOD def_create_from_sddocument.

    DATA:
      lo_action        TYPE REF TO /iwbep/if_v4_pm_action,
      lo_action_import TYPE REF TO /iwbep/if_v4_pm_action_imp,
      lo_parameter     TYPE REF TO /iwbep/if_v4_pm_act_param,
      lo_return        TYPE REF TO /iwbep/if_v4_pm_act_return.


    lo_action = mo_model->create_action( 'CREATE_FROM_SDDOCUMENT' ).
    lo_action->set_edm_name( 'CreateFromSDDocument' ) ##NO_TEXT.

    " Name of the runtime structure that represents the parameters of this operation
    lo_action->/iwbep/if_v4_pm_ac_advanced~set_parameter_structure_info( VALUE tys_parameters_1( ) ).


    lo_parameter = lo_action->create_parameter( 'IT' ).
    lo_parameter->set_edm_name( '_it' ) ##NO_TEXT.
    lo_parameter->set_entity_type( 'BILLING_DOCUMENT_TYPE' ).
    lo_parameter->set_is_binding_parameter( ).
    lo_parameter->set_is_collection( ).

    lo_parameter = lo_action->create_parameter( 'CONTROL' ).
    lo_parameter->set_edm_name( '_Control' ) ##NO_TEXT.
    lo_parameter->set_complex_type( 'D_BILLG_DOC_CRTE_FRM_SDD_2' ).

    lo_parameter = lo_action->create_parameter( 'REFERENCE' ).
    lo_parameter->set_edm_name( '_Reference' ) ##NO_TEXT.
    lo_parameter->set_complex_type( 'D_BILLG_DOC_CRTE_FRM_SDDOC' ).
    lo_parameter->set_is_collection( ).

    lo_return = lo_action->create_return( ).
    lo_return->set_entity_type( 'BILLING_DOCUMENT_TYPE' ).
    lo_return->set_is_collection( ).

  ENDMETHOD.


  METHOD def_d_billg_doc_crte_frm_sddoc.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_complex_type        TYPE REF TO /iwbep/if_v4_pm_cplx_type,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_complex_type = mo_model->create_complex_type_by_struct(
                                    iv_complex_type_name      = 'D_BILLG_DOC_CRTE_FRM_SDDOC'
                                    is_structure              = VALUE tys_d_billg_doc_crte_frm_sddoc( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_complex_type->set_edm_name( 'D_BillgDocCrteFrmSDDocRefPP' ) ##NO_TEXT.
    lo_complex_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_primitive_property = lo_complex_type->get_primitive_property( 'SDDOCUMENT' ).
    lo_primitive_property->set_edm_name( 'SDDocument' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'BILLING_DOCUMENT_TYPE' ).
    lo_primitive_property->set_edm_name( 'BillingDocumentType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'BILLING_DOCUMENT_DATE' ).
    lo_primitive_property->set_edm_name( 'BillingDocumentDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'DESTINATION_COUNTRY' ).
    lo_primitive_property->set_edm_name( 'DestinationCountry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'SALES_ORGANIZATION' ).
    lo_primitive_property->set_edm_name( 'SalesOrganization' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'SDDOCUMENT_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'SDDocumentCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

  ENDMETHOD.


  METHOD def_d_billg_doc_crte_frm_sdd_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_complex_type        TYPE REF TO /iwbep/if_v4_pm_cplx_type,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_complex_type = mo_model->create_complex_type_by_struct(
                                    iv_complex_type_name      = 'D_BILLG_DOC_CRTE_FRM_SDD_2'
                                    is_structure              = VALUE tys_d_billg_doc_crte_frm_sdd_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_complex_type->set_edm_name( 'D_BillgDocCrteFrmSDDocCtrlPP' ) ##NO_TEXT.
    lo_complex_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_primitive_property = lo_complex_type->get_primitive_property( 'DEFAULT_BILLING_DOCUMENT_D' ).
    lo_primitive_property->set_edm_name( 'DefaultBillingDocumentDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'DEFAULT_BILLING_DOCUMENT_T' ).
    lo_primitive_property->set_edm_name( 'DefaultBillingDocumentType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'AUTOM_POSTING_TO_ACCTG_IS' ).
    lo_primitive_property->set_edm_name( 'AutomPostingToAcctgIsDisabled' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'CUT_OFF_BILLING_DOCUMENT_D' ).
    lo_primitive_property->set_edm_name( 'CutOffBillingDocumentDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

  ENDMETHOD.


  METHOD def_post_to_accounting.

    DATA:
      lo_action        TYPE REF TO /iwbep/if_v4_pm_action,
      lo_action_import TYPE REF TO /iwbep/if_v4_pm_action_imp,
      lo_parameter     TYPE REF TO /iwbep/if_v4_pm_act_param,
      lo_return        TYPE REF TO /iwbep/if_v4_pm_act_return.


    lo_action = mo_model->create_action( 'POST_TO_ACCOUNTING' ).
    lo_action->set_edm_name( 'PostToAccounting' ) ##NO_TEXT.


    lo_parameter = lo_action->create_parameter( 'IT' ).
    lo_parameter->set_edm_name( '_it' ) ##NO_TEXT.
    lo_parameter->set_entity_type( 'BILLING_DOCUMENT_TYPE' ).
    lo_parameter->set_is_binding_parameter( ).

  ENDMETHOD.


  METHOD def_pricing_document_header_el.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRICING_DOCUMENT_HEADER_EL'
                                    is_structure              = VALUE tys_pricing_document_header_el( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'PricingDocumentHeaderElement_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).



    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_DOCUMENT' ).
    lo_primitive_property->set_edm_name( 'PricingDocument' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRCG_DOCUMENT_HOST_OBJECT' ).
    lo_primitive_property->set_edm_name( 'PrcgDocumentHostObjectNodeID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 90 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRCG_DOC_HOST_OBJ_SONTIN_U' ).
    lo_primitive_property->set_edm_name( 'PrcgDocHostObjSONTInUppercase' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_PROCEDURE_STEP' ).
    lo_primitive_property->set_edm_name( 'PricingProcedureStep' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_DOCUMENT_ELEMENT_C' ).
    lo_primitive_property->set_edm_name( 'PricingDocumentElementCounter' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_TYPE' ).
    lo_primitive_property->set_edm_name( 'ConditionType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICE_ELEMENT_DESCRIPTION' ).
    lo_primitive_property->set_edm_name( 'PriceElementDescription' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_CLASS' ).
    lo_primitive_property->set_edm_name( 'ConditionClass' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_CALCULATION_TYPE' ).
    lo_primitive_property->set_edm_name( 'ConditionCalculationType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RATE_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'ConditionRateAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_CURRENCY' ).
    lo_primitive_property->set_edm_name( 'ConditionCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'ConditionQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_BASE_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'ConditionBaseQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_QUANTITY_ISOUNIT' ).
    lo_primitive_property->set_edm_name( 'ConditionQuantityISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_QUANTITY_SAPUNIT' ).
    lo_primitive_property->set_edm_name( 'ConditionQuantitySAPUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RATE_RATIO' ).
    lo_primitive_property->set_edm_name( 'ConditionRateRatio' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RATE_RATIO_ISOUN' ).
    lo_primitive_property->set_edm_name( 'ConditionRateRatioISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RATE_RATIO_SAPUN' ).
    lo_primitive_property->set_edm_name( 'ConditionRateRatioSAPUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'ConditionAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale_variable( ).
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_BASE_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'ConditionBaseAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSACTION_CURRENCY' ).
    lo_primitive_property->set_edm_name( 'TransactionCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_CODE' ).
    lo_primitive_property->set_edm_name( 'TaxCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VARIANT_CONDITION' ).
    lo_primitive_property->set_edm_name( 'VariantCondition' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 26 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_ORIGIN' ).
    lo_primitive_property->set_edm_name( 'ConditionOrigin' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_INACTIVE_REASON' ).
    lo_primitive_property->set_edm_name( 'ConditionInactiveReason' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_IS_MANUALLY_CHAN' ).
    lo_primitive_property->set_edm_name( 'ConditionIsManuallyChanged' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_IS_FOR_STATISTIC' ).
    lo_primitive_property->set_edm_name( 'ConditionIsForStatistics' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRICING_DOCUMENT_2' ).
    lo_navigation_property->set_edm_name( '_PricingDocument' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRICING_DOCUMENT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_pricing_document_item_elem.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRICING_DOCUMENT_ITEM_ELEM'
                                    is_structure              = VALUE tys_pricing_document_item_elem( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'PricingDocumentItemElement_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).



    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_DOCUMENT' ).
    lo_primitive_property->set_edm_name( 'PricingDocument' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRCG_DOCUMENT_HOST_OBJECT' ).
    lo_primitive_property->set_edm_name( 'PrcgDocumentHostObjectNodeID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 90 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRCG_DOC_HOST_OBJ_SONTIN_U' ).
    lo_primitive_property->set_edm_name( 'PrcgDocHostObjSONTInUppercase' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_DOCUMENT_ITEM' ).
    lo_primitive_property->set_edm_name( 'PricingDocumentItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_PROCEDURE_STEP' ).
    lo_primitive_property->set_edm_name( 'PricingProcedureStep' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_DOC_ITEM_ELEMENT_C' ).
    lo_primitive_property->set_edm_name( 'PricingDocItemElementCounter' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_TYPE' ).
    lo_primitive_property->set_edm_name( 'ConditionType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICE_ELEMENT_DESCRIPTION' ).
    lo_primitive_property->set_edm_name( 'PriceElementDescription' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_CLASS' ).
    lo_primitive_property->set_edm_name( 'ConditionClass' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_CALCULATION_TYPE' ).
    lo_primitive_property->set_edm_name( 'ConditionCalculationType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RATE_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'ConditionRateAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_CURRENCY' ).
    lo_primitive_property->set_edm_name( 'ConditionCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'ConditionQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_BASE_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'ConditionBaseQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_QUANTITY_ISOUNIT' ).
    lo_primitive_property->set_edm_name( 'ConditionQuantityISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_QUANTITY_SAPUNIT' ).
    lo_primitive_property->set_edm_name( 'ConditionQuantitySAPUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RATE_RATIO' ).
    lo_primitive_property->set_edm_name( 'ConditionRateRatio' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RATE_RATIO_ISOUN' ).
    lo_primitive_property->set_edm_name( 'ConditionRateRatioISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RATE_RATIO_SAPUN' ).
    lo_primitive_property->set_edm_name( 'ConditionRateRatioSAPUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'ConditionAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale_variable( ).
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_BASE_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'ConditionBaseAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSACTION_CURRENCY' ).
    lo_primitive_property->set_edm_name( 'TransactionCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_CODE' ).
    lo_primitive_property->set_edm_name( 'TaxCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VARIANT_CONDITION' ).
    lo_primitive_property->set_edm_name( 'VariantCondition' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 26 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_ORIGIN' ).
    lo_primitive_property->set_edm_name( 'ConditionOrigin' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_INACTIVE_REASON' ).
    lo_primitive_property->set_edm_name( 'ConditionInactiveReason' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_IS_MANUALLY_CHAN' ).
    lo_primitive_property->set_edm_name( 'ConditionIsManuallyChanged' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_IS_FOR_STATISTIC' ).
    lo_primitive_property->set_edm_name( 'ConditionIsForStatistics' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRICING_DOCUMENT_2' ).
    lo_navigation_property->set_edm_name( '_PricingDocument' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRICING_DOCUMENT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRICING_DOCUMENT_ITEM_2' ).
    lo_navigation_property->set_edm_name( '_PricingDocumentItem' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRICING_DOCUMENT_ITEM_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_pricing_document_item_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRICING_DOCUMENT_ITEM_TYPE'
                                    is_structure              = VALUE tys_pricing_document_item_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'PricingDocumentItem_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).



    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_DOCUMENT' ).
    lo_primitive_property->set_edm_name( 'PricingDocument' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRCG_DOCUMENT_HOST_OBJECT' ).
    lo_primitive_property->set_edm_name( 'PrcgDocumentHostObjectNodeID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 90 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRCG_DOC_HOST_OBJ_SONTIN_U' ).
    lo_primitive_property->set_edm_name( 'PrcgDocHostObjSONTInUppercase' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_DOCUMENT_ITEM' ).
    lo_primitive_property->set_edm_name( 'PricingDocumentItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRICING_DOCUMENT_2' ).
    lo_navigation_property->set_edm_name( '_PricingDocument' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRICING_DOCUMENT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRICING_DOCUMENT_ITEM_ELEM' ).
    lo_navigation_property->set_edm_name( '_PricingDocumentItemElement' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRICING_DOCUMENT_ITEM_ELEM' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

  ENDMETHOD.


  METHOD def_pricing_document_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRICING_DOCUMENT_TYPE'
                                    is_structure              = VALUE tys_pricing_document_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'PricingDocument_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).



    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_DOCUMENT' ).
    lo_primitive_property->set_edm_name( 'PricingDocument' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRCG_DOCUMENT_HOST_OBJECT' ).
    lo_primitive_property->set_edm_name( 'PrcgDocumentHostObjectNodeID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 90 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRCG_DOC_HOST_OBJ_SONTIN_U' ).
    lo_primitive_property->set_edm_name( 'PrcgDocHostObjSONTInUppercase' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRICING_DOCUMENT_ELEMENT' ).
    lo_navigation_property->set_edm_name( '_PricingDocumentElement' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRICING_DOCUMENT_HEADER_EL' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRICING_DOCUMENT_ITEM' ).
    lo_navigation_property->set_edm_name( '_PricingDocumentItem' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRICING_DOCUMENT_ITEM_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

  ENDMETHOD.


  METHOD def_sap_message.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_complex_type        TYPE REF TO /iwbep/if_v4_pm_cplx_type,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_complex_type = mo_model->create_complex_type_by_struct(
                                    iv_complex_type_name      = 'SAP_MESSAGE'
                                    is_structure              = VALUE tys_sap_message( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_complex_type->set_edm_name( 'SAP__Message' ) ##NO_TEXT.
    lo_complex_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_primitive_property = lo_complex_type->get_primitive_property( 'CODE' ).
    lo_primitive_property->set_edm_name( 'code' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'MESSAGE' ).
    lo_primitive_property->set_edm_name( 'message' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'TARGET' ).
    lo_primitive_property->set_edm_name( 'target' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'ADDITIONAL_TARGETS' ).
    lo_primitive_property->set_edm_name( 'additionalTargets' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_collection( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'TRANSITION' ).
    lo_primitive_property->set_edm_name( 'transition' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'NUMERIC_SEVERITY' ).
    lo_primitive_property->set_edm_name( 'numericSeverity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Byte' ) ##NO_TEXT.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'LONGTEXT_URL' ).
    lo_primitive_property->set_edm_name( 'longtextUrl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

  ENDMETHOD.
ENDCLASS.
