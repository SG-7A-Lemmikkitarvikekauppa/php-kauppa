drop database if exists verkkokauppa;

create database verkkokauppa;

use verkkokauppa;

create table tarvike(
    id VARCHAR(10),
    tuotenro VARCHAR(4) primary key,
    nimi varchar(255) not NULL,
    hinta DOUBLE (10,2) not NULL,
    FOREIGN KEY (id) REFERENCES lemmikki(id)
);

CREATE table lemmikki(
    id VARCHAR(10) PRIMARY KEY
);

create table ruoka(
    id VARCHAR(10) ,
    rtyyppi varchar(255) not NULL,
    hinta DOUBLE (10,2) not NULL,
    maara varchar(4) NOT NULL,
    tuotenro VARCHAR(4) NOT NULL,
    FOREIGN KEY (id) REFERENCES lemmikki(id)

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

INSERT INTO ruoka VALUES ("1" ,"pentu", "10", "25");

INSERT INTO ruoka (maara) VALUES ("10");

INSERT INTO ruoka (hinta) VALUES ("25");

DROP Table lemmikki;

INSERT INTO ruoka VALUES ("kissa" ,"seniori", 35, 15, "010");

INSERT INTO lemmikki VALUES ("Kissa");

INSERT INTO lelu VALUES ("kissa", "019", "leluhiiri", 8.90);

INSERT INTO hoito VALUES ("kissa", "031", "kissanhiekkalapio", 2.90);

INSERT INTO ulkoilu VALUES ("koira", "038", "heijastin", 1.90);

INSERT INTO tarvike values ("kissa", "044", "ruokakuppi", 7.90);

INSERT INTO ruoka VALUES ("koira", "herkku", 10, 5, "046")