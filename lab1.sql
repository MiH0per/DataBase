/* first */
CREATE DATABASE Lab1; 

\c Lab1
/* second */
CREATE TABLE users ( 
    id SERIAL PRIMARY KEY,
    firstname VARCHAR(50),
    lastname VARCHAR(50)
);   

/* third */
ALTER TABLE users
ADD COLUMN isadmin INTEGER;

/* fourth */
ALTER TABLE users
ALTER COLUMN isadmin TYPE BOOLEAN;

/* fifth */
ALTER TABLE users
ALTER COLUMN isadmin SET DEFAULT FALSE;

/* sixth */
ALTER TABLE users ADD PRIMARY KEY (id);

/*seventh */
CREATE TABLE tasks (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    user_id INTEGER
);

/* eighths */ 
 DROP TABLE tasks;

/* ninth */
 DROP DATABASE Lab1;