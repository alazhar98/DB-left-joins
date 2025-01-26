use company;

/*List All Departments and Their Employees*/
select d.department_name , e.name As employee_name 
from departments d 
left join employees e 
on d.department_id = e.department_id;

/*Find Projects Without Assigned Departments*/
select p.project_name 
from projects p
left join departments d 
on p.department_id = d.department_id
where d.department_id=null ;

/*List Departments Without Employees*/

select d.department_name
from departments d 
left join employees e 
on d.department_id = e.department_id
where e.employee_id=null;
