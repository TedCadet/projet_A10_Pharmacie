--Destruction des tables
DROP TABLE consultation PURGE;
DROP TABLE dossierpatient PURGE;
DROP TABLE docteur PURGE;
DROP TABLE ordonnancechirurgie PURGE;
DROP TABLE ordonnancemedicaments PURGE;
DROP TABLE ordonnance PURGE;
/* -------------------------------- */

DROP TABLE medicament;
DROP TABLE specialite;
DROP TABLE categorie;

-- CATEGORIES (IdCategorie, nom, Description)
CREATE TABLE categorie (
    id          NUMBER(2)       PRIMARY KEY,
    nom         VARCHAR2(100)   NOT NULL UNIQUE,
    description VARCHAR2(500)
);

-- SPECIALITE (code, titre, description)
CREATE TABLE specialite (
    code        NUMBER(2)       PRIMARY KEY, 
    titre       VARCHAR2(100)   NOT NULL UNIQUE,
    description VARCHAR2(500)
);

-- MEDICAMENT (idMed, nomMed, prix, categorie)
CREATE TABLE medicament (
    id           CHAR(8)         PRIMARY KEY,
    nom          VARCHAR2(150)   NOT NULL UNIQUE,
    prix         NUMBER(8,2)     DEFAULT 0,
    categorie_id NUMBER(2)       REFERENCES categorie(id)
);


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
    idMed CHAR(8),
    nbBoites NUMBER(3) DEFAULT 0 CHECK(nbBoites > 0),
    PRIMARY KEY(numOrd, idMed),
    FOREIGN KEY (numOrd) REFERENCES ordonnance(numOrd),
    FOREIGN KEY (idMed) REFERENCES medicament(id)             -- id = idMed
);

CREATE TABLE docteur (
    matricule NUMBER(8) PRIMARY KEY, 
    nomM VARCHAR2(20) NOT NULL, 
    prenomM VARCHAR2(20) NOT NULL, 
    specialite NUMBER(2) , 
    ville VARCHAR2(20), 
    adresse VARCHAR2(50), 
    niveau VARCHAR2(10) CHECK (niveau in ('Étudiant', 'Interne', 'Docteur')), 
    nbrPatients NUMBER(3) DEFAULT 0 CHECK (nbrPatients > 0),
    FOREIGN KEY(specialite) REFERENCES specialite(code)
);

CREATE TABLE dossierpatient (
    numDos NUMBER(10) PRIMARY KEY, 
    nomP VARCHAR2(30) NOT NULL, 
    prenomP VARCHAR2(30) NOT NULL, 
    genre CHAR(1) CHECK (genre in ('M', 'F')), 
    numAS VARCHAR2(12) UNIQUE, 
    dateNaiss DATE, 
    dateC DATE, 
    matricule NUMBER(8),
    FOREIGN KEY(matricule) REFERENCES docteur(matricule)
);

CREATE TABLE consultation (
    CodeDocteur NUMBER(8), 
    numDos NUMBER(10),
    dateC DATE, 
    diagnostic VARCHAR2(255), 
    numOrd NUMBER(8),
    PRIMARY KEY(CodeDocteur, numDos, dateC),
    FOREIGN KEY (CodeDocteur) REFERENCES docteur(matricule),
    FOREIGN KEY (numDos) REFERENCES dossierpatient(numDos),
    FOREIGN KEY (numOrd) REFERENCES ordonnance(numOrd)
);