CREATE TABLE Universities (
  university_id int NOT NULL,
  university_name varchar(255),
  phone varchar(255),
  email varchar(255),
  city varchar(255),
  PRIMARY KEY (university_id)
);

CREATE TABLE Faculty (
  faculty_id int,
  faculty_name varchar (255) not null,
  University_id int (255) not null,
  FOREIGN KEY (University_id)
    REFERENCES Universities (university_id),

  FOREIGN KEY (faculty_id)
     REFERENCES Lecturer (Faculty_id),
     REFERENCES Students (Faculty_id)
);


CREATE TABLE Subject (
  subject_id int ,
  Subject_name varchar(255) not null,
  PRIMARY KEY (subject_id)
);

CREATE TABLE Lecturer (
  lecturer_id int,
  Faculty_id int(255) not null,
  First_name varchar(255) not null,
  Last_name varchar(255) not null,
  Id_number int (11) unique not null,
  Age int,
  Email varchar(255) unique not null,
  Phone varchar(255),
  Lecturer_address varchar(255) not null,
  Second_address varchar(255),
  Appartment_number int,
  Birth_date datetime not null,
  Sex varchar(255) not null,
  University_id int not null,
  Lecturer_range varchar(255) not null,
  Bank_number varchar(255) not null,
  PRIMARY KEY (lecturer_id)
);

CREATE TABLE Students (
  student_id int,
  Faculty_id int,
  First_name varchar(255) not null,
  Last_name varchar(255) not null,
  Id_number int unique not null,
  Age int,
  Email varchar(255) unique not null,
  Phone varchar(255),
  Student_Address varchar(255) not null,
  Second_address varchar(255),
  Appartment_number int,
  Birth_date datetime not null,
  Sex varchar(255) not null,
  PRIMARY KEY (student_id)
);


create Table Students_subject (
  student_subject_id int,
  Student_id int not null,
  Subject_id int not null,
  leqturer_id int not null,
  leqture_time_id int not null,
  Enroll_date datetime,
   FOREIGN KEY (student_subject_id)
    REFERENCES Students (student_id )
);

create Table Managers (
  manager_id int ,
  Faculty_id int (255) not null,
  First_name varchar (255) not null,
  Last_name varchar (255) not null,
  Id_number int unique not null,
  Age int,
  Email varchar (255) unique not null,
  Phone varchar (255),
  manager_Address varchar (255) not null,
  Second_address varchar (255),
  Appartment_number int,
  Birth_date datetime not null,
  Sex varchar (255) not null,
   FOREIGN KEY (manager_id)
    REFERENCES Faculty (Faculty_id)
);


create Table Leqture_Time (
  lecture_time_id int not null, 
  Leqture_Time varchar (255),
   PRIMARY KEY (lecture_time_id)
);


INSERT INTO Universities 
    (University_id,University_name,Phone,Email,City)
    VALUES (1,"TSU","599878787","TSU@gmail.com","Tbilisi");

INSERT INTO Faculty
  (faculty_id,faculty_name,University_id)
   VALUES (1, "IT",1);

INSERT INTO Faculty
  (faculty_id,faculty_name,University_id)
   VALUES (2, "DevOps",1);

INSERT INTO Subject
   (subject_id,Subject_name)
   VALUES (1,"SQL");

INSERT INTO Subject
   (subject_id,Subject_name)
   VALUES (2,"Java");

INSERT INTO Subject
   (subject_id,Subject_name)
   VALUES (3,"Python");

INSERT INTO Subject
   (subject_id,Subject_name)
   VALUES (4,"C++");

INSERT INTO Subject
   (subject_id,Subject_name)
   VALUES (5,"HTML");

INSERT INTO Lecturer
   (lecturer_id,Faculty_id,First_name,Last_name,Id_number,Age,Email,Phone,Lecturer_address,Second_address,Appartment_number,Birth_date,Sex,University_id,Lecturer_range,Bank_number)
   VALUES (1,1,"Niko","Jgenti","601456","35","nj@gmail.com","579854785","Tbilisi,chavchavadze ave.","don't", "68","1987-10-23","male",1,"Ph.D","BG01GE0000000154789");

