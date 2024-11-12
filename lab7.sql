CREATE INDEX countries_name_index ON countries (name); 

CREATE INDEX employees_multi_index ON employees (name, surname);

CREATE UNIQUE INDEX employees_salary_unique_index ON emloyees(salary);

CREATE INDEX employees_index_name ON employees sybstring((name FROM 1 TO 4)); /* 1 - starting with first char, 4 is length*/

CREATE INDEX employees_query_ndex ON employees(department_id);
CREATE INDEX department_dep_id_index ON departments(departament_id);
CREATE INDEX employees_salary_index ON employees(salary);
CREATE INDEX department_bdget_index ON departments(budget);