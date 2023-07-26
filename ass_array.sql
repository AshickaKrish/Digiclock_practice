

--Ass Array

declare
type emp_sal IS TABLE OF NUMBER INDEX BY varchar2(20);
salaries emp_sal;
emp varchar2(20);

BEGIN
--initiate
salaries('Cam'):=100;
salaries('Mich'):=200;
salaries('Hal'):=300;
salaries('Al'):=300;

--DML
--update 
salaries('Hal'):=400;

--delete
salaries.delete('Hal');

for emp in 1..salaries.last
loop
--   DBMS_OUTPUT.PUT_LINE('Employee: ' || emp || ', Salary: ' || to_char(salaries(emp)));
dbms_output.put_line(salaries(emp));
end loop;

end;

