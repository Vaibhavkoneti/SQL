CREATE table province(id varchar(2) NOT NULL ,province_name varchar(150),PRIMARY KEY (id));
INSERT INTO province 
SELECT * FROM provinces;

CREATE TABLE patient_inf(id integer NOT NULL,first_name varchar(50),last_name varchar(50),gender varchar(2),birthdate date,province_id varchar(2),city varchar(50),
allergies varchar(50),height float,weight float,PRIMARY KEY (id),FOREIGN KEY (province_id) REFERENCES province(id));

INSERT INTO patient_inf 
SELECT * FROM patients_info;

DROP table patients_info;

CREATE TABLE doctor_info(id integer not null,first_name	varchar(50),last_name varchar(50),department varchar(150),primary key (id));
INSERT INTO doctor_info 
SELECT * FROM doctors_info;

CREATE table inspect(id integer not null,doctor_id integer,patient_id integer,inspection_date datetime,discharge_date datetime,results text,primary key (id),
FOREIGN KEY (doctor_id) REFERENCES doctor_info(id),FOREIGN KEY (patient_id) REFERENCES patient_inf(id));
INSERT into inspect
select * from inspections;

DROP table doctors_info;

DROP table inspections;

DROP table provinces;
