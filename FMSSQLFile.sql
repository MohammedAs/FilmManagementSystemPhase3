USE FMSDatabase;



CREATE TABLE LANGUAGE(LanguageId INT PRIMARY KEY AUTO_INCREMENT, LanguageName VARCHAR(25) NOT NULL);

INSERT INTO LANGUAGE (LanguageName)VALUES('Hindi');
INSERT INTO LANGUAGE (LanguageName)VALUES('English');
INSERT INTO LANGUAGE (LanguageName)VALUES('Telgu');
INSERT INTO LANGUAGE (LanguageName)VALUES('Marathi');
INSERT INTO LANGUAGE (LanguageName)VALUES('Malyallam');

SELECT *FROM LANGUAGE;


CREATE TABLE ActorTable(ActorId INT PRIMARY KEY AUTO_INCREMENT, CustFN VARCHAR(25) NOT NULL,CustLN VARCHAR(25) NOT NULL);

INSERT INTO actortable ( CustFN ,CustLN)VALUES	('Salman','Khan');
INSERT INTO actortable ( CustFN ,CustLN)VALUES	('Sharukh','Khan');
INSERT INTO actortable ( CustFN ,CustLN)VALUES	('Ranbir','Kapoor');
INSERT INTO actortable ( CustFN ,CustLN)VALUES	('Amitabh','Bacchan');
INSERT INTO actortable ( CustFN ,CustLN)VALUES	('Rajesh','Khanna');


SELECT*FROM ActorTable;


CREATE TABLE Category(CategoryId INT PRIMARY KEY AUTO_INCREMENT, CategoryName VARCHAR(25) NOT NULL);

INSERT INTO Category(CategoryName)VALUES ('Romantic');
INSERT INTO Category(CategoryName)VALUES ('Action');
INSERT INTO Category(CategoryName)VALUES ('Horror');
INSERT INTO Category(CategoryName)VALUES ('Comedy');
INSERT INTO Category(CategoryName)VALUES ('Adventures');

SELECT*FROM Category;

CREATE TABLE film(filmid INT PRIMARY KEY AUTO_INCREMENT, 
title VARCHAR(100) NOT NULL,
description VARCHAR(100),
releaseYear DATE NOT NULL,
originalLanguage INT REFERENCES LANGUAGE(language_Id),
rentalDuration DATE NOT NULL,
LENGTH INT NOT NULL,
replacementCost DOUBLE NOT NULL,
ratings INT NOT NULL,
specialFeatures VARCHAR(100),
category INT REFERENCES category(category_id));

CREATE TABLE film_language(film_id INT REFERENCES film(filmid),
language_id INT REFERENCES LANGUAGE(language_Id));


CREATE TABLE film_actors(film_id INT REFERENCES film(filmid),
actor_id INT REFERENCES actors(actor_id));




CREATE TABLE logindata(username VARCHAR(25) PRIMARY KEY, pass VARCHAR(25));


INSERT INTO logindata ( username ,pass)VALUES	('Jayesh','12345');
INSERT INTO logindata ( username ,pass)VALUES	('Mayur','23456');
INSERT INTO logindata ( username ,pass)VALUES	('Akash','34567');
INSERT INTO logindata ( username ,pass)VALUES	('Kamlesh','45678');
INSERT INTO logindata ( username ,pass)VALUES	('Ashish','56789');


SELECT*FROM logindata;


