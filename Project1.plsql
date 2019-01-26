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

DECLARE
  lv_total_purchase NUMBER(4) := 300;
  lv_cust_rating VARCHAR2(5);
BEGIN
  CASE
    WHEN lv_total_purchase > 200 THEN
    lv_cust_rating := 'high';
    WHEN  lv_total_purchase > 100 THEN
    lv_cust_rating := 'mid';
    ELSE
      lv_cust_rating := 'low';
  END CASE;
  DBMS_OUTPUT.PUT_LINE(lv_cust_rating);
END;

-- Assignment 2.5

DECLARE
  lv_total_purchase NUMBER(4) := 300;
  lv_cust_rating VARCHAR2(5);
BEGIN
  CASE
    WHEN lv_total_purchase > 200 THEN
    lv_cust_rating := 'high';
    WHEN  lv_total_purchase > 100 THEN
    lv_cust_rating := 'mid';
    ELSE
      lv_cust_rating := 'low';
  END CASE;
  DBMS_OUTPUT.PUT_LINE(lv_cust_rating);
END;
                             
-- Assignment 2.11
                               
DECLARE
  lv_donor_balance NUMBER(8,2):= 1000.00;
  lv_amount_paid NUMBER(8,2) := 0;
  lv_payment_due_date DATE := '01-JAN-13';
  lv_monthly_payment NUMBER(7,2) := 100.00;
  lv_number_payments NUMBER(3) := 10;
  lv_get_month VARCHAR2(10);
  lv_cnt_num NUMBER(2):= 1;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Payment Number' ||'Balance'||'Payment'||'Due Date' );
  WHILE lv_amount_paid < lv_donor_balance LOOP
    lv_get_month := EXTRACT(MONTH FROM lv_payment_due_date);
    IF lv_get_month IN (1,3,5,7,8,10,12) THEN 
      lv_payment_due_date := lv_payment_due_date + interval '31' day;
    ELSIF lv_get_month IN (4,6,9,11) THEN
      lv_payment_due_date := lv_payment_due_date + interval '30' day;   
    ELSE 
      lv_payment_due_date := lv_payment_due_date + interval '28' day;
    END IF;
    lv_amount_paid := lv_amount_paid + lv_monthly_payment;
    DBMS_OUTPUT.PUT_LINE(lv_cnt_num || ' ' || lv_amount_paid|| ' '||
    lv_monthly_payment || ' ' || lv_payment_due_date);
    EXIT WHEN lv_donor_balance <= 0;
  END LOOP;
END;
                              


                               
                               
                               
