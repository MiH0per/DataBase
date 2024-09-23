/* 1 */
CREATE DATABASE lab2;

/* 2 */
CREATE TABLE countries (
    country_id SERIAL PRIMARY KEY,
    country_name VARCHAR(255),
    region_id INT,
    population INT
);

/* 3 */
INSERT INTO countries (country_name, region_id, population) 
VALUES ('Kazakhstan', 1, 19);

/* 4 */
INSERT INTO countries (country_id, country_name) 
VALUES (4, 'France');

/* 5 */
INSERT INTO countries (country_name, region_id, population) 
VALUES ('Russia', NULL, 0);

/* 6 */
INSERT INTO countries (country_name, region_id, population) 
VALUES 
    ('Egypt', 23, 122), 
    ('Monaco', 123, 2), 
    ('Germany', 78, 98);

/* 7 */
ALTER TABLE countries
ALTER COLUMN country_name SET DEFAULT 'Kazakhstan';

/* 8 */
INSERT INTO countries (country_name) 
VALUES (DEFAULT);

/* 9 */
INSERT INTO countries DEFAULT VALUES;

/* 10 */
CREATE TABLE countries_new (LIKE countries INCLUDING ALL);

/* 11 */
INSERT INTO countries_new 
SELECT * FROM countries;

/* 12 */
UPDATE countries
SET region_id = 1
WHERE region_id IS NULL;

/* 13 */
UPDATE countries
SET population = population * 1.10
RETURNING country_name, population AS "New Population";

/*14 */
DELETE FROM countries
WHERE population < 100
RETURNING *;

/* 15 */ 

DELETE FROM countries_new AS cn
USING countries AS c
WHERE cn.country_id = c.country_id	
RETURNING *;	

DELETE FROM countries
RETURNING *;

SELECT * FROM countries;
