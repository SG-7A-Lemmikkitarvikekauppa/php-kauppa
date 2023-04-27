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

CREATE TABLE kuvat (
  idkuva INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nimi VARCHAR(255),
  kuva LONGBLOB
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

ALTER TABLE ruoka ADD nimi VARCHAR(255);

ALTER table lelu ADD kuvaus varchar(255);

UPDATE lelu SET kuvaus = "Kestävä Köysilelu koirallesi" where tuotenro = (011);
UPDATE lelu SET kuvaus = "Pallo kaikille kotieläimille" where tuotenro = (012);
UPDATE lelu SET kuvaus = "Aktivointilelu aktivoi koiraasi" where tuotenro = (013);
UPDATE lelu SET kuvaus = "Vinkuu sit niin saatanasti" where tuotenro = (014);
UPDATE lelu SET kuvaus = "Laadukas laserlelu kissallesi" where tuotenro = (015);
UPDATE lelu SET kuvaus = "Lelu on täytetty kuivalla kissanmintulla, se auttaa vähentämään kissan stressiä" where tuotenro = (017);
UPDATE lelu SET kuvaus = "Matatabi eli mantsurianlaikkuköynnös on myrkytön kasvi, jonka tuoksua kissat rakastavat." where tuotenro = (018);
UPDATE lelu SET kuvaus = "Laadukas leluhiiri kissoille, sisältää pariston" where tuotenro = (019);


UPDATE lelu SET hinta = 15 where tuotenro = (011);
UPDATE lelu SET hinta = 9 where tuotenro = (012);

UPDATE lelu SET hinta = 19 where tuotenro = (013);
UPDATE lelu SET hinta = 6 where tuotenro = (014);
UPDATE lelu SET hinta = 11 where tuotenro = (015);
UPDATE lelu SET hinta = 13 where tuotenro = (017);
UPDATE lelu SET hinta = 4 where tuotenro = (018);
UPDATE lelu SET hinta = 8 where tuotenro = (019);




UPDATE ruoka SET nimi = 'Seniorikissan herkut' WHERE tuotenro = (010);

UPDATE ruoka SET nimi = 'Seniorikoiran muona' WHERE tuotenro = (009);

UPDATE ruoka SET nimi = 'Koiranpennun voimaruoka' WHERE tuotenro = (001);

UPDATE ruoka SET nimi = 'Kissanpennun herkullinen ateria' WHERE tuotenro = (002);

UPDATE ruoka SET nimi = 'Koiran luonnolliset makupalat' WHERE tuotenro = (046);

UPDATE ruoka SET nimi = 'Koiran täysravinto' WHERE tuotenro = (003);

UPDATE ruoka SET nimi = 'Kissan täysravinto' WHERE tuotenro = (004);

UPDATE ruoka SET nimi = 'Koiran turvallinen ruoka-allergia -vaihtoehto' WHERE tuotenro = (005);

UPDATE ruoka SET nimi = 'Kissan turvallinen ruoka-allergia -vaihtoehto' WHERE tuotenro = (006);

UPDATE ruoka SET nimi = 'Leikatun koiran erikoisruoka' WHERE tuotenro = (007);

UPDATE ruoka SET nimi = 'Leikatun kissan erikoisruoka' WHERE tuotenro = (008);

UPDATE ruoka SET nimi = 'Hampaiden puhdistusluu' WHERE tuotenro = (045);
ALTER TABLE ruoka ADD COLUMN kuva BLOB;

INSERT INTO kuvat (nimi, kuva) VALUES ('kissalaser.jpg', LOAD_FILE('php-kauppa/images/kissalaser.jpg'));


ALTER TABLE ruoka ADD kuvaus VARCHAR(255);

UPDATE ruoka SET kuvaus = 'Erityisen maistuva täysravinto sisältää leikatun kissasi hyvinvointia helliviä aineksia, kuten hyvin sulavaa kanaa, vihanneksia, hedelmiä, lohiöljyä ja prebiootteja.' WHERE tuotenro = (008);

UPDATE ruoka SET kuvaus = 'Täysipainoinen, runsaasti kanaa sisältävä täysravinto kookkaaksi kasvaville pennuille. Turvaa tasapainoista kasvua ja sisältää mm. kehityksen kannalta tärkeää omega-3-rasvahappoa.' WHERE tuotenro = (001);

UPDATE ruoka SET kuvaus = 'Puruluu on valmistettu laadukkaasta, yhtenäisestä naudannahasta käsin rullaamalla ja koneella puristamalla.' WHERE tuotenro = (045);

UPDATE ruoka SET kuvaus = 'Erityisen maistuva täysravinto sisältää pennun hyvinvointia helliviä aineksia, kuten hyvin sulavaa kanaa, vihanneksia, hedelmiä, lohiöljyä ja prebiootteja.' WHERE tuotenro = (002);
UPDATE ruoka SET kuvaus = 'Täysikokoisille koirille tarkoitettu runsasproteininen täysravinto. Sisältää rutkasti lihaa eikä lainkaan vehnää. ' WHERE tuotenro = (003);

UPDATE ruoka SET kuvaus = 'Täysikokoisille kissoille tarkoitettu runsasproteininen täysravinto. Extra määrä lihaa ja vähemmän kasviksia.' WHERE tuotenro = (004);

UPDATE ruoka SET kuvaus = 'Tarkoitettu ruoka-aineallergiasta kärsiville koirille. Sisältää lohta, herneitä ja perunaa. ' WHERE tuotenro = (005);

UPDATE ruoka SET kuvaus = 'Tarkoitettu ruoka-aineallergiasta kärsiville kissoille. Aidosti lihaisaa kissanruokaa ilman vehnää tai sokeria.' WHERE tuotenro = (006);

UPDATE ruoka SET kuvaus = 'Erikoisruoka tarkoitettu leikatuille koirille. Sisältää broileria sekä vitamineja ja hivenaineita' WHERE tuotenro = (007);

UPDATE ruoka SET kuvaus = 'Erikoisruoka tarkoitettu vanhemmille koirille. Runsaan lihan lisäksi sisältää runsaasti kivennääisaineita, vitamineja sekä antioksidantteja.' WHERE tuotenro = (009);

UPDATE ruoka SET kuvaus = 'Vanhemmille kissoille tarkoitettu ravitseva ruoka. Sisältää suomalaisia järvikaloja sekä kermaviiliä.' WHERE tuotenro = (010);

UPDATE ruoka SET kuvaus = 'Herkullisia makupaloja perusterveille koirille. Sisältää sian sekä naudan lihaa.' WHERE tuotenro = (046);



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

INSERT INTO tuoteryhmat values ("")

UPDATE ruoka
SET rtyyppi = 'Koiran kuivaruoka'
WHERE tuotenro = 001;

drop table tuoteryhmat;


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