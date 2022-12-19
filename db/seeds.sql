USE employeetracker_db;

INSERT INTO DEPARTMENT(NAAME)VALUES
('IT'),
('Sales'),
('Marketing'),
('HR'),
('Manufactoring');

INSERT INTO ROLES (TITLE,SALARY,department_id) VALUES
('Manager',120000,1),
('Manager',120000,2),
('Manager',120000,3),
('Manager',120000,4),
('Manager',120000,5),
('Lead',90000,1),
('Lead',90000,2),
('Lead',90000,3),
('Lead',90000,4),
('Lead',90000,5);

INSERT INTO EMPLOYEE(first_name,last_name,role_id) VALUES
('Joe','Smith',1),
('Jess','Green',2),
('Tyler','Powers',3),
('Steve','Brown',4),
('Larissa','Blue',5);

INSERT INTO EMPLOYEE(first_name,last_name,role_id,manager_id) VALUES
('Nick','Yellow',6,1),
('Julie','Pink',7,2),
('Margo','Trask',8,3),
('Rich','Blacl',9,4),
('Ed','Glass',10,5);


