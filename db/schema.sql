USE employeetracker_db;

CREATE TABLE department(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE roles (
    id INT PRIMARY KEY AUTO_INCREMENT,

    title VARCHAR(30),

    salary DECIMAL(10,2),

    department_id INT REFERENCES department(id)
);


CREATE TABLE employee (
     id INT PRIMARY KEY AUTO_INCREMENT

     first_name VARCHAR(30)

     last_name VARCHAR(30)

     role_id INT REFERENCES roles(id)

     manager_id INT REFERENCES employee(id) ON DELETE SET NULL
);


