CREATE OR REPLACE FUNCTION fn_validate_payroll (
    p_employee_id IN NUMBER
) RETURN VARCHAR2
IS
    v_salary        employees.salary%TYPE;
    v_department_id employees.department_id%TYPE;
BEGIN
    SELECT salary, department_id
      INTO v_salary, v_department_id
      FROM employees
     WHERE employee_id = p_employee_id;

    IF v_salary IS NULL OR v_salary <= 0 THEN
        RETURN 'INVALID: Salary must be greater than zero';
    ELSIF v_department_id IS NULL THEN
        RETURN 'INVALID: Employee has no department';
    ELSE
        RETURN 'VALID';
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'INVALID: Employee not found';
    WHEN OTHERS THEN
        RETURN 'INVALID: ' || SQLERRM;
END fn_validate_payroll;
/
SHOW ERRORS;
