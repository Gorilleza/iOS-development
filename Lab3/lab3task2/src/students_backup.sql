PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE students
(
Student_id integer primary key autoincrement not null,
FirstName text not null,
LastName text not null,
Group_id integer not null
, height integer not null default 0, weight integer not null default 0, age integer not null default 0);
INSERT INTO students VALUES(1,'Eziz','Hojamuhammedow',12,190,81,20);
INSERT INTO students VALUES(2,'Faiz','Yusupov',12,181,70,20);
INSERT INTO students VALUES(3,'Agajan','Garlyew',12,167,65,19);
INSERT INTO students VALUES(4,'Emin','Mirzaev',12,165,73,22);
INSERT INTO students VALUES(5,'Perman','Ataev',12,180,78,25);
INSERT INTO students VALUES(6,'Didar','Shvarsman',10,186,71,22);
INSERT INTO students VALUES(7,'Zulya','gg',13,150,47,17);
CREATE TABLE groups
(
Group_id integer primary key not null,
Name text not null
);
INSERT INTO "groups" VALUES(10,'');
INSERT INTO "groups" VALUES(12,'Group 12');
CREATE TABLE marks(MarkId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,Student_id INTEGER NOT NULL,Subject_id INTEGER NOT NULL,Date TEXT NOT NULL,Mark INTEGER NOT NULL);
INSERT INTO marks VALUES(1,1,1,'2025-04-02',10);
INSERT INTO marks VALUES(2,2,4,'2025-04-02',3);
INSERT INTO marks VALUES(3,3,1,'2025-04-02',5);
INSERT INTO marks VALUES(4,3,4,'2025-04-02',5);
INSERT INTO marks VALUES(5,1,4,'2025-03-27',8);
INSERT INTO marks VALUES(6,5,3,'2025-03-27',8);
INSERT INTO marks VALUES(7,6,1,'2025-03-27',7);
INSERT INTO marks VALUES(8,4,5,'2025-04-02',2);
INSERT INTO marks VALUES(9,5,6,'2025-03-15',7);
INSERT INTO marks VALUES(10,2,3,'2025-03-15',6);
INSERT INTO marks VALUES(11,6,4,'2025-03-15',4);
CREATE TABLE IF NOT EXISTS "Subjects" (
	"Subject_id"	INTEGER NOT NULL,
	"Title"	TEXT NOT NULL,
	PRIMARY KEY("Subject_id" AUTOINCREMENT)
);
INSERT INTO Subjects VALUES(1,'Веб-программирование');
INSERT INTO Subjects VALUES(2,'Операционные системы');
INSERT INTO Subjects VALUES(3,'Философия');
INSERT INTO Subjects VALUES(4,'ТПМП');
INSERT INTO Subjects VALUES(5,'Основы права');
INSERT INTO Subjects VALUES(6,'Методы вычислений');
CREATE TABLE IF NOT EXISTS "Teachers" (
	"Teacher_id "	INTEGER NOT NULL,
	"FirstName "	TEXT NOT NULL,
	"LastName"	TEXT NOT NULL,
	PRIMARY KEY("Teacher_id " AUTOINCREMENT)
);
INSERT INTO Teachers VALUES(1,'Татьяна ','Иванова');
INSERT INTO Teachers VALUES(2,'Иван ','Петров');
INSERT INTO Teachers VALUES(3,'Сергей ','Ярошевич');
INSERT INTO Teachers VALUES(4,'Николай ','Семенов');
INSERT INTO Teachers VALUES(5,'Елена ','Левковец');
CREATE TABLE IF NOT EXISTS "subj_teach" (
	"ST_id "	INTEGER NOT NULL,
	"Subject_id "	INTEGER NOT NULL,
	"Teacher_id "	INTEGER NOT NULL,
	"Group_id"	INTEGER NOT NULL,
	PRIMARY KEY("ST_id " AUTOINCREMENT)
);
INSERT INTO subj_teach VALUES(1,1,1,13);
INSERT INTO subj_teach VALUES(2,1,1,14);
INSERT INTO subj_teach VALUES(3,2,3,15);
INSERT INTO subj_teach VALUES(4,2,3,16);
INSERT INTO subj_teach VALUES(5,3,4,16);
INSERT INTO subj_teach VALUES(6,4,2,13);
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('students',7);
INSERT INTO sqlite_sequence VALUES('marks',11);
INSERT INTO sqlite_sequence VALUES('Subjects',6);
INSERT INTO sqlite_sequence VALUES('Teachers',5);
INSERT INTO sqlite_sequence VALUES('subj_teach',6);
COMMIT;
