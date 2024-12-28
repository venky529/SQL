CREATE TABLE employee (
	employee_id INT,
	name VARCHAR (50),
	manager_id INT
);

INSERT INTO employee 
VALUES
	(1, 'Liam Smith', NULL),
	(2, 'Oliver Brown', 1),
	(3, 'Elijah Jones', 1),
	(4, 'William Miller', 1),
	(5, 'James Davis', 2),
	(6, 'Olivia Hernandez', 2),
	(7, 'Emma Lopez', 2),
	(8, 'Sophia Andersen', 2),
	(9, 'Mia Lee', 3),
	(10, 'Ava Robinson', 3);

	select * from employee



select 
emp.employee_id,
emp.name as employee,
mng.name as manager,
mng2.name as manager_mng
from employee emp
left join employee mng
on emp.manager_id = mng.employee_id
left join employee mng2
on mng.manager_id = mng2.employee_id

