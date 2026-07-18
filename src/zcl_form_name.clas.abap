CLASS zcl_form_name DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_FORM_NAME IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    SELECT *                                            "#EC CI_NOWHERE
    FROM ztb_status
    INTO TABLE @DATA(lt_stat).
    IF  sy-subrc = 0.
      DELETE ztb_status FROM TABLE @lt_stat.
    ENDIF.

    CLEAR : lt_stat.

    lt_stat = VALUE #( ( id = '1' name = 'PROFORMA INVOICE' )
                       ( id = '2' name = 'QUOTATION' )
                                    ).

    IF  lt_stat IS NOT INITIAL.
      INSERT ztb_status FROM TABLE @lt_stat.
      COMMIT WORK.
    ENDIF.

  ENDMETHOD.
ENDCLASS.
