SET LINESIZE 180;
SET PAGESIZE 100;

COLUMN full_name FORMAT A22;
COLUMN department FORMAT A24;
COLUMN payroll_status FORMAT A38;

SELECT
    e.employee_id,
    e.first_name || ' ' || e.last_name AS full_name,
    e.salary AS monthly_salary,
    fn_annual_salary(e.salary) AS annual_salary,
    fn_years_of_service(e.hire_date) AS years_of_service,
    fn_calculate_tax(e.salary) AS calculated_tax,
    fn_dept_name(e.department_id) AS department,
    fn_validate_payroll(e.employee_id) AS payroll_status
FROM employees e
ORDER BY e.employee_id;
