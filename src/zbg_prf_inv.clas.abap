
CLASS zbg_prf_inv DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_bgmc_operation .
    INTERFACES if_bgmc_op_single_tx_uncontr .
    INTERFACES if_serializable_object .

    METHODS constructor
      IMPORTING
        iv_bill     TYPE zsd_char
        iv_m_ind    TYPE abap_boolean
        iv_formtype TYPE ztb_status-id OPTIONAL.


  PROTECTED SECTION.
    DATA : im_bill     TYPE zsd_char,
           im_ind      TYPE abap_boolean,
           im_formtype TYPE ztb_status-id.

    METHODS modify
      RAISING
        cx_bgmc_operation.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZBG_PRF_INV IMPLEMENTATION.


  METHOD constructor.
    im_bill = iv_bill.
    im_ind  = iv_m_ind.
    im_formtype = iv_formtype.
  ENDMETHOD.


  METHOD if_bgmc_op_single_tx_uncontr~execute.
    modify( ).
  ENDMETHOD.


  METHOD modify.
    DATA : wa_data TYPE ztb_prfm_inv.  "<-write your table name
    DATA :lv_pdftest TYPE string.
    DATA lo_pfd TYPE REF TO zcl_prf_inv.  "<-write your logic class

    CREATE OBJECT lo_pfd
      EXPORTING
        iv_formtype = im_formtype.

    lo_pfd->get_pdf_64( EXPORTING io_salesorder = im_bill RECEIVING pdf_64 = DATA(pdf_64) ).


    wa_data-salesorder    = im_bill.
    wa_data-base64_3 = pdf_64.
    wa_data-m_ind    = im_ind.

    MODIFY ztb_prfm_inv FROM @wa_data.  "<-write your table name

  ENDMETHOD.
ENDCLASS.
