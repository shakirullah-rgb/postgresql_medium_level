

create table departments(
department_id serial primary key,
department_name varchar(50) not null,
loctaion varchar(5)
);

create table employess(
emoloyes_id serial primary key,
first_name varchar(50),
last_name varchar(50),
department_id INT REFERENCES departments(department_id),
salary numeric(10,2),
positioon varchar(50),
hire_date date,
phone varchar(30)
);

create table projects(
project_id serial primary key,
project_name varchar(50),
department_id INT references departments(department_id ),
budget numeric (12,2),
start_date date,
end_date date
);

insert into departments(department_name ,loctaion)
values
('IT', 'Karachi'),
('HR', 'Lahore'),
('Finance', 'Islamabad'),
('Marketing', 'Karachi'),
('Operation', 'Lahore');

alter table departments
alter column loctaion type varchar(50);
select *from departments

insert into employess(first_name, last_name, department_id, salary, positioon, hire_date, phone)
values
('Raj','Sharma',1,85000,'Developer','2022-01-15','0300-1234567'),
('John','Doe',1,90000,'System Analyst','2021-05-20','0301-2345678'),
('Ahsan','Khan',1,78000,'Developer','2023-02-10','0302-3456789'),
('Bilal','Ahmed',1,72000,'Database Administrator','2022-08-18','0303-4567890'),
('Hamza','Raza',1,95000,'Senior Developer','2020-11-05','0304-5678901'),
('Usman','Ali',1,68000,'IT Support','2023-06-12','0305-6789012'),
('Zain','Malik',1,88000,'Software Engineer','2021-09-25','0306-7890123'),
('Fahad','Shah',1,76000,'Network Engineer','2022-04-14','0307-8901234'),
('Danish','Iqbal',1,92000,'System Engineer','2020-03-30','0308-9012345'),
('Saad','Hassan',1,70000,'Web Developer','2023-01-08','0309-0123456'),

('Sara','Khan',2,60000,'HR Executive','2022-02-15','0310-1234567'),
('Sana','Shah',2,65000,'HR Officer','2021-07-19','0311-2345678'),
('Ayesha','Ali',2,72000,'HR Manager','2020-10-11','0312-3456789'),
('Hina','Raza',2,58000,'Recruiter','2023-03-21','0313-4567890'),
('Maham','Khan',2,62000,'HR Assistant','2022-12-01','0314-5678901'),
('Nida','Ahmed',2,69000,'Recruiter','2021-11-17','0315-6789012'),
('Komal','Shah',2,61000,'HR Executive','2023-05-09','0316-7890123'),
('Laiba','Malik',2,75000,'HR Specialist','2020-08-24','0317-8901234'),
('Iqra','Hassan',2,59000,'HR Assistant','2023-09-15','0318-9012345'),
('Mehak','Ali',2,68000,'Training Officer','2022-06-30','0319-0123456'),

('Ali','Raza',3,95000,'Accountant','2020-01-10','0320-1234567'),
('Ahmed','Khan',3,88000,'Financial Analyst','2021-04-22','0321-2345678'),
('Usman','Raza',3,92000,'Senior Accountant','2020-06-15','0322-3456789'),
('Bilal','Shah',3,75000,'Accountant','2022-03-12','0323-4567890'),
('Hassan','Ali',3,82000,'Financial Analyst','2021-08-05','0324-5678901'),
('Faisal','Malik',3,70000,'Finance Officer','2023-01-20','0325-6789012'),
('Taha','Ahmed',3,98000,'Finance Manager','2019-09-18','0326-7890123'),
('Salman','Khan',3,86000,'Auditor','2022-07-07','0327-8901234'),
('Arslan','Raza',3,74000,'Accountant','2023-04-25','0328-9012345'),
('Imran','Shah',3,91000,'Senior Auditor','2020-12-12','0329-0123456'),

('Meera','Patel',4,72000,'Marketing Lead','2021-02-14','0330-1234567'),
('Sara','Malik',4,68000,'Marketing Executive','2022-05-10','0331-2345678'),
('Areeba','Khan',4,75000,'Marketing Analyst','2021-09-01','0332-3456789'),
('Fatima','Ali',4,65000,'Content Manager','2023-02-18','0333-4567890'),
('Mariam','Raza',4,70000,'SEO Specialist','2022-10-05','0334-5678901'),
('Anum','Shah',4,62000,'Marketing Assistant','2023-07-11','0335-6789012'),
('Rabia','Khan',4,80000,'Brand Manager','2020-05-22','0336-7890123'),
('Eman','Ahmed',4,73000,'Social Media Manager','2021-12-19','0337-8901234'),
('Alina','Malik',4,67000,'Content Writer','2023-03-03','0338-9012345'),
('Saba','Hassan',4,76000,'Marketing Analyst','2022-01-27','0339-0123456'),

