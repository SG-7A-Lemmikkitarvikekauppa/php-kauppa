drop database if exists verkkokauppa;

create database verkkokauppa;

use verkkokauppa;


create table hoito(
    id VARCHAR(10),
    tuotenro VARCHAR(4) primary key,
    nimi varchar(255) not NULL,
    hinta DOUBLE (10,2) not NULL,
    FOREIGN KEY (id) REFERENCES lemmikki(id)
);
create table lelu(
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
create table tarvike(
    id VARCHAR(10),
    tuotenro VARCHAR(4) primary key,
    nimi varchar(255) not NULL,
    hinta DOUBLE (10,2) not NULL,
    FOREIGN KEY (id) REFERENCES lemmikki(id)
);

create table ulkoilu(
    id VARCHAR(10),
    tuotenro VARCHAR(4) primary key,
    nimi varchar(255) not NULL,
    hinta DOUBLE (10,2) not NULL,
    FOREIGN KEY (id) REFERENCES lemmikki(id)
);

create table asiakas (
    id int primary key auto_increment,
    firstname varchar(50) not null,
    lastname varchar(50) not null,
    address varchar(50) not null,
    zip varchar(50) not null,
    city varchar(50) not null
);

create table tilaus (
    id int primary key AUTO_INCREMENT,
    order_date timestamp default CURRENT_TIMESTAMP,
    asiakas_id int not null,
    index asiakas_id(asiakas_id),
    foreign key (asiakas_id) REFERENCES asiakas(id)
    on delete RESTRICT
);


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

INSERT INTO ruoka VALUES ("koira", "herkku", 10, 5, "046");


/*
käyttäjänimi:
webshopBackendUser

salasana:
ptKFTRWtEXGWuyqx

tietokannan nimi:
opisk_n2leju00