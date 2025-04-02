SET LINES 300
SET PAGES 1000
SELECT sql_id, child_number, sql_text
FROM v$sql
WHERE sql_text LIKE '%case_study_3%' AND sql_text NOT LIKE '%v$sql%';

SELECT * FROM DBMS_XPLAN.DISPLAY_CURSOR('&sql_id', &child_number, 'ALLSTATS LAST');