('Omar','Khan',5,78000,'Operations Manager','2020-02-11','0340-1234567'),
('Waqas','Ali',5,68000,'Operations Officer','2022-04-17','0341-2345678'),
('Kamran','Raza',5,72000,'Logistics Officer','2021-06-21','0342-3456789'),
('Adnan','Shah',5,65000,'Operations Assistant','2023-01-15','0343-4567890'),
('Noman','Khan',5,82000,'Supply Chain Analyst','2020-09-09','0344-5678901'),
('Shahzaib','Ahmed',5,74000,'Logistics Coordinator','2022-11-20','0345-6789012'),
('Rizwan','Malik',5,69000,'Operations Officer','2023-05-13','0346-7890123'),
('Asad','Hassan',5,88000,'Operations Manager','2019-07-25','0347-8901234'),
('Yasir','Ali',5,71000,'Warehouse Manager','2021-03-18','0348-9012345'),
('Junaid','Raza',5,66000,'Operations Assistant','2023-08-02','0349-0123456');

select * from employess;
select count (*)  as total_empplyess
from employess;

insert into projects(project_name,department_id,budget, start_date,end_date)
values
('Website Revamp',1,500000,'2024-01-01','2024-06-30'),
('Recruitment Drive',2,200000,'2024-02-01','2024-03-31'),
('Audit 2024',3,300000,'2024-03-01','2024-05-31'),
('Ad Campaign',4,400000,'2024-04-01','2024-07-31'),
('Logistics Upgrade',5,250000,'2024-05-01','2024-08-31');

select * from projects;

select * from employess
where department_id = 1

select  first_name, last_name, salary, positioon from employess
order by salary desc
limit 5;


select distinct last_name
from employess
where last_name like 'S%';


select 
concat(first_name, '', last_name) as employee_name
from employess;


select 
string_agg(department_name, ',') as all_departments
from departments


select first_name,
substring(first_name  from 1 for 3) as first_3_letter,
position('a' in first_name) as positin_of_a
from employess;

select 
first_name,
last_name,
positioon,
replace(positioon, 'Developer',  'Software Engineer') as new_position


select 
first_name,
last_name,
initcap(trim (first_name )) as clean_first_name,
initcap(trim(last_name ))as clean_last_name 
from employess;


select 
department_id,
avg(salary) as average_salary
from employess
group by department_id
having avg(salary) > 70000;


select 
department_id,
count(*) as total_employee,
sum(salary) as total_salary,
avg(salary) as average_salary
from employess
group by department_id
order by department_id;


select emoloyes_id, first_name, last_name, salary
from employess
where department_id = 3;

update employess
set salary = salary*1.10
where department_id = 3;


alter table employess
add column email varchar(50);

select * from employess

select 
table_name,
constraint_name 
from information_schema.table_constraints
where constraint_type = 'foreign key'
AND table_name IN ('employess', 'projects');

alter table employess
add constraint fk_employee_department
foreign key (department_id)
REFERENCES departments(department_id)
on delete cascade;

alter table projects
add constraint fk_project_department
foreign key (department_id)
REFERENCES departments(department_id)
on delete cascade;


insert into departments(department_name, loctaion)
values('testing','karachi');

select * from departments
where department_name = 'testing';



insert into employess
(first_name, last_name, department_id, salary, positioon, hire_date, phone)
VALUES
('Test', 'Employee', 6, 50000, 'Tester', '2024-01-01', '03001234567');

select * from 
employess
where department_id = 6;


delete from departments
where department_id = 6;

alter table employess
drop constraint if exists employess_department_id_fkey;


alter table employess
add constraint employess_department_id_fkey
foreign key (department_id)
REFERENCES  departments(department_id)


SELECT
    tc.table_name,
    tc.constraint_name
FROM information_schema.table_constraints AS tc
WHERE tc.constraint_type = 'FOREIGN KEY'
AND tc.table_name IN ('employees', 'projects');



