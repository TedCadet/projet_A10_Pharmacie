--Destruction des tables
DROP TABLE consultation PURGE;
DROP TABLE dossierpatient PURGE;
DROP TABLE docteur PURGE;
DROP TABLE ordonnancechirurgie PURGE;
DROP TABLE ordonnancemedicaments PURGE;
DROP TABLE ordonnance PURGE;
--DROP TABLE specialite;
--DROP TABLE medicament;
--DROP TABLE categories;

--CREATE TABLE categories (
--    IdCategorie VARCHAR2(8) PRIMARY KEY, 
--    nom VARCHAR2(50), 
--    Description varchar2(500)
--);

--CREATE TABLE medicament (
--    idMed VARCHAR2(8), 
--   nomMed VARCHAR2(50), 
--    prix number(9,2), 
--    categorie
--);

--CREATE TABLE specialite (
--  code,
--    titre VARCHAR2(50), 
--    description varchar2(500)
--);

--Création des tables
CREATE TABLE ordonnance (
    numOrd NUMBER(8) PRIMARY KEY, 
    recommandations VARCHAR2(50), 
    typeO VARCHAR2(11) CHECK (typeO in ('chirurgie', 'medicaments')), 
    dateC DATE
);

CREATE TABLE ordonnancechirurgie (
    numOrd NUMBER(8),
    rang NUMBER(3) DEFAULT 0,
    nomChirurgie VARCHAR2(50),
    PRIMARY KEY(numOrd, rang),
    FOREIGN KEY(numOrd) REFERENCES ordonnance(numOrd)
);

CREATE TABLE ordonnancemedicaments (
    numOrd NUMBER(8),
    id CHAR(8),
    nbBoites NUMBER(3) DEFAULT 0,
    PRIMARY KEY(numOrd, id),
    FOREIGN KEY (numOrd) REFERENCES ordonnance(numOrd),
    FOREIGN KEY (id) REFERENCES medicaments(id)             -- id = idMed
);

CREATE TABLE docteur (
    matricule VARCHAR2(8) PRIMARY KEY, 
    nomM VARCHAR2(20) NOT NULL, 
    prenomM VARCHAR2(20) NOT NULL, 
    specialite NUMBER(2) , 
    ville VARCHAR2(20), 
    adresse VARCHAR2(50), 
    niveau VARCHAR2(8) CHECK (niveau in ('Étudiant', 'Interne', 'Docteur')), 
    nbrPatients NUMBER(3) DEFAULT 0,
    FOREIGN KEY(specialite) REFERENCES specialites(code)
);

CREATE TABLE dossierpatient (
    numDos VARCHAR2(16) PRIMARY KEY, 
    nomP VARCHAR2(50) NOT NULL, 
    prenomP VARCHAR2(50) NOT NULL, 
    genre CHAR(1) CHECK (genre in ('M', 'F')), 
    numAS VARCHAR2(12) UNIQUE, 
    dateNaiss DATE, 
    dateC DATE, 
    matricule VARCHAR2(8),
    FOREIGN KEY(matricule) REFERENCES docteur(matricule)
);

CREATE TABLE consultation (
    CodeDocteur VARCHAR2(8), 
    numDos VARCHAR2(16),
    dateC DATE, 
    diagnostic VARCHAR2(50), 
    numOrd NUMBER(8),
    PRIMARY KEY(CodeDocteur, numDos, dateC),
    FOREIGN KEY (CodeDocteur) REFERENCES docteur(matricule),
    FOREIGN KEY (numDos) REFERENCES dossierpatient(numDos),
    FOREIGN KEY (numOrd) REFERENCES ordonnance(numOrd)
);