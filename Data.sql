create user admin_base login password 'root' createDB;
create database ecoles5;
alter database ecoles5 owner to admin_base;
\c ecoles5 admin_base

create sequence seq_etudiant increment by 1 minvalue 1 start 1;
create table Etudiant
(
    idEtu varchar(10) NOT NULL DEFAULT 'ETU'||nextval('seq_etudiant') CONSTRAINT pketudiant PRIMARY KEY, 
    Nom varchar(20), 
    Prenom varchar(20), 
    Adresse varchar(20), 
    datedenaissance date,
    dateentree date, 
    etudiant boolean
);

create sequence seq_prof increment by 1 minvalue 1 start 1;
create table Professeur
(
    idProf varchar(10) NOT NULL DEFAULT 'PROF'||nextval('seq_prof') CONSTRAINT pkprof PRIMARY KEY,
    Nom varchar(20), 
    Prenom varchar(20), 
    Email varchar(30),
    numerotel int
);

create sequence seq_matiere increment by 1 minvalue 1 start 1;
create table Matiere
(
    idMat varchar(10) NOT NULL DEFAULT 'MAT'||nextval('seq_matiere') CONSTRAINT pkmatiere PRIMARY KEY,
    Nom varchar(20), 
    CodeMat int,
    Coeff int,
    idProf varchar(10) REFERENCES Professeur(idProf)
);

create sequence seq_classe increment by 1 minvalue 1 start 1;
-- Semestre
create table Classe
(
    idClasse varchar(10) NOT NULL DEFAULT 'CLASSE'||nextval('seq_classe') CONSTRAINT pkclasse PRIMARY KEY,
    Nom varchar(20), 
    Salle varchar(10),
    idMat varchar(10) REFERENCES Matiere(idMat),
    idProf varchar(10) REFERENCES Professeur(idProf),
    idEtu varchar(10) REFERENCES Etudiant(idEtu),
    datedebut date,
    datefin date
);

create sequence seq_directeur increment by 1 minvalue 1 start 1;
create table Directeur
(
    idDirecteur varchar(10) NOT NULL DEFAULT 'DIR'||nextval('seq_directeur') CONSTRAINT pkdirecteur PRIMARY KEY,
    Nom varchar(20), 
    Email varchar(30),
    mdp varchar(70),
    numerotel int
);

create sequence seq_note increment by 1 minvalue 1 start 1;
create table Note
(
    idNote varchar(10) NOT NULL DEFAULT 'NOTE'||nextval('seq_note') CONSTRAINT pknote PRIMARY KEY,
    idEtu varchar(10) REFERENCES Etudiant(idEtu),
    Note double precision,
    idClasse varchar(10) REFERENCES Classe(idClasse)
);

create sequence seq_ecolage increment by 1 minvalue 1 start 1;
create table Ecolage
(
    idEcolage varchar(10) NOT NULL DEFAULT 'ECOLA'||nextval('seq_ecolage') CONSTRAINT pkecolage PRIMARY KEY,
    DatePaiement date,
    idClasse varchar(10) REFERENCES Classe(idClasse),
    montant int
);


