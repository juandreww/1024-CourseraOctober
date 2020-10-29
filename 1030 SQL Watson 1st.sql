DROP TABLE INSTRUCTOR;

CREATE TABLE INSTRUCTOR (
	ins_id INTEGER PRIMARY KEY NOT NULL,
	lastname VARCHAR(60),
	firstname VARCHAR(60),
	city VARCHAR(60),
	country CHAR(2)
);

INSERT INTO INSTRUCTOR (ins_id, lastname, firstname, city, country)
VALUES (1, 'Ahuja', 'Rav', 'Toronto', 'CA');

INSERT INTO INSTRUCTOR (ins_id, lastname, firstname, city, country)
VALUES 
	(2, 'Chong', 'Raul', 'Toronto', 'CA'),
	(3, 'Vasudevan', 'Hima', 'Chicago', 'US');
	
SELECT * FROM INSTRUCTOR;

UPDATE INSTRUCTOR
	SET city = 'MARKHAM'
	WHERE ins_id = 1;
	
DELETE FROM INSTRUCTOR
	WHERE ins_id in (2);
	
SELECT * FROM INSTRUCTOR