INSERT INTO Lecturer
   (lecturer_id,Faculty_id,First_name,Last_name,Id_number,Age,Email,Phone,Lecturer_address,Second_address,Appartment_number,Birth_date,Sex,University_id,Lecturer_range,Bank_number)
   VALUES (2,1,"Nino","Chichua","6456","34","nch@gmail.com","579854778","Tbilisi,chavchavadze ave.","don't", "45","1987-09-05","female",1,"visiting lecturer","BG01GE0004500154789");

INSERT INTO Lecturer
   (lecturer_id,Faculty_id,First_name,Last_name,Id_number,Age,Email,Phone,Lecturer_address,Second_address,Appartment_number,Birth_date,Sex,University_id,Lecturer_range,Bank_number)
   VALUES (3,1,"Ako","Jgenti","65776","25","aj@gmail.com","571554785","Tbilisi,pekini.","don't", "5","1998-10-23","male",1,"visiting lecturer","BG01GE0000000112389");

INSERT INTO Lecturer
   (lecturer_id,Faculty_id,First_name,Last_name,Id_number,Age,Email,Phone,Lecturer_address,Second_address,Appartment_number,Birth_date,Sex,University_id,Lecturer_range,Bank_number)
   VALUES (4,1,"Mari","Chiqovani","65456","22","mh@gmail.com","579854565","Tbilisi,gagarini","don't", "12","2000-10-05","female",1,"visiting lecturer","BG01GE0000078963789");


INSERT INTO Students
   (student_id,Faculty_id,First_name,Last_name,Id_number,Age,Email,Phone,Student_Address,Second_address,Appartment_number,Birth_date,Sex)
   VALUES (1,1,"ana","Bliadze","65580","19","ab@yahoo.com","578967414","Tbilisi, oniashvili","don't","1","2003-05-12","female");

INSERT INTO Students
   (student_id,Faculty_id,First_name,Last_name,Id_number,Age,Email,Phone,Student_Address,Second_address,Appartment_number,Birth_date,Sex)
   VALUES (2,1,"Irakli","Meladze","01780","19","im@yahoo.com","578967890","Tbilisi,Kazbegi","don't","66","2003-01-10","male");

INSERT INTO Students
   (student_id,Faculty_id,First_name,Last_name,Id_number,Age,Email,Phone,Student_Address,Second_address,Appartment_number,Birth_date,Sex)
   VALUES (3,1,"Giorgi","Modebadze","01180","19","Gm@yahoo.com","570123214","Tbilisi,Gamrekeli","don't","123","2003-05-05","male");

INSERT INTO Students
   (student_id,Faculty_id,First_name,Last_name,Id_number,Age,Email,Phone,Student_Address,Second_address,Appartment_number,Birth_date,Sex)
   VALUES (4,1,"Nino","Nozadze","01280","19","nn@yahoo.com","570753214","Tbilisi,dolidzd","don't","14","2003-07-15","female");

INSERT INTO Students
   (student_id,Faculty_id,First_name,Last_name,Id_number,Age,Email,Phone,Student_Address,Second_address,Appartment_number,Birth_date,Sex)
   VALUES (5,1,"Nika","Buzaladze","60000","20","nb1@yahoo.com","57145714","Tbilisi","don't","01","2002-01-15","male");

INSERT INTO Students
   (student_id,Faculty_id,First_name,Last_name,Id_number,Age,Email,Phone,Student_Address,Second_address,Appartment_number,Birth_date,Sex)
   VALUES (6,1,"ino","Jones","100050","21","ij@yahoo.com","57563314","Tbilisi","USA","55","2001-01-15","female");

INSERT INTO Students
   (student_id,Faculty_id,First_name,Last_name,Id_number,Age,Email,Phone,Student_Address,Second_address,Appartment_number,Birth_date,Sex)
   VALUES (7,1,"John","Ford","014560","19","JF@yahoo.com","57891447","Tbilisi","USA","55","2003-09-15","male");

