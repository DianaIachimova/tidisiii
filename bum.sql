drop database if exists Cristina;
create database Cristina;
use Cristina;

create table Pozitie(
id_pozitie int primary key not null auto_increment,
etaj int not null,
butic int not null);


create table Oras(
id_oras int not null primary key auto_increment,
denumire_oras  varchar(25) not null ); /*denumirea orasului in care se afla compania*/


create table Tara(
id_tara int  not null primary key auto_increment ,
denumire_tara  varchar(25) not null, /*denumirea tarii in care se afla compania*/
id_oras int not null,
foreign key (id_oras) references Oras(id_oras)); 



create table Companie( /*producatori de incaltaminte*/
id_companie int primary key not null auto_increment,
/*denumirea companii*/
denumire varchar(50) not null,
id_tara int not null,
foreign key (id_tara) references Tara(id_tara),
adresa varchar(40) not null); 


create table Count_categorie  /*tabelul va stoca cate produse are fiecare categorie*/
(id_count int not null ,
categorie  varchar(40) not null primary key,
nr_de_produse int not null
);


create table Produs(
id_produs int primary key not null auto_increment,
tip_client varchar(40) not null, /* femei, barbati, fete, baieti*/
categorie varchar(40) not null, /*categoria : pantofi, adidasi, cizme, etc.*/
foreign key (categorie) references Count_categorie(categorie),
den varchar(40) not null unique, /*denumirea incaltamintei prin cod specific pentru usurarinta*/
culoare varchar(60) not null,
material varchar(60) not null,
pret double not null,
id_companie int not null,
foreign key (id_companie) references Companie(id_companie),
id_pozitie int not null,
foreign key (id_pozitie) references Pozitie(id_pozitie),
stoc char(15) not null,
check (stoc='este' or stoc='nu este')); /* este sau nu in stoc*/


insert into Pozitie values 
(1,1,1),
(2,1,2),
(3,1,3),
(4,1,4),
(5,1,5),
(6,1,6),
(7,2,7),
(8,2,8),
(9,2,9),
(10,2,10),
(11,2,11),
(12,2,12),
(13,3,13),
(14,3,14),
(15,3,15),
(16,3,16),
(17,3,17),
(18,3,18),
(19,4,19),
(20,4,20),
(21,4,21),
(22,4,22),
(23,4, 23),
(24,4,24);

insert into Oras values
(1, 'Chisinau'),
(2,'Reghin'),
(3, 'Bucuresti'),
(4, 'Pitesti'),
(5,'Oradea'),
(6, 'Potgoria'),
(7, 'Vicovau de Sud' ),
(8, 'Sibiu'),
(9,'Alba Iulia'),
(10, 'Lutsk'),
(11,'Dnepr'),
(12, 'Kiev'),
(13,'Odesa'),
(14, 'Gungoren' ),
(15, 'Instanbul'),
(16, 'Lagadas'),
(17, 'Athens');


insert into Tara values
(1, 'Moldova', 1),
(2, 'Romania', 2 ),
(3, 'Romania', 3),
(4, 'Romania', 4),
(5, 'Romania', 5),
(6, 'Romania', 6),
(7, 'Romania', 7),
(8, 'Romania', 8),
(9, 'Romania', 9),
(10, 'Ucraina', 10),
(11, 'Ucraina', 11),
(12, 'Ucraina', 12),
(13, 'Ucraina', 13),
(14, 'Turcia', 14),
(15, 'Turcia', 15),
(16, 'Grecia', 16),
(17, 'Grecia', 17);



insert into Companie values
(1, 'OLDCOM', 1,'str.Industriala 3'),
(2, 'Frunza', 1,'str.Alexei Mateevici 49/7'),
(3,'Cadentzza', 2, 'str.Castanilor 19'),
(4,'Corvaris', 3, 'str.Sfantul Gheorghe 2'),
(5,'Mateo', 4, 'str.Marasesti 20'),
(6, 'Leofex', 5, 'str.Matei Corvin 68'),
(7,'Mopiel', 6,'str.Podgoriei 29'),
(8,'Nevalis', 7, 'str.Calea Cernauti'),
(9,'Marelbo', 8, 'str.Nicolae Balcescu 14'),
(10, 'Rekord',  9, 'str.Alba Iulia 40A'),
(11, 'BELTSA',  10, 'str.Ershova 11'),
(12, 'Grace',11, 'str.Kedrina 49'),
(13,'MTI',  12, 'str. Pimonenko 13'),
(14,'Lotos', 12, 'str.Yaroslavliv 10b'),
(15, 'Garda', 13, 'str.Elisavetinska 1'),
(16, 'Actas', 14,'str.Sanayi 34'),
(17, 'Livens', 15, 'str.Oruc Reis 9'),
(18, 'Deco', 15, 'str.Emin Sinan 89'),
(19, 'Katia', 16, 'str. Kavalari 572'),
(20, 'Sea', 17, 'str.Filotheis 111');





