CREATE DATABASE lab4;

CREATE TABLE Warehouse (
    code serial,
    location VARCHAR(255),
    capacity int
);

CREATE TABLE Boxes (
    code CHAR(4),
    contents VARCHAR(255),
    value real,
    warehouse int
);

INSERT INTO Warehouse (location, capacity)
VALUES
       ('Chicago', 3),
       ('Chicago', 4),
       ('New York', 7),
       ('Los Angeles', 2),
       ('San Francisco', 8);

INSERT INTO Boxes (code, contents, value, warehouse)
VALUES
    ('0MN7','Rocks', 180, 3),
    ('4H8P', 'Rocks', 250, 1),
    ('4RT3','Scissors', 190, 4),
    ('7G3H', 'Rocks', 200, 1),
    ('8JN6', 'Papers', 75,1),
    ('8Y6U', 'Papers', 50, 3),
    ('9J6F', 'Papers', 175, 2),
    ('LL08', 'Rocks', 140, 4),
    ('P0H6', 'Scissors', 125, 1),
    ('P2T6', 'Scissors', 150, 2),
    ('TU55', 'Papers', 90, 5);

SELECT * FROM Warehouse;

SELECT * FROM Boxes WHERE value>150;

SELECT DISTINCT * FROM Boxes;

SELECT code, capacity FROM Warehouse;

SELECT code, capacity FROM Warehouse
WHERE capacity > 2;

INSERT INTO Warehouse (location, capacity) VALUES ('New York', 3);

INSERT INTO Boxes VALUES ('H5RT', 'Papers', 200, 2);

UPDATE Boxes
    SET value = value * 0.85
    WHERE code = (
        SELECT code FROM Boxes
                    ORDER BY value DESC
                    LIMIT 1 OFFSET 2
        );


DELETE FROM Boxes WHERE value < 150;

DELETE FROM Boxes
RETURNING *;

