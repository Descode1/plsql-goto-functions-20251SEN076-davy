SET SERVEROUTPUT ON;

BEGIN
    DBMS_OUTPUT.PUT_LINE('Employee 101: ' || fn_validate_payroll(101));
    DBMS_OUTPUT.PUT_LINE('Employee 105: ' || fn_validate_payroll(105));
    DBMS_OUTPUT.PUT_LINE('Employee 999: ' || fn_validate_payroll(999));
END;
/

SELECT
    employee_id,
    first_name,
    last_name,
    fn_validate_payroll(employee_id) AS payroll_status
FROM employees
ORDER BY employee_id;
