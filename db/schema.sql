
DROP TABLE IF EXISTS student;
DROP TABLE IF EXISTS skills;

CREATE TABLE student (
id SERIAL PRIMARY KEY,
name VARCHAR (255)
); 

CREATE TABLE skills (
id SERIAL PRIMARY KEY,
skill VARCHAR(255),
student_id int REFERENCES student (id),
proficient BOOLEAN DEFAULT TRUE,
created_at TIMESTAMP NOT NULL DEFAULT NOW()
); 
 

