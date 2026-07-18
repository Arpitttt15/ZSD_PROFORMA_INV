 CLASS zcl_prf_inv DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

   PUBLIC SECTION.

     METHODS get_pdf_64
       IMPORTING
         VALUE(io_salesorder) TYPE i_salesorder-salesorder
       RETURNING
         VALUE(pdf_64)        TYPE string.

     CLASS-METHODS sanitize_text
       IMPORTING iv_text        TYPE string
       RETURNING VALUE(rv_text) TYPE string.

     METHODS num2words
       IMPORTING
         iv_num          TYPE string
         iv_major        TYPE string
         iv_minor        TYPE string
         iv_top_call     TYPE abap_bool DEFAULT abap_true
       RETURNING
         VALUE(rv_words) TYPE string.


     METHODS get_billing_text
       IMPORTING
         iv_salesorder     TYPE i_salesorder-salesorder
         iv_salesorderitem TYPE i_salesorderitem-salesorderitem OPTIONAL
         iv_longtextid     TYPE i_salesordertexttp-longtextid
         iv_language       TYPE i_salesordertexttp-language
       RETURNING
         VALUE(rv_text)    TYPE string.


     METHODS escape_xml
       IMPORTING
         iv_in         TYPE any
       RETURNING
         VALUE(rv_out) TYPE string.

     METHODS constructor
       IMPORTING
         iv_formtype TYPE ztb_status-id OPTIONAL.

   PRIVATE SECTION.

     METHODS build_xml
       IMPORTING
         VALUE(io_salesorder) TYPE i_salesorder-salesorder
       RETURNING
         VALUE(rv_xml)        TYPE string.

     DATA mv_formtype TYPE ztb_status-id.


ENDCLASS.



CLASS ZCL_PRF_INV IMPLEMENTATION.


   METHOD constructor.

     mv_formtype = iv_formtype.

   ENDMETHOD.


   METHOD get_pdf_64.

     DATA(lv_xml) = build_xml(
                       io_salesorder = io_salesorder ).

     CALL METHOD zadobe_call=>getpdf
       EXPORTING
         template = 'ZSD_PRF_INV/ZSD_PRF_INV'
         xmldata  = lv_xml
       RECEIVING
         result   = DATA(lv_result).

     IF lv_result IS NOT INITIAL.
       pdf_64 = lv_result.
     ENDIF.

   ENDMETHOD.


   METHOD build_xml.

     DATA : lv_invno        TYPE i_salesorder-salesorder,
            lv_date         TYPE string,
            lv_region_text  TYPE i_regiontext-regionname,
            lv_country_text TYPE i_countrytext-countryname,
            lv_buy          TYPE i_salesorder-purchaseorderbycustomer,
            lv_custpur      TYPE string,
            lv_hsn          TYPE i_productplantbasic-consumptiontaxctrlcode,
            lv_qty          TYPE p DECIMALS 2,
            lv_uom          TYPE i_salesorderitem-orderquantityunit,
            lv_rate         TYPE p DECIMALS 2,
            lv_amount       TYPE p DECIMALS 2,
            lv_salesorder   TYPE i_salesorder-salesorder,
            it_so_item      TYPE STANDARD TABLE OF i_salesorderitem,
            ls_so_item      TYPE i_salesorderitem,
            lv_portofload   TYPE i_salesorder-yy1_portofloading_sdh,
            lv_portofdis    TYPE i_salesorder-yy1_portofdischarge_sdh.

     lv_salesorder = io_salesorder.

     SELECT SINGLE
          salesorder,
          salesorderdate,
          purchaseorderbycustomer,
          customerpurchaseorderdate,
          yy1_portofloading_sdh,
          yy1_portofdischarge_sdh,
          billingcompanycode
     FROM i_salesorder
     WHERE salesorder = @io_salesorder
     INTO @DATA(wa_saleshead).

     DATA : lv_comp TYPE string.

     IF wa_saleshead-billingcompanycode = '1000'.
       lv_comp = 'MPM PRIVATE LIMITED'.
     ELSEIF wa_saleshead-billingcompanycode = '2000'.
       lv_comp = 'MPM - DURRANS REFRACOAT PRIVATE LIMITED'.
     ENDIF.

     DATA(lv_comp_nm) = |For { lv_comp },|.

     SELECT *
     FROM i_salesorderitem
     WHERE salesorder = @io_salesorder
     INTO TABLE @it_so_item.

     READ TABLE it_so_item INTO ls_so_item INDEX 1.

     SELECT
        longtextid,
        language,
        longtext
    FROM i_salesordertexttp
    WHERE salesorder = @io_salesorder
    INTO TABLE @DATA(it_sales_item).

     DATA: lv_notif      TYPE string,
           lv_port_load  TYPE string,
           lv_port_disc  TYPE string,
           lv_itmd_bank  TYPE string,
           lv_spmt_mks   TYPE string,
           lv_fpod       TYPE string,
           lv_pckg       TYPE string,
           lv_bankno     TYPE string,
           lv_swift_code TYPE string,
           lv_bank_name  TYPE string,
           lv_bank_add   TYPE string,
           lv_ifs        TYPE string,
           lv_expt_add   TYPE string,
           lv_consg      TYPE string,
           lv_regd_off   TYPE string,
           lv_todm       TYPE string.

     LOOP AT it_sales_item INTO DATA(ls_text).

       DATA(lv_text) = get_billing_text(
                          iv_salesorder = io_salesorder
                          iv_longtextid = ls_text-longtextid
                          iv_language   = ls_text-language ).

       CASE ls_text-longtextid.

         WHEN 'ZE01'. lv_bankno    = lv_text.
         WHEN 'ZE02'. lv_itmd_bank = lv_text.
         WHEN 'ZE03'. lv_swift_code = lv_text.
         WHEN 'ZE04'. lv_todm     = lv_text.
         WHEN 'ZE05'. lv_port_load = lv_text.
         WHEN 'ZE07'. lv_port_disc = lv_text.
         WHEN 'ZE08'. lv_fpod      = lv_text.
         WHEN 'ZE10'. lv_spmt_mks  = lv_text.
         WHEN 'ZE14'. lv_notif     = lv_text.
         WHEN 'ZE15'. lv_expt_add     = lv_text.
         WHEN 'ZE16'. lv_regd_off     = lv_text.
         WHEN 'ZE12'. lv_consg     = lv_text.
         WHEN 'ZE17'. lv_bank_name = lv_text.
         WHEN 'ZE31'. lv_pckg      = lv_text.
         WHEN 'ZA03'. lv_bank_add = lv_text.
         WHEN 'ZA02'. lv_ifs = lv_text.

       ENDCASE.

     ENDLOOP.

     SELECT
        salesorderitem,
        longtextid,
        language,
        longtext
    FROM i_salesorderitemtexttp
    WHERE salesorder = @io_salesorder
    INTO TABLE @DATA(it_sales_text).

     DATA: lv_desc TYPE string.

     LOOP AT it_sales_text INTO DATA(ls_textitm).

       DATA(lv_textitm) = get_billing_text(
                          iv_salesorder = io_salesorder
                          iv_salesorderitem = ls_so_item-salesorderitem
                          iv_longtextid = ls_textitm-longtextid
                          iv_language   = ls_textitm-language ).

       CASE ls_textitm-longtextid.

         WHEN 'ZEI1'. lv_desc = lv_textitm.

       ENDCASE.

     ENDLOOP.

     IF sy-subrc = 0.
       lv_qty = ls_so_item-orderquantity.
       lv_uom = ls_so_item-orderquantityunit.

       SELECT
        conditiontype,
        conditionratevalue,
        conditionamount
       FROM i_salesorderitempricingelement
       WHERE salesorder = @io_salesorder
       AND salesorderitem = @ls_so_item-salesorderitem
       INTO TABLE @DATA(lt_prcg).

     ENDIF.

     IF wa_saleshead-customerpurchaseorderdate IS NOT INITIAL.
       lv_custpur = |{ wa_saleshead-customerpurchaseorderdate+6(2) }/{ wa_saleshead-customerpurchaseorderdate+4(2) }/{ wa_saleshead-customerpurchaseorderdate+0(4) }|.
     ENDIF.

     lv_buy = wa_saleshead-purchaseorderbycustomer.

     DATA(lv_buyr_dt) = |{ lv_buy } / { lv_custpur }|.

     lv_invno = |{  lv_salesorder ALPHA = OUT }|.
     lv_date = |{ wa_saleshead-salesorderdate+6(2) }/{ wa_saleshead-salesorderdate+4(2) }/{ wa_saleshead-salesorderdate+0(4) }|.

     DATA(lv_inv_dt) = |{ lv_invno } / { lv_date }|.

     READ TABLE lt_prcg INTO DATA(ls_rate) WITH KEY conditiontype = 'ZFOB'.
     IF sy-subrc = 0.
       lv_amount = ls_rate-conditionamount.
     ENDIF.

     IF lv_qty IS NOT INITIAL
        AND lv_amount IS NOT INITIAL.

       lv_rate = lv_amount / lv_qty .

     ELSE.
       CLEAR lv_amount.
     ENDIF.

     DATA lv_inv_words TYPE string.

     lv_inv_words = num2words(
                      iv_num   = |{ lv_amount }|
                      iv_major = 'US DOLLARS'
                      iv_minor = 'CENTS'
                    ).

     IF it_so_item IS NOT INITIAL.
       SELECT
          product,
          plant,
          consumptiontaxctrlcode
          FROM i_productplantbasic
          FOR ALL ENTRIES IN @it_so_item
          WHERE product = @it_so_item-product
          AND plant = @it_so_item-plant
          INTO TABLE @DATA(lt_hsn).
     ENDIF.

     READ TABLE it_so_item INTO ls_so_item INDEX 1.
     IF sy-subrc = 0.

       READ TABLE lt_hsn INTO DATA(ls_hsn)
         WITH KEY
           product = ls_so_item-product
           plant   = ls_so_item-plant.

       IF sy-subrc = 0.
         lv_hsn = ls_hsn-consumptiontaxctrlcode.
       ENDIF.

     ENDIF.

     DATA: lv_salesorg  TYPE i_salesorganization-salesorganization,
           lv_addressid TYPE ad_addrnum.

     SELECT SINGLE salesorganization
       FROM i_salesorderitem
       WHERE salesorder = @io_salesorder
       INTO @lv_salesorg.

     IF lv_salesorg IS NOT INITIAL.
       SELECT SINGLE addressid
         FROM i_salesorganization
         WITH PRIVILEGED ACCESS
         WHERE salesorganization = @lv_salesorg
         INTO @lv_addressid.
     ENDIF.

     DATA: ls_address TYPE i_address_2.

     IF lv_addressid IS NOT INITIAL.
       SELECT SINGLE
              organizationname1,
              streetname,
              streetprefixname1,
              streetprefixname2,
              cityname,
              postalcode,
              region,
              country
         FROM i_address_2
         WITH PRIVILEGED ACCESS
         WHERE addressid = @lv_addressid
         INTO CORRESPONDING FIELDS OF @ls_address.
     ENDIF.

     SELECT SINGLE regionname
       FROM i_regiontext
       WHERE country  = @ls_address-country
         AND region   = @ls_address-region
         AND language = @sy-langu
       INTO @lv_region_text.

     SELECT SINGLE countryname
       FROM i_countrytext
       WHERE country  = @ls_address-country
         AND language = @sy-langu
       INTO @lv_country_text.

     DATA: lv_phone TYPE string,
           lv_fax   TYPE string.

     SELECT SINGLE phoneareacodesubscribernumber
       FROM i_addressphonenumber_2
       WITH PRIVILEGED ACCESS
       WHERE addressid = @lv_addressid
       INTO @lv_phone.

     SELECT SINGLE faxareacodesubscribernumber
       FROM i_addressfaxnumber_2
       WITH PRIVILEGED ACCESS
       WHERE addressid = @lv_addressid
       INTO @lv_fax.

     DATA: lv_street TYPE string.

     IF ls_address-streetname IS NOT INITIAL.
       lv_street = ls_address-streetname.
     ELSE.
       lv_street = |{ ls_address-streetprefixname1 } { ls_address-streetprefixname2 }|.
     ENDIF.

     DATA: lv_full_address TYPE string.

     lv_full_address =
       |{ ls_address-organizationname1 }\n{ lv_street }\n{ ls_address-cityname } - { ls_address-postalcode }, { lv_region_text }, { lv_country_text }\nTEL :{ lv_phone }, FAX :{ lv_fax }|.

     CONDENSE lv_full_address.

     SELECT * FROM i_salesorderpartner        "#EC CI_ALL_FIELDS_NEEDED
                WHERE salesorder = @io_salesorder
                INTO TABLE @DATA(it_vbpa).

     DATA:
       ls_we_partner      TYPE i_salesorderpartner,
       lv_we_customer     TYPE i_customer-customer,
       lv_we_region_text  TYPE i_regiontext-regionname,
       lv_we_country_text TYPE i_countrytext-countryname.

     READ TABLE it_vbpa INTO ls_we_partner
       WITH KEY partnerfunction = 'WE'.

     IF sy-subrc = 0.
       lv_we_customer = ls_we_partner-customer.
     ENDIF.

     DATA: lv_we_addressid TYPE ad_addrnum.

     IF lv_we_customer IS NOT INITIAL.

       SELECT SINGLE addressid
         FROM i_customer
         WITH PRIVILEGED ACCESS
         WHERE customer = @lv_we_customer
         INTO @lv_we_addressid.

     ENDIF.

     DATA:
       ls_address_we TYPE i_address_2,
       lv_street_we  TYPE string,
       lv_we_address TYPE string.

     IF lv_we_addressid IS NOT INITIAL.

       SELECT SINGLE
              organizationname1,
              streetname,
              streetprefixname1,
              streetprefixname2,
              cityname,
              postalcode,
              region,
              country
         FROM i_address_2
         WITH PRIVILEGED ACCESS
         WHERE addressid = @lv_we_addressid
         INTO CORRESPONDING FIELDS OF @ls_address_we.

     ENDIF.

     IF ls_address_we-region IS NOT INITIAL
    AND ls_address_we-country IS NOT INITIAL.

       SELECT SINGLE regionname
         FROM i_regiontext
         WHERE country  = @ls_address_we-country
           AND region   = @ls_address_we-region
           AND language = @sy-langu
         INTO @lv_we_region_text.

       SELECT SINGLE countryname
         FROM i_countrytext
         WHERE country  = @ls_address_we-country
           AND language = @sy-langu
         INTO @lv_we_country_text.

     ENDIF.

     IF sy-subrc = 0.

       "--- Street logic (exactly as requested)
       IF ls_address_we-streetname IS NOT INITIAL.
         lv_street_we = ls_address_we-streetname.
       ELSE.
         lv_street_we = |{ ls_address_we-streetprefixname1 } { ls_address_we-streetprefixname2 }|.
       ENDIF.

       "--- Build full address
       lv_we_address =
         |{ ls_address_we-organizationname1 }\n{ lv_street_we }\n{ ls_address_we-cityname } - { ls_address_we-postalcode },  { lv_we_region_text }, { lv_we_country_text }|.

       CONDENSE lv_we_address.


     ENDIF.

     DATA:
       lv_incoterms      TYPE i_salesorder-incotermsclassification,
       lv_payterms       TYPE i_salesorder-customerpaymentterms,
       lv_payterms_text  TYPE i_paymenttermstext-paymenttermsname,
       lv_req_deliv_date TYPE i_salesorder-requesteddeliverydate.

     SELECT SINGLE
            incotermsclassification,
            customerpaymentterms
       FROM i_salesorder
       WHERE salesorder = @io_salesorder
       INTO ( @lv_incoterms,
              @lv_payterms ).


     IF lv_payterms IS NOT INITIAL.

       SELECT SINGLE paymenttermsname
         FROM i_paymenttermstext
         WHERE paymentterms = @lv_payterms
           AND language     = @sy-langu
         INTO @lv_payterms_text.

     ENDIF.

     DATA lv_supplier TYPE i_supplier-supplier.

     IF ls_so_item-plant IS NOT INITIAL.

       SELECT SINGLE plantsupplier
         FROM i_plant
         WITH PRIVILEGED ACCESS
         WHERE plant = @ls_so_item-plant
         INTO @lv_supplier.

     ENDIF.

     DATA:
       lv_bankaccount    TYPE i_businesspartnerbank-bankaccount,
       lv_bank           TYPE i_businesspartnerbank-banknumber,
       lv_bankcountrykey TYPE i_businesspartnerbank-bankcountrykey.

     IF lv_supplier IS NOT INITIAL.

       SELECT SINGLE
              bankaccount,
              banknumber,
              bankcountrykey
         FROM i_businesspartnerbank
         WITH PRIVILEGED ACCESS
         WHERE businesspartner = @lv_supplier
         INTO ( @lv_bankaccount,
                @lv_bank,
                @lv_bankcountrykey ).

     ENDIF.

     DATA:
       lv_bankname     TYPE i_bank_2-bankname,
       lv_bankacc      TYPE i_bank_2-bank,
       lv_swift        TYPE i_bank_2-swiftcode,
       lv_branch       TYPE i_bank_2-bankbranch,
       lv_city         TYPE i_bank_2-shortcityname,
       lv_bankstreet   TYPE i_bank_2-shortstreetname,
       lv_bankregion   TYPE i_bank_2-region,
       lv_bankcountry  TYPE i_bank_2-bankcountry,
       lv_bank_address TYPE string,
       lv_bnk_addr_id  TYPE i_bank_2-addressid,
       lv_ifsc         TYPE i_bank_2-bankinternalid,
       lv_bk_post      TYPE i_address_2-postalcode.

     IF lv_bank IS NOT INITIAL.

       SELECT SINGLE
              bankname,
              bank,
              swiftcode,
              bankbranch,
              shortcityname,
              shortcityname,
              region,
              bankcountry,
              addressid,
              bankinternalid
         FROM i_bank_2
         WITH PRIVILEGED ACCESS
         WHERE bankinternalid   = @lv_bank
           AND bankcountry = @lv_bankcountrykey
           AND bank = @lv_bankaccount
         INTO ( @lv_bankname,
                @lv_bankacc,
                @lv_swift,
                @lv_branch,
                @lv_bankstreet,
                @lv_city,
                @lv_bankregion,
                @lv_bankcountry,
                @lv_bnk_addr_id,
                @lv_ifsc ).

     ENDIF.

     DATA lv_bank_region_text TYPE i_regiontext-regionname.

     SELECT SINGLE
      postalcode
        FROM i_address_2
        WITH PRIVILEGED ACCESS
        WHERE addressid  = @lv_bnk_addr_id
        INTO @lv_bk_post.

     SELECT SINGLE regionname
       FROM i_regiontext
       WHERE country  = @lv_bankcountry
         AND region   = @lv_bankregion
         AND language = @sy-langu
       INTO @lv_bank_region_text.

     DATA lv_bank_country_text TYPE i_countrytext-countryname.

     SELECT SINGLE countryname
       FROM i_countrytext
       WHERE country  = @lv_bankcountry
         AND language = @sy-langu
       INTO @lv_bank_country_text.

     IF sy-subrc = 0.

       lv_bank_address =
         |{ lv_bank_name }\n{ lv_bank_add }|.

       CONDENSE lv_bank_address.
     ENDIF.

     DATA(lv_shpmt_frm) = | FROM { lv_port_load } TO { lv_port_disc }.|.

     DATA lv_name TYPE ztb_status-name.

     SELECT SINGLE name
       FROM ztb_status
      WHERE id = @mv_formtype
       INTO @lv_name.

     DATA(lv_header) =
      |<form1>| &&
      |   <View/>| &&
      |   <Table>| &&
      |      <Table2>| &&
      |         <HeaderRow/>|.

     DATA(lv_items) = ``.

     lv_items &&=
      |         <Row1>| &&
      |            <desc>| &&
      |               <descrptn>{ zcl_escape_xml=>escape_xml( lv_desc ) }</descrptn>| &&
      |               <hsn>{ zcl_escape_xml=>escape_xml( lv_hsn ) }</hsn>| &&
      |               <pckng>{ zcl_escape_xml=>escape_xml( lv_pckg ) }</pckng>| &&
      |            </desc>| &&
      |            <quantity>{ zcl_escape_xml=>escape_xml( lv_qty ) }</quantity>| &&
      |            <uom>{ zcl_escape_xml=>escape_xml( lv_uom ) }</uom>| &&
      |            <rate_usd>{ zcl_escape_xml=>escape_xml( lv_rate ) }</rate_usd>| &&
      |            <amt_usd>{ zcl_escape_xml=>escape_xml( lv_amount ) }</amt_usd>| &&
      |         </Row1>|.

     DATA(lv_footer) =
      |   </Table2>| &&
      |   </Table>| &&
      |   <name1>{ zcl_escape_xml=>escape_xml( ls_address-organizationname1 ) }</name1>| &&
      |   <bank>{ zcl_escape_xml=>escape_xml( lv_bank_address ) }</bank>| &&
      |   <accno>{ zcl_escape_xml=>escape_xml( lv_bankno ) }</accno>| &&
      |   <swift>{ zcl_escape_xml=>escape_xml( lv_swift_code ) }</swift>| &&
      |   <ifsc_code>{ zcl_escape_xml=>escape_xml( lv_ifs ) }</ifsc_code>| &&
      |   <intmd_bank>{ zcl_escape_xml=>escape_xml( lv_itmd_bank ) }</intmd_bank>| &&
      |   <todm>{ zcl_escape_xml=>escape_xml( lv_todm ) }</todm>| &&
      |   <Header>{ zcl_escape_xml=>escape_xml( lv_name ) }</Header>| &&
      |   <inv_no_dt>{ zcl_escape_xml=>escape_xml( lv_inv_dt ) }</inv_no_dt>| &&
      |   <buyer_no_dt>{ zcl_escape_xml=>escape_xml( lv_buyr_dt ) }</buyer_no_dt>| &&
      |   <comp_nm>{ zcl_escape_xml=>escape_xml( lv_comp_nm ) }</comp_nm>| &&
      |   <notify_prty>{ zcl_escape_xml=>escape_xml( lv_notif ) }</notify_prty>| &&
      |   <reg_off_fctry>{ zcl_escape_xml=>escape_xml( lv_regd_off ) }</reg_off_fctry>| &&
      |   <consignee>{ zcl_escape_xml=>escape_xml( lv_consg ) }</consignee>| &&
      |   <port_load>{ zcl_escape_xml=>escape_xml( lv_port_load ) }</port_load>| &&
      |   <port_dis>{ zcl_escape_xml=>escape_xml( lv_port_disc ) }</port_dis>| &&
      |   <addr1>{ zcl_escape_xml=>escape_xml( lv_expt_add ) }</addr1>| &&
      |   <amt_in_wrds>{ zcl_escape_xml=>escape_xml( lv_inv_words ) }</amt_in_wrds>| &&
      |   <CFR>{ zcl_escape_xml=>escape_xml( lv_amount ) }</CFR>| &&
      |   <CFRval>{ zcl_escape_xml=>escape_xml( lv_incoterms ) }</CFRval>| &&
      |   <shpmnt_frm>{ zcl_escape_xml=>escape_xml( lv_shpmt_frm ) }</shpmnt_frm>| &&
      |   <shpng_mrks>{ zcl_escape_xml=>escape_xml( lv_spmt_mks ) }</shpng_mrks>| &&
      |</form1>|.

     rv_xml = |{ lv_header }{ lv_items }{ lv_footer }|.

   ENDMETHOD.


   METHOD get_billing_text.

     rv_text = ``.

     "========================
     " HEADER TEXT
     "========================
     IF iv_salesorderitem IS INITIAL.

       READ ENTITIES OF i_salesordertp
         ENTITY salesorder
         BY \_text
         ALL FIELDS
         WITH VALUE #( ( salesorder = iv_salesorder ) )
         RESULT DATA(lt_header_text).

       READ TABLE lt_header_text INTO DATA(ls_header_text)
            WITH KEY language   = iv_language
                     longtextid = iv_longtextid.

       IF sy-subrc = 0.
         rv_text = ls_header_text-longtext.
       ENDIF.

     ENDIF.



     "========================
     " ITEM TEXT
     "========================
     IF iv_salesorderitem IS NOT INITIAL.

       READ ENTITIES OF i_salesordertp
         ENTITY salesorderitem
         BY \_itemtext
         ALL FIELDS
         WITH VALUE #(
           ( salesorder = iv_salesorder
             salesorderitem = iv_salesorderitem ) )
         RESULT DATA(lt_item_text).

       READ TABLE lt_item_text INTO DATA(ls_item_text)
            WITH KEY language   = iv_language
                     longtextid = iv_longtextid.

       IF sy-subrc = 0.
         rv_text = ls_item_text-longtext.
       ENDIF.

     ENDIF.


   ENDMETHOD.


   METHOD num2words.

     TYPES: BEGIN OF ty_map,
              num  TYPE i,
              word TYPE string,
            END OF ty_map.

     DATA: lt_map TYPE STANDARD TABLE OF ty_map,
           ls_map TYPE ty_map.

     DATA: lv_int  TYPE i,
           lv_dec  TYPE i,
           lv_inp1 TYPE string,
           lv_inp2 TYPE string.

     DATA: lv_result TYPE string,
           lv_decres TYPE string.

     IF iv_num IS INITIAL.
       RETURN.
     ENDIF.

     lt_map = VALUE #(
       ( num = 0  word = 'Zero' )
       ( num = 1  word = 'One' )
       ( num = 2  word = 'Two' )
       ( num = 3  word = 'Three' )
       ( num = 4  word = 'Four' )
       ( num = 5  word = 'Five' )
       ( num = 6  word = 'Six' )
       ( num = 7  word = 'Seven' )
       ( num = 8  word = 'Eight' )
       ( num = 9  word = 'Nine' )
       ( num = 10 word = 'Ten' )
       ( num = 11 word = 'Eleven' )
       ( num = 12 word = 'Twelve' )
       ( num = 13 word = 'Thirteen' )
       ( num = 14 word = 'Fourteen' )
       ( num = 15 word = 'Fifteen' )
       ( num = 16 word = 'Sixteen' )
       ( num = 17 word = 'Seventeen' )
       ( num = 18 word = 'Eighteen' )
       ( num = 19 word = 'Nineteen' )
       ( num = 20 word = 'Twenty' )
       ( num = 30 word = 'Thirty' )
       ( num = 40 word = 'Forty' )
       ( num = 50 word = 'Fifty' )
       ( num = 60 word = 'Sixty' )
       ( num = 70 word = 'Seventy' )
       ( num = 80 word = 'Eighty' )
       ( num = 90 word = 'Ninety' )
     ).

     SPLIT iv_num AT '.' INTO lv_inp1 lv_inp2.
     lv_int = lv_inp1.
     IF lv_inp2 IS NOT INITIAL.
       lv_dec = lv_inp2.
     ENDIF.

     " ---- INTEGER PART ----
     IF lv_int < 20.
       READ TABLE lt_map INTO ls_map WITH KEY num = lv_int.
       lv_result = ls_map-word.

     ELSEIF lv_int < 100.
       READ TABLE lt_map INTO ls_map WITH KEY num = ( lv_int DIV 10 ) * 10.
       lv_result = ls_map-word.
       IF lv_int MOD 10 > 0.
         READ TABLE lt_map INTO ls_map WITH KEY num = lv_int MOD 10.
         lv_result = |{ lv_result } { ls_map-word }|.
       ENDIF.

     ELSEIF lv_int < 1000.
       lv_result =
         num2words( iv_num = |{ lv_int DIV 100 }|
                    iv_major = iv_major
                    iv_minor = iv_minor
                    iv_top_call = abap_false )
         && ' Hundred'.

       IF lv_int MOD 100 > 0.
         lv_result = |{ lv_result } |
           && num2words( iv_num = |{ lv_int MOD 100 }|
                         iv_major = iv_major
                         iv_minor = iv_minor
                         iv_top_call = abap_false ).
       ENDIF.

     ELSEIF lv_int < 1000000. " < 1 Million
       lv_result =
         num2words( iv_num = |{ lv_int DIV 1000 }|
                    iv_major = iv_major
                    iv_minor = iv_minor
                    iv_top_call = abap_false )
         && ' Thousand'.

       IF lv_int MOD 1000 > 0.
         lv_result = |{ lv_result } |
           && num2words( iv_num = |{ lv_int MOD 1000 }|
                         iv_major = iv_major
                         iv_minor = iv_minor
                         iv_top_call = abap_false ).
       ENDIF.

     ELSEIF lv_int < 1000000000. " < 1 Billion
       lv_result =
         num2words( iv_num = |{ lv_int DIV 1000000 }|
                    iv_major = iv_major
                    iv_minor = iv_minor
                    iv_top_call = abap_false )
         && ' Million'.

       IF lv_int MOD 1000000 > 0.
         lv_result = |{ lv_result } |
           && num2words( iv_num = |{ lv_int MOD 1000000 }|
                         iv_major = iv_major
                         iv_minor = iv_minor
                         iv_top_call = abap_false ).
       ENDIF.

     ELSE. " >= 1 Billion
       lv_result =
         num2words( iv_num = |{ lv_int DIV 1000000000 }|
                    iv_major = iv_major
                    iv_minor = iv_minor
                    iv_top_call = abap_false )
         && ' Billion'.

       IF lv_int MOD 1000000000 > 0.
         lv_result = |{ lv_result } |
           && num2words( iv_num = |{ lv_int MOD 1000000000 }|
                         iv_major = iv_major
                         iv_minor = iv_minor
                         iv_top_call = abap_false ).
       ENDIF.
     ENDIF.


     " ---- APPEND CURRENCY ONLY ONCE ----
     rv_words = lv_result.

     IF iv_top_call = abap_true.
       IF lv_dec > 0.
         lv_decres =
           num2words(
             iv_num      = |{ lv_dec }|
             iv_major    = iv_major
             iv_minor    = iv_minor
             iv_top_call = abap_false
           ).
         rv_words = |{ rv_words } { iv_major } AND { lv_decres } { iv_minor } ONLY|.
       ELSE.
         rv_words = |{ rv_words } { iv_major } ONLY|.
       ENDIF.
     ENDIF.

     CONDENSE rv_words.
     TRANSLATE rv_words TO UPPER CASE.

   ENDMETHOD.


   METHOD sanitize_text.

     CONSTANTS c_nbsp TYPE string VALUE ' '.  " ← NBSP pasted here

     rv_text = iv_text.

     REPLACE ALL OCCURRENCES OF c_nbsp IN rv_text WITH space.

     rv_text = escape(
                 val    = rv_text
                 format = cl_abap_format=>e_xml_text ).

     REPLACE ALL OCCURRENCES OF '&#160;' IN rv_text WITH space.

     REPLACE ALL OCCURRENCES OF cl_abap_char_utilities=>cr_lf
       IN rv_text WITH space.
     REPLACE ALL OCCURRENCES OF cl_abap_char_utilities=>newline
       IN rv_text WITH space.

     CONDENSE rv_text.

   ENDMETHOD.


   METHOD escape_xml.

     rv_out = CONV string( iv_in ).

     " Normalize NBSP copied from PDF (PASTE NBSP BETWEEN QUOTES)
     REPLACE ALL OCCURRENCES OF ' ' IN rv_out WITH space.

     " Escape XML special characters ONLY
     REPLACE ALL OCCURRENCES OF '&'   IN rv_out WITH '&amp;'.
     REPLACE ALL OCCURRENCES OF '<'   IN rv_out WITH '&lt;'.
     REPLACE ALL OCCURRENCES OF '>'   IN rv_out WITH '&gt;'.
     REPLACE ALL OCCURRENCES OF '"'   IN rv_out WITH '&quot;'.
     REPLACE ALL OCCURRENCES OF ''''  IN rv_out WITH '&apos;'.

   ENDMETHOD.
ENDCLASS.
