use learn

DROP TABLE IF EXISTS students;
CREATE TABLE students (
		name varchar (128) NOT NULL,
		lastname varchar(128) NOT NULL,
		avg_mark NUMERIC (2,1) CHECK (avg_mark between 0 and 5),
		gender varchar (128) CHECK (gender in ('M', 'F'))
       );
       select * from students
       
       
 insert into
    students (name, lastname, avg_mark, gender)
values
    ('Олег', 'Перов', 4.3, 'M'),
    ('Семен', 'Степанов', 3.1, 'M'),
    ('Ольга', 'Семенова', 4.7, 'F'),
    ('Игорь', 'Романов', 3.1, 'M'),
    ('Ирина', 'Иванова', 2.2, 'F');
    
 ALTER TABLE students
 ADD COLUMN id INTEGER PRIMARY KEY AUTO_INCREMENT;
 
 ALTER TABLE students
 MODIFY gender VARCHAR (1);
 SELECT * FROM students;
 
 ALTER TABLE students
 CHANGE name firstname VARCHAR (128);
 SELECT * FROM students;
 
  SELECT * FROM students where avg_mark > 4;
  SELECT * FROM students where avg_mark not between 3 and 4;
  SELECT * FROM students where avg_mark in (2.2, 3.1, 4.7);
  
  CREATE VIEW v_student_m AS SELECT * FROM students WHERE gender LIKE 'M';
  SELECT * FROM v_student_m;
  
  CREATE VIEW v_student_f AS SELECT * FROM students WHERE gender LIKE 'F';
  SELECT * FROM v_student_f;
  
  UPDATE students
  SET lastname = 'Сидоров'
  WHERE firstname = 'Олег' AND lastname = 'Петров';
  select * from students;
  
  
  ALTER TABLE students
MODIFY avg_mark decimal(3,1);

ALTER TABLE students   
DROP CONSTRAINT students_chk_1; 

UPDATE students
SET avg_mark = avg_mark*10;

select * from students;

UPDATE students
SET avg_mark = avg_mark + 10
WHERE avg_mark <= 31;
select * from students;

  
  
   
   
 
 
    
    
    
    
    