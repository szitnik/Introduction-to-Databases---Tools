# -------------------------------------------------------------	#
# Target DBMS:       MySQL                                      #
# Project name:      gsm            							#
#																#
# prodaja	(operater, telefon)									#
# kupuje	(stranka, operater)									#
# najraje	(stranka, telefon)									#	
# -------------------------------------------------------------	#
DROP DATABASE IF EXISTS gsm;

CREATE DATABASE IF NOT EXISTS gsm CHARACTER SET utf8 COLLATE utf8_unicode_ci;

USE gsm;

CREATE TABLE prodaja
(
  operater  VARCHAR(10),
  telefon   VARCHAR(10)
);

CREATE TABLE kupuje
(
  stranka   VARCHAR(10),
  operater  VARCHAR(10)
);

CREATE TABLE najraje
(
  stranka  VARCHAR(10),
  telefon  VARCHAR(10)
);


Insert into kupuje
   (stranka, operater)
 Values 
   ('Marko', 'Mobitel');
Insert into kupuje
   (stranka, operater)
 Values
   ('Marko', 'Simobil');
Insert into kupuje
   (stranka, operater)
 Values
   ('Meta', 'Mobitel');
Insert into kupuje
   (stranka, operater)
 Values
   ('Meta', 'TusMobil');
Insert into kupuje
   (stranka, operater)
 Values
   ('Meta', 'Simobil');
Insert into kupuje
   (stranka, operater)
 Values
   ('Janez', 'Simobil');
Insert into kupuje
   (stranka, operater)
 Values
   ('Petra', 'Mobitel');



Insert into najraje
   (stranka, telefon)
 Values
   ('Petra', 'Nokia');
Insert into najraje
   (stranka, telefon)
 Values
   ('Janez', 'Siemens');
Insert into najraje
   (stranka, telefon)
 Values
   ('Meta', 'Nokia');
Insert into najraje
   (stranka, telefon)
 Values
   ('Marko', 'Siemens');


Insert into prodaja
   (operater, telefon)
 Values
   ('Simobil', 'SE');
Insert into prodaja
   (operater, telefon)
 Values
   ('Simobil', 'Siemens');
Insert into prodaja
   (operater, telefon)
 Values
   ('Simobil', 'Nokia');
Insert into prodaja
   (operater, telefon)
 Values
   ('TusMobil', 'SE');
Insert into prodaja
   (operater, telefon)
 Values
   ('TusMobil', 'Nokia');
Insert into prodaja
   (operater, telefon)
 Values
   ('Mobitel', 'Siemens');
Insert into prodaja
   (operater, telefon)
 Values
   ('Mobitel', 'Nokia');