INSERT INTO Students
   (student_id,Faculty_id,First_name,Last_name,Id_number,Age,Email,Phone,Student_Address,Second_address,Appartment_number,Birth_date,Sex)
   VALUES (8,1,"James","Jones","0122239","19","JJ@yahoo.com","574777784","Tbilisi,chavchavadze","USA","77","2003-11-20","male");

INSERT INTO Students
   (student_id,Faculty_id,First_name,Last_name,Id_number,Age,Email,Phone,Student_Address,Second_address,Appartment_number,Birth_date,Sex)
   VALUES (9,1,"Olivia","Cruse","55447880","20","o.Cruse@yahoo.com","574479214","Tbilisi,iashvili","USA","14","2002-12-23","female");

INSERT INTO Students
   (student_id,Faculty_id,First_name,Last_name,Id_number,Age,Email,Phone,Student_Address,Second_address,Appartment_number,Birth_date,Sex)
   VALUES (10,1,"Mariam","Chkhenkeli","010150","19","mch1@yahoo.com","5781256314","Tbilisi,kandelaki","don't","08","2003-02-28","female");


INSERT INTO Students_subject
   (student_subject_id,Student_id,Subject_id,leqturer_id,leqture_time_id,Enroll_date)
   VALUES (1,1,3,1,1,"2022-07-01");

INSERT INTO Students_subject
   (student_subject_id,Student_id,Subject_id,leqturer_id,leqture_time_id,Enroll_date)
   VALUES (2,2,1,4,1,"2022-07-01");

INSERT INTO Students_subject
   (student_subject_id,Student_id,Subject_id,leqturer_id,leqture_time_id,Enroll_date)
   VALUES (3,3,4,3,1,"2022-07-01");

INSERT INTO Students_subject
   (student_subject_id,Student_id,Subject_id,leqturer_id,leqture_time_id,Enroll_date)
   VALUES (4,4,4,2,1,"2022-07-01");

INSERT INTO Students_subject
   (student_subject_id,Student_id,Subject_id,leqturer_id,leqture_time_id,Enroll_date)
   VALUES (5,5,1,4,1,"2022-07-01");

INSERT INTO Students_subject
   (student_subject_id,Student_id,Subject_id,leqturer_id,leqture_time_id,Enroll_date)
   VALUES (6,6,2,1,1,"2022-07-01");

INSERT INTO Students_subject
   (student_subject_id,Student_id,Subject_id,leqturer_id,leqture_time_id,Enroll_date)
   VALUES (7,7,3,2,1,"2022-07-01");

INSERT INTO Students_subject
   (student_subject_id,Student_id,Subject_id,leqturer_id,leqture_time_id,Enroll_date)
   VALUES (8,8,1,3,1,"2022-07-01");

INSERT INTO Students_subject
   (student_subject_id,Student_id,Subject_id,leqturer_id,leqture_time_id,Enroll_date)
   VALUES (9,9,5,1,1,"2022-07-01");

INSERT INTO Students_subject
   (student_subject_id,Student_id,Subject_id,leqturer_id,leqture_time_id,Enroll_date)
   VALUES (10,10,4,2,1,"2022-07-01");

INSERT INTO Managers
  (manager_id,Faculty_id,First_name,Last_name,Id_number,Age,Email,Phone,manager_Address,Second_address,Appartment_number,Birth_date,Sex)
  VALUES (1,1,"Petre","Dvrfasi","012038","39","Pd@Yahoo.com","526989898","Tbili","batumi","32","1982-03-03","male");

INSERT INTO Managers
  (manager_id,Faculty_id,First_name,Last_name,Id_number,Age,Email,Phone,manager_Address,Second_address,Appartment_number,Birth_date,Sex)
  VALUES (2,1,"Eva","Pirveli","010101","42","EP1111@Yahoo.com","599111112","Tbili","Tsagveri","11","1979-03-03","female");