SET SERVEROUTPUT ON;

DECLARE
    v_employee_id employees.employee_id%TYPE := 101;
    v_salary      employees.salary%TYPE;
BEGIN
    SELECT salary
      INTO v_salary
      FROM employees
     WHERE employee_id = v_employee_id;

    IF v_salary < 400000 THEN
        GOTO low_salary;
    ELSIF v_salary <= 800000 THEN
        GOTO normal_salary;
    ELSE
        GOTO high_salary;
    END IF;

    <<low_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary review: LOW. Consider a salary adjustment.');
    GOTO finish;

    <<normal_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary review: NORMAL. No adjustment required.');
    GOTO finish;

    <<high_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary review: HIGH. Salary is above the review threshold.');

    <<finish>>
    DBMS_OUTPUT.PUT_LINE('Employee ID: ' || v_employee_id || ', Salary: ' || TO_CHAR(v_salary));
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found.');
END;
/
