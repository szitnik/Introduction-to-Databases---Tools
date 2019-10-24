# -------------------------------------------------------------#
# Target DBMS:       MySQL                             		   #
# Project name:      dobavitelj        						   #
# -------------------------------------------------------------#
DROP DATABASE IF EXISTS dobavitelj;

CREATE DATABASE IF NOT EXISTS dobavitelj CHARACTER SET utf8 COLLATE utf8_unicode_ci;

USE dobavitelj;

create table trgovec
	(id integer,
	 ime varchar(20),
	 priimek varchar(20),
	 status integer,
	 mesto varchar(20));

insert into trgovec
	values (1001, 'Janez', 'Novak', 20, 'Novo mesto');

insert into trgovec
	values (1002, 'Miha', 'Karjnc', 10, 'Kranj');

insert into trgovec
	values (1003, 'Igor', 'Potočnik', 30, 'Kranj');

insert into trgovec
	values (1004, 'Primož', 'Drev', 20, 'Novo mesto');

insert into trgovec
	values (1005, 'Nina', 'Kos', 30, 'Koper');



create table del
	(id integer(2),
 	 naziv varchar(20),
	 barva varchar(10),
	 teza integer,
	 mesto varchar(20));

insert into del
	values (2001, 'Matica', 'Rdeča', 12, 'Novo mesto');

insert into del
	values (2002, 'Vijak', 'Zelena', 17, 'Kranj');

insert into del
	values (2003, 'Vijak', 'Modra', 17, 'Maribor');

insert into del
	values (2004, 'Vijak', 'Rdeča', 14, 'Novo mesto');

insert into del
	values (2005, 'Podloûka', 'Modra', 12, 'Kranj');

insert into del
	values (2006, 'Zobnik', 'Rdeča', 19, 'Novo mesto');



create table projekt
	(id integer,
	 naziv varchar(20),
	 mesto varchar(20));

insert into projekt
	values (3001, 'Rezalni stroj', 'Kranj');

insert into projekt
	values (3002, 'Luknjač', 'Maribor');

insert into projekt
	values (3003, 'Čitalnik', 'Koper');

insert into projekt
	values (3004, 'Sortirni stroj', 'Koper');

insert into projekt
	values (3005, 'Mešalni stroj', 'Novo mesto');

insert into projekt
	values (3006, 'Terminal', 'Celje');

insert into projekt
	values (3007, 'Predvajalnik', 'Novo mesto');



create table dobavnica
	( trgovec_id integer,
	  del_id integer,
	  projekt_id integer,
	  kolicina integer);

insert into dobavnica
	values (1001, 2001, 3001, 200);

insert into dobavnica
	values (1001, 2001, 3004, 700);

insert into dobavnica
	values (1002, 2003, 3001, 400);

insert into dobavnica
	values (1002, 2003, 3002, 200);

insert into dobavnica
	values (1002, 2003, 3003, 200);

insert into dobavnica
	values (1002, 2003, 3004, 500);

insert into dobavnica
	values (1002, 2003, 3005, 600);

insert into dobavnica
	values (1002, 2003, 3006, 400);

insert into dobavnica
	values (1002, 2003, 3007, 800);

insert into dobavnica
	values (1002, 2005, 3002, 100);

insert into dobavnica
	values (1003, 2003, 3001, 200);

insert into dobavnica
	values (1003, 2004, 3002, 500);

insert into dobavnica
	values (1004, 2006, 3003, 300);

insert into dobavnica
	values (1004, 2006, 3007, 300);

insert into dobavnica
	values (1005, 2002, 3002, 200);

insert into dobavnica
	values (1005, 2002, 3004, 100);

insert into dobavnica
	values (1005, 2005, 3005, 500);

insert into dobavnica
	values (1005, 2005, 3007, 100);

insert into dobavnica
	values (1005, 2006, 3002, 200);

insert into dobavnica
	values (1005, 2001, 3004, 1000);

insert into dobavnica
	values (1005, 2003, 3004, 1200);

insert into dobavnica
	values (1005, 2004, 3004, 800);

insert into dobavnica
	values (1005, 2005, 3004, 400);

insert into dobavnica
	values (1005, 2006, 3004, 500);