SET SERVEROUTPUT ON;

BEGIN
    DBMS_OUTPUT.PUT_LINE('Annual salary for 500000: ' || fn_annual_salary(500000));
    DBMS_OUTPUT.PUT_LINE('Years of service since 2020-01-01: ' || fn_years_of_service(DATE '2020-01-01'));
    DBMS_OUTPUT.PUT_LINE('Tax on 250000: ' || fn_calculate_tax(250000));
    DBMS_OUTPUT.PUT_LINE('Tax on 500000: ' || fn_calculate_tax(500000));
    DBMS_OUTPUT.PUT_LINE('Tax on 800000: ' || fn_calculate_tax(800000));
    DBMS_OUTPUT.PUT_LINE('Tax on 1500000: ' || fn_calculate_tax(1500000));
    DBMS_OUTPUT.PUT_LINE('Department 20: ' || fn_dept_name(20));
    DBMS_OUTPUT.PUT_LINE('Department 999: ' || fn_dept_name(999));
END;
/
