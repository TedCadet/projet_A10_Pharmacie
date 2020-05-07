--Suppression de toutes les tables
DELETE consultation;
DELETE dossierpatient;
DELETE docteur;
DELETE ordonnancechirurgie;
DELETE ordonnancemedicaments;
DELETE ordonnance;
--DELETE specialite;
--DELETE medicament;
--DELETE categories;

--INSERT INTO categories
--INSERT INTO medicaments
--INSERT INTO specialite

--Insertion de données dans toutes les tables
INSERT INTO ordonnance (numOrd, recommandations, typeO, dateC)
VALUES(); --(NUM(8),VAR(50),('chirurgie', 'medicaments'),DATE)


INSERT INTO ordonnancechirurgie (numOrd, rang, nomChirurgie)
VALUES();   --(NUM(8), NUM(3), VAR(50))


INSERT INTO ordonnancemedicaments (numOrd, id, nbBoites)
VALUES ();  --(NUM(8), CHAR(8), NUM(3))


INSERT INTO docteur (matricule, nomM, prenomM, specialite, ville, adresse, niveau, nbrPatients)
VALUES(); --(VAR(8), VAR(20), VAR(20), NUM(2), VAR(20), VAR(50), ('Étudiant', 'Interne', 'Docteur'), NUM(3))


INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(); --(VAR(16), VAR(30), VAR(30), ('M', 'F'), VAR(12), DATE, DATE, VAR(8))


INSERT INTO consultation (CodeDocteur, numDos, dateC, diagnostic, numOrd)
VALUES();   --(VAR(8), VAR(16), DATE, VAR(255), NUM(8))
