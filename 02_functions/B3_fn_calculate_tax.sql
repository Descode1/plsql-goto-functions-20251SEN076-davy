CREATE OR REPLACE FUNCTION fn_calculate_tax (
    p_salary IN NUMBER
) RETURN NUMBER
IS
    v_tax NUMBER(12,2);
BEGIN
    IF p_salary IS NULL OR p_salary < 0 THEN
        RAISE_APPLICATION_ERROR(-20004, 'Salary must be zero or greater.');
    END IF;


    IF p_salary <= 300000 THEN
        v_tax := 0;
    ELSIF p_salary <= 600000 THEN
        v_tax := p_salary * 0.10;
    ELSIF p_salary <= 1000000 THEN
        v_tax := p_salary * 0.20;
    ELSE
        v_tax := p_salary * 0.30;
    END IF;

    RETURN ROUND(v_tax, 2);
END fn_calculate_tax;
/
SHOW ERRORS;
