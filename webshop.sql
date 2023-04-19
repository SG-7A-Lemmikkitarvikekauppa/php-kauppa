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


INSERT INTO lelu VALUES ("koira", "011", "köysilelu", 15.90);
INSERT INTO lelu VALUES ("koira", "012", "pallo", 9.90);
INSERT INTO lelu VALUES ("koira", "013", "aktivointilelu", 19.90);
INSERT INTO lelu VALUES ("koira", "014", "vinkulelu", 6);
INSERT INTO lelu VALUES ("kissa", "015", "laserlelu", 11.90);
INSERT INTO lelu VALUES ("kissa", "016", "pallo", 10);
INSERT INTO lelu VALUES ("kissa", "017", "kissanminttulelu", 13.90);
INSERT INTO lelu VALUES ("kissa", "018", "huiska", 4.90);
INSERT INTO lelu VALUES ("kissa", "019", "leluhiiri", 8.90);


INSERT INTO hoito VALUES ("koira", "020", "shampoo", 4.90);
INSERT INTO hoito VALUES ("koira", "021", "harja", 5.90);
INSERT INTO hoito VALUES ("koira", "022", "kynsisakset", 7.90);
INSERT INTO hoito VALUES ("koira", "023", "trimmaussakset", 8.90);
INSERT INTO hoito VALUES ("koira", "024", "punkkikarkote", 11.90);
INSERT INTO hoito VALUES ("kissa", "025", "harja", 4.90);
INSERT INTO hoito VALUES ("kissa", "026", "kynsisakset", 6.90);
INSERT INTO hoito VALUES ("kissa", "027", "shampoo", 3.90);
INSERT INTO hoito VALUES ("kissa", "028", "punkkikarkote", 10.90);
INSERT INTO hoito VALUES ("kissa", "029", "hiekkalaatikko", 12);
INSERT INTO hoito VALUES ("kissa", "030", "kissanhiekka", 15);
INSERT INTO hoito VALUES ("kissa", "031", "kissanhiekkalapio", 2.90);

INSERT INTO ulkoilu VALUES ("koira", "032", "hihna", 8);
INSERT INTO ulkoilu VALUES ("koira", "033", "kaulapanta", 6);
INSERT INTO ulkoilu VALUES ("koira", "034", "valjaat", 18);
INSERT INTO ulkoilu VALUES ("koira", "035", "sadetakki", 15.90);
INSERT INTO ulkoilu VALUES ("koira", "036", "talvitakki", 21.90);
INSERT INTO ulkoilu VALUES ("koira", "037", "kakkapussit", 2.90);
INSERT INTO ulkoilu VALUES ("koira", "038", "heijastin", 1.90);

INSERT INTO tarvike values ("kissa", "039", "kuljetuskoppa", 22);
INSERT INTO tarvike values ("kissa", "040", "valjaat", 14);
INSERT INTO tarvike values ("kissa", "041", "hihna", 9.90);
INSERT INTO tarvike values ("kissa", "042", "peti", 15.90);
INSERT INTO tarvike values ("kissa", "043", "raapimispuu", 55.90);
INSERT INTO tarvike values ("kissa", "044", "ruokakuppi", 7.90);



/*
käyttäjänimi:
webshopBackendUser

salasana:
ptKFTRWtEXGWuyqx
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
 
INSERT INTO lelu VALUES ("koira", "011", "köysilelu", 15.90);
INSERT INTO lelu VALUES ("koira", "012", "pallo", 9.90);
INSERT INTO lelu VALUES ("koira", "013", "aktivointilelu", 19.90);
INSERT INTO lelu VALUES ("koira", "014", "vinkulelu", 6);
INSERT INTO lelu VALUES ("kissa", "015", "laserlelu", 11.90);
INSERT INTO lelu VALUES ("kissa", "016", "pallo", 10);
INSERT INTO lelu VALUES ("kissa", "017", "kissanminttulelu", 13.90);
INSERT INTO lelu VALUES ("kissa", "018", "huiska", 4.90);
INSERT INTO lelu VALUES ("kissa", "019", "leluhiiri", 8.90);
 
INSERT INTO hoito VALUES ("koira", "020", "shampoo", 4.90);
INSERT INTO hoito VALUES ("koira", "021", "harja", 5.90);
INSERT INTO hoito VALUES ("koira", "022", "kynsisakset", 7.90);
INSERT INTO hoito VALUES ("koira", "023", "trimmaussakset", 8.90);
INSERT INTO hoito VALUES ("koira", "024", "punkkikarkote", 11.90);
INSERT INTO hoito VALUES ("kissa", "025", "harja", 4.90);
INSERT INTO hoito VALUES ("kissa", "026", "kynsisakset", 6.90);
INSERT INTO hoito VALUES ("kissa", "027", "shampoo", 3.90);
INSERT INTO hoito VALUES ("kissa", "028", "punkkikarkote", 10.90);
INSERT INTO hoito VALUES ("kissa", "029", "hiekkalaatikko", 12);
INSERT INTO hoito VALUES ("kissa", "030", "kissanhiekka", 15);
INSERT INTO hoito VALUES ("kissa", "031", "kissanhiekkalapio", 2.90);
 
INSERT INTO ulkoilu VALUES ("koira", "032", "hihna", 8);
INSERT INTO ulkoilu VALUES ("koira", "033", "kaulapanta", 6);
INSERT INTO ulkoilu VALUES ("koira", "034", "valjaat", 18);
INSERT INTO ulkoilu VALUES ("koira", "035", "sadetakki", 15.90);
INSERT INTO ulkoilu VALUES ("koira", "036", "talvitakki", 21.90);
INSERT INTO ulkoilu VALUES ("koira", "037", "kakkapussit", 2.90);
INSERT INTO ulkoilu VALUES ("koira", "038", "heijastin", 1.90);
 

tietokannan nimi:
opisk_n2leju00
INSERT INTO tarvike values ("kissa", "039", "kuljetuskoppa", 22);
INSERT INTO tarvike values ("kissa", "040", "valjaat", 14);
INSERT INTO tarvike values ("kissa", "041", "hihna", 9.90);
INSERT INTO tarvike values ("kissa", "042", "peti", 15.90);
INSERT INTO tarvike values ("kissa", "043", "raapimispuu", 55.90);
INSERT INTO tarvike values ("kissa", "044", "ruokakuppi", 7.90);


/*
käyttäjänimi:
webshopBackendUser

salasana:
ptKFTRWtEXGWuyqx

tietokannan nimi:
opisk_n2leju00