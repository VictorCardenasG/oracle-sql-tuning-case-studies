SELECT E.EMPLOYEE_ID, E.FIRST_NAME
FROM   EMPLOYEES E
WHERE  E.PHONE_NUMBER = '011.44.1344.345268'
AND    E.EMPLOYEE_ID BETWEEN 100 AND 175;
