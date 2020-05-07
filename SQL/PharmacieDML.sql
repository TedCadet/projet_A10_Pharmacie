--Suppression de toutes les tables
DELETE categories;
DELETE specialite;
DELETE medicament;
DELETE ordonnancechirurgie;
DELETE ordonnancemedicaments;
DELETE ordonnance;
DELETE docteur;
DELETE dossierpatient;
DELETE consultation;

-- fonctionne
INSERT INTO 
CREATE TABLE DOSSIERPATIENT (
    numDos int PRIMARY KEY, 
    nomP VARCHAR2(50) NOT NULL, 
    prenomP VARCHAR2(50) NOT NULL, 
    genre CHAR(1) CHECK (genre in ('M', 'F')), 
    numAS VARCHAR2(12) UNIQUE, 
    dateNaiss DATE, 
    dateC DATE, 
    matricule VARCHAR2(8) FOREIGN KEY REFERENCES DOCTEUR(matricule)
);

-- fonctionne
CREATE TABLE DOCTEUR (
    matricule VARCHAR2(8) PRIMARY KEY, 
    nomM VARCHAR2(20) NOT NULL, 
    prenomM VARCHAR2(20) NOT NULL, 
    specialite NUMBER(2) , 
    ville VARCHAR2(20), 
    adresse VARCHAR2(50), 
    niveau VARCHAR2(8) CHECK (niveau in ('Étudiant', 'Interne', 'Docteur')), 
    nbrPatients NUMBER(3) DEFAULT 0,
    FOREIGN KEY(specialite) REFERENCES SPECIALITE(code)
   
);

-- fonctionnne
CREATE TABLE CONSULTATION (
    CodeDocteur VARCHAR2(8), 
    numDos int, --FOREIGN
    dateC DATE, 
    diagnostic VARCHAR2(50), 
    numOrd NUMBER(8),
    PRIMARY KEY(CodeDocteur, numDos, dateC),
    FOREIGN KEY (CodeDocteur) REFERENCES DOCTEUR(matricule),
    FOREIGN KEY (numDos) REFERENCES DOSSIERPATIENT(numDos),
    FOREIGN KEY (numOrd) REFERENCES ORDONNANCE(numOrd)
);

-- fonctionne
CREATE TABLE ORDONNANCE (
    numOrd NUMBER(8) PRIMARY KEY, 
    recommandations VARCHAR2(50), 
    typeO VARCHAR2(11) CHECK (typeO in ('chirurgie', 'medicaments')), 
    dateC DATE
);

-- fonctionne
CREATE TABLE ORDONNANCECHIRURGIE (
    numOrd NUMBER(8),
    rang NUMBER(3) DEFAULT 0,
    nomChirurgie VARCHAR2(50),
    PRIMARY KEY(numOrd, rang),
    FOREIGN KEY(numOrd) REFERENCES ORDONNANCE(numOrd)
);

-- id = idMed
-- fonctionne 
CREATE TABLE ORDONNANCEMEDICAMENTS (
    numOrd NUMBER(8),
    id CHAR(8), 
    nbBoites NUMBER(3) DEFAULT 0,
    PRIMARY KEY(numOrd, id),
    FOREIGN KEY (numOrd) REFERENCES ORDONNANCE(numOrd),
    FOREIGN KEY (id) REFERENCES MEDICAMENTS(id)
);

CREATE TABLE MEDICAMENT (
    idMed VARCHAR2(8), 
    nomMed VARCHAR2(50), 
    prix number(9,2), 
    categorie -- wut ?, yassir
);

CREATE TABLE SPECIALITE (
    code, -- je sais pas trop, yassir 
    titre VARCHAR2(50), 
    description varchar2(500)
);

CREATE TABLE CATEGORIES (
    IdCategorie VARCHAR2(8) PRIMARY KEY, 
    nom VARCHAR2(50), 
    Description varchar2(500)
);