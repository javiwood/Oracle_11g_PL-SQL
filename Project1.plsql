--Assignment 2.1  Using Scalar Variables

DECLARE
  lv_test_date DATE := to_date('10-12-2012);
  lv_test_num CONSTANT NUMBER(3) := 10; 
  lv_test_txt VARCHAR2(10);
BEGIN
  lv_text_txt := 'Leon';
  DBMS_OUTPUT.PUT_LINE(lv_test_date);
  DBMS_OUTPUT.PUT_LINE(lv_test_num);
  DBMS_OUTPUT.PUT_LINE(lv_test_text);
END;
  
-- Assignment 2.2  Creating a Flowchart

-- Will be a Flowchart in Visio


-- Assignment 2.3  Using IF Statements

DECLARE
  lv_total_purchase NUMBER(3) := 150 ;
  lv_rate CHAR(4) ;
BEGIN
  IF lv_total_purchase > 200 THEN
    lv_rate := 'HIGH' ;
  ELSIF v_total_purchase > 100 THEN
    lv_rate := 'MID' ;
  ELSE
    lv_rate := 'LOW' ;
  END IF;
    DBMS_OUTPUT.PUT_LINE(v_rate);
END;


-- Assignment 2.4  Using CASE Statement
