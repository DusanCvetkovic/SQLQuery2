SELECT * FROM student;

DROP TABLE student

CREATE TABLE student(
	student_id INT PRIMARY KEY,
	name VARCHAR(40),
	major VARCHAR(40) DEFAULT 'undecided'
);

ALTER TABLE student ADD gpa DECIMAL (3, 2);

ALTER TABLE student DROP COLUMN gpa;

INSERT INTO student VALUES(1, 'Jack', 'Biology');
INSERT INTO student VALUES(2, 'Kate', 'Sociology');
INSERT INTO student(student_id, name) VALUES(3, 'Claire');
INSERT INTO student VALUES(4, 'Jack', 'Biology');
INSERT INTO student VALUES(5, 'Mike', 'Computer Science');

UPDATE student
SET major = 'Bio'
WHERE major = 'Biology';

UPDATE student
SET major = 'Computer Science'
WHERE student_id = '4';

UPDATE student
SET major = 'Biochemistry' 
WHERE major = 'Bio' OR major = 'undecided';

SELECT student.name, student.major
FROM student
ORDER BY student_id DESC;

SELECT TOP 3*
FROM student
ORDER BY major, student_id;