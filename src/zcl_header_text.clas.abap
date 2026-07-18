CLASS zcl_header_text DEFINITION
  PUBLIC

  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES : if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_HEADER_TEXT IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    READ ENTITIES OF i_billingdocumenttp

      ENTITY billingdocument

      BY \_text

      ALL FIELDS

      WITH VALUE #( ( billingdocument = '0090000087' ) )

      RESULT DATA(lt_text_result)

      FAILED FINAL(ls_failed_read)

      REPORTED FINAL(ls_reported_read).

    CHECK ls_failed_read IS INITIAL.

    DATA lt_filtered_text LIKE lt_text_result.

    lt_filtered_text = VALUE #(

      FOR ls_text IN lt_text_result

      WHERE (  language   = 'E'

          AND longtextid = 'TX05' )

      ( ls_text )

    ).

    CHECK lt_filtered_text IS NOT INITIAL.

    DATA(lv_longtext) = lt_filtered_text[ 1 ]-longtext.

    READ ENTITIES OF i_billingdocumenttp

      ENTITY billingdocumentitem

      BY \_itemtext

      ALL FIELDS

      WITH VALUE #( ( billingdocument = '0090000087'
                      billingdocumentitem = '000010' ) )

      RESULT DATA(lt_textitem_result)

      FAILED FINAL(ls_faileditem_read)

      REPORTED FINAL(ls_reporteditem_read).

    CHECK ls_faileditem_read IS INITIAL.

    DATA lt_filtereditem_text LIKE lt_textitem_result.

    lt_filtereditem_text = VALUE #(

      FOR ls_itemtext IN lt_textitem_result

      WHERE (  language   = 'E'

          AND longtextid = 'TX05' )

      ( ls_itemtext )

    ).

    CHECK lt_filtereditem_text IS NOT INITIAL.

    DATA(lv_longtextitem) = lt_filtereditem_text[ 1 ]-longtext.


  ENDMETHOD.
ENDCLASS.
