SELECT /*+ LEADING(L D) */ E.FIRST_NAME, E.LAST_NAME --case_study_tuned_13
FROM   EMPLOYEES E, DEPARTMENTS D
WHERE  D.LOCATION_ID IN ( SELECT L.LOCATION_ID FROM LOCATIONS L WHERE L.LOCATION_ID = 1400 )
AND    D.DEPARTMENT_ID = E.DEPARTMENT_ID;
