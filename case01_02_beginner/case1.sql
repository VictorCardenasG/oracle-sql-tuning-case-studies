SELECT /*+ case_study_1 */ e.employee_id, e.first_name
FROM employees e
WHERE e.phone_number LIKE '011.44.1344.345268'
AND e.hire_date > TO_DATE('30-jan-2004','dd-mon-yyyy')
AND e.commission_pct IN (0.25, 0.15)
AND e.employee_id BETWEEN 100 AND 175;
/
