drop database if exists verkkokauppa;

create database verkkokauppa;

use verkkokauppa;

CREATE table lemmikki(
    id VARCHAR(10) PRIMARY KEY
);

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




INSERT INTO ruoka VALUES ("koira" ,"pentu", 10, 2, "001");
INSERT INTO ruoka VALUES ("kissa" ,"pentu", 8, 2, "002");
INSERT INTO ruoka VALUES ("koira" ,"aikuinen", 15, 2, "003");
INSERT INTO ruoka VALUES ("kissa" ,"aikuinen", 12, 2, "004");
INSERT INTO ruoka VALUES ("koira" ,"allergikko", 18, 5, "005");
INSERT INTO ruoka VALUES ("kissa" ,"allergikko", 15, 5, "006");
INSERT INTO ruoka VALUES ("koira" ,"leikattu", 25, 10, "007");
INSERT INTO ruoka VALUES ("kissa" ,"leikattu", 25, 10, "008");
INSERT INTO ruoka VALUES ("koira" ,"seniori", 40, 15, "009");
INSERT INTO ruoka VALUES ("kissa" ,"seniori", 35, 15, "010");
INSERT INTO ruoka VALUES ("koira" ,"puruluu", 16, 5, "045");
INSERT INTO ruoka VALUES ("koira" ,"herkku", 10, 5, "046");


INSERT INTO lemmikki VALUES ("Kissa");
INSERT INTO lemmikki VALUES ("Koira");


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