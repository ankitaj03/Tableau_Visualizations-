SELECT 
    emp_no, from_date, to_date
FROM
    t_dept_emp;


SELECT DISTINCT
    emp_no, from__date, to_date
FROM
    t_dept_emp;

# PROBLEM 1: SOLUTION IN SQL
SELECT 
  YEAR(D.from_date) AS calendar_year,
  E.gender,
  COUNT(E.emp_no) AS num_of_employees
FROM t_employees E 
JOIN 
t_dept_emp D ON D.emp_no = E.emp_no
GROUP BY calendar_year, E.gender
HAVING calendar_year >= 1990;

