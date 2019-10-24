# -------------------------------------------------------------	#
# Target DBMS:       MySQL                                      #
# Project name:      trgovina        							#
#																#
# stranka	(id, ime, priimek, mesto, popust)					#
# agent	(id, ime, priimek, mesto, marza)						#
# izdelek	(id, ime, zaloga, cena)								#	
# narocilo	(id, stranka_id, agent_id, izdelek_ id, datum, kolicina)					#
# -------------------------------------------------------------	#
DROP DATABASE IF EXISTS trgovina;

CREATE DATABASE IF NOT EXISTS trgovina CHARACTER SET utf8 COLLATE utf8_unicode_ci;

USE trgovina;

create table stranka  (
   id               INTEGER                         not null,
   ime              VARCHAR(20),
   priimek          VARCHAR(20),
   mesto            VARCHAR(20),
   popust           NUMERIC,
   constraint PK_STRANKA primary key (id)
);

create table agent  (
   id                INTEGER                          not null,
   ime              VARCHAR(20),
   priimek          VARCHAR(20),
   mesto            VARCHAR(20),
   marza         NUMERIC,
   constraint PK_AGENT primary key (id)
);

create table izdelek  (
   id                INTEGER                          not null,
   ime              VARCHAR(20),
   zaloga       	NUMERIC,
   cena              NUMERIC,
   constraint PK_IZDELEK primary key (id)
);

create table narocilo  (
   id                INTEGER                          not null,
   stranka_id        INTEGER                          not null,
   agent_id          INTEGER                          not null,
   izdelek_id        INTEGER                          not null,
   datum             DATE,
   kolicina          NUMERIC,
   constraint PK_NAROCILO primary key (id),
   constraint FK_NAROCILO_RELATIONS_STRANKA foreign key (stranka_id)
      references stranka (id),
   constraint FK_NAROCILO_RELATIONS_AGENT foreign key (agent_id)
      references agent (id),
   constraint FK_NAROCILO_RELATIONS_IZDELEK foreign key (izdelek_id)
      references izdelek (id)
);

insert into stranka (id, ime, priimek, mesto, popust) Values (1, 'Marko', 'Novak', 'Celje', 0);
insert into stranka (id, ime, priimek, mesto, popust) Values (2, 'Janez', 'Mučibabič', 'Ljubljana', 0);
insert into stranka (id, ime, priimek, mesto, popust) Values (3, 'Miha', 'Mučibabič', 'Maribor', 5);
insert into stranka (id, ime, priimek, mesto, popust) Values (4, 'Luka', 'Novak', 'Kranj', 0);
insert into stranka (id, ime, priimek, mesto, popust) Values (5, 'Franc', 'Urban', 'Ljubljana', 2);
insert into stranka (id, ime, priimek, mesto, popust) Values (6, 'Ana', 'Jelinc', 'Kranj', 10);
insert into stranka (id, ime, priimek, mesto, popust) Values (7, 'Stane', 'Novak', 'Koper', 0);
insert into stranka (id, ime, priimek, mesto, popust) Values (8, 'Marko', 'Polh', 'Novo mesto', 0);
insert into stranka (id, ime, priimek, mesto, popust) Values (9, 'Marija', 'Vednik', 'Nova Gorica', 15);
insert into stranka (id, ime, priimek, mesto, popust) Values (10, 'Maja', 'Mučibabič', 'Ljubljana', 10);

insert into agent (id, ime, priimek, mesto, marza) Values (1, 'Janko', 'Kos', 'Ptuj', 5);
insert into agent (id, ime, priimek, mesto, marza) Values (2, 'Peter', 'Jelenc', 'Ljubljana', 3);
insert into agent (id, ime, priimek, mesto, marza) Values (3, 'Jure', 'Petrih', 'Nova Gorica', 5);
insert into agent (id, ime, priimek, mesto, marza) Values (4, 'Petra', 'Milič', 'Murska Sobota', 10);
insert into agent (id, ime, priimek, mesto, marza) Values (5, 'Marjan', 'Petelin', 'Kranj', 7);
insert into agent (id, ime, priimek, mesto, marza) Values (6, 'Tadej', 'Tadej', 'Trbovlje', 5);
insert into agent (id, ime, priimek, mesto, marza) Values (7, 'Rok', 'Piškur', 'Kranj', 6);

insert into izdelek (id, ime, zaloga, cena) Values (1, 'I-cbs', 5, 10);
insert into izdelek (id, ime, zaloga, cena) Values (2, 'A-prt', 0, 100);
insert into izdelek (id, ime, zaloga, cena) Values (3, 'D-mrs', 23, 120);
insert into izdelek (id, ime, zaloga, cena) Values (4, 'P-bps', 554, 5);
insert into izdelek (id, ime, zaloga, cena) Values (5, 'A-mrs', 52, 35);
insert into izdelek (id, ime, zaloga, cena) Values (6, 'X-cbx', 6, 20);
insert into izdelek (id, ime, zaloga, cena) Values (7, 'X-4uc', 56, 20);
insert into izdelek (id, ime, zaloga, cena) Values (8, 'I-emr', 34, 200);
insert into izdelek (id, ime, zaloga, cena) Values (9, 'Z-ttd', 3, 1000);

insert into narocilo (id, stranka_id, agent_id, izdelek_id, datum, kolicina) Values (1, 3, 4, 5, DATE '2006-10-7', 4);
insert into narocilo (id, stranka_id, agent_id, izdelek_id, datum, kolicina) Values (2, 6, 3, 2, DATE '2006-3-17', 7);
insert into narocilo (id, stranka_id, agent_id, izdelek_id, datum, kolicina) Values (3, 8, 2, 8, DATE '2007-12-28', 1);
insert into narocilo (id, stranka_id, agent_id, izdelek_id, datum, kolicina) Values (4, 3, 1, 9, DATE '2003-10-21', 10);
insert into narocilo (id, stranka_id, agent_id, izdelek_id, datum, kolicina) Values (5, 6, 2, 3, DATE '2004-5-13', 6);
insert into narocilo (id, stranka_id, agent_id, izdelek_id, datum, kolicina) Values (6, 8, 2, 4, DATE '2008-2-2', 120);
insert into narocilo (id, stranka_id, agent_id, izdelek_id, datum, kolicina) Values (7, 7, 6, 5, DATE '2008-7-1', 4);
insert into narocilo (id, stranka_id, agent_id, izdelek_id, datum, kolicina) Values (8, 3, 7, 2, DATE '2008-1-19', 12);
insert into narocilo (id, stranka_id, agent_id, izdelek_id, datum, kolicina) Values (9, 2, 7, 1, DATE '2009-11-7', 5);
insert into narocilo (id, stranka_id, agent_id, izdelek_id, datum, kolicina) Values (10, 9, 3, 1, DATE '1998-1-11', 2);
insert into narocilo (id, stranka_id, agent_id, izdelek_id, datum, kolicina) Values (11, 2, 4, 2, DATE '2004-5-4', 24);
insert into narocilo (id, stranka_id, agent_id, izdelek_id, datum, kolicina) Values (12, 6, 5, 8, DATE '2004-8-30', 4);