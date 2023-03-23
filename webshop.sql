drop database if exists verkkokauppa;

create database verkkokauppa;

use verkkokauppa;

create table tuote(
    id int primary key AUTO_INCREMENT,
    name varchar(255) not NULL,
    hinta DOUBLE (10,2) not NULL
);


create table kategoria (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nimi varchar(255) not null
)

insert into tuote (name) values ("Koiranruoka");
insert into tuote (name) values ("Kissanruoka");

insert into kategoria (nimi) values ("Koirat");
insert into kategoria (nimi) values ("Kissat");
insert into kategoria (nimi) values ("Jyrsijät");

