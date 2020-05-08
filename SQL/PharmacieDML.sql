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
VALUES(10125746,'','chirurgie',TO_DATE('04-03-2020','DD-MM-YYYY'));
INSERT INTO ordonnance (numOrd, recommandations, typeO, dateC)
VALUES(10358961,'','chirurgie',TO_DATE('24-04-2020','DD-MM-YYYY'));
INSERT INTO ordonnance (numOrd, recommandations, typeO, dateC)
VALUES(10961257,'','chirurgie',TO_DATE('15-02-2020','DD-MM-YYYY'));
INSERT INTO ordonnance (numOrd, recommandations, typeO, dateC)
VALUES(10075182,'','chirurgie',TO_DATE('27-01-2020','DD-MM-YYYY'));
INSERT INTO ordonnance (numOrd, recommandations, typeO, dateC)
VALUES(10004895,'','chirurgie',TO_DATE('11-03-2020','DD-MM-YYYY'));
INSERT INTO ordonnance (numOrd, recommandations, typeO, dateC)
VALUES(50297401,'','medicaments',TO_DATE('04-12-2020','DD-MM-YYYY'));
INSERT INTO ordonnance (numOrd, recommandations, typeO, dateC)
VALUES(50690480,'','medicaments',TO_DATE('20-03-2020','DD-MM-YYYY'));
INSERT INTO ordonnance (numOrd, recommandations, typeO, dateC)
VALUES(50032780,'','medicaments',TO_DATE('08-01-2020','DD-MM-YYYY'));
INSERT INTO ordonnance (numOrd, recommandations, typeO, dateC)
VALUES(50002504,'','medicaments',TO_DATE('16-02-2020','DD-MM-YYYY'));
INSERT INTO ordonnance (numOrd, recommandations, typeO, dateC)
VALUES(50000345,'','medicaments',TO_DATE('23-01-2020','DD-MM-YYYY'));


INSERT INTO ordonnancechirurgie (numOrd, rang, nomChirurgie)
VALUES(10961257,1,'');
INSERT INTO ordonnancechirurgie (numOrd, rang, nomChirurgie)
VALUES(10125746,1,'');
INSERT INTO ordonnancechirurgie (numOrd, rang, nomChirurgie)
VALUES(10075182,1,'');
INSERT INTO ordonnancechirurgie (numOrd, rang, nomChirurgie)
VALUES(10358961,1,'');
INSERT INTO ordonnancechirurgie (numOrd, rang, nomChirurgie)
VALUES(10961257,2,'');
INSERT INTO ordonnancechirurgie (numOrd, rang, nomChirurgie)
VALUES(10358961,2,'');
INSERT INTO ordonnancechirurgie (numOrd, rang, nomChirurgie)
VALUES(10125746,2,'');
INSERT INTO ordonnancechirurgie (numOrd, rang, nomChirurgie)
VALUES(10004895,1,'');
INSERT INTO ordonnancechirurgie (numOrd, rang, nomChirurgie)
VALUES(10358961,3,'');
INSERT INTO ordonnancechirurgie (numOrd, rang, nomChirurgie)
VALUES(10075182,2,'');


INSERT INTO ordonnancemedicaments (numOrd, id, nbBoites)
VALUES (50690480,02380617,1);
INSERT INTO ordonnancemedicaments (numOrd, id, nbBoites)
VALUES (50000345,00596612,1);
INSERT INTO ordonnancemedicaments (numOrd, id, nbBoites)
VALUES (50032780,02230897,1);
INSERT INTO ordonnancemedicaments (numOrd, id, nbBoites)
VALUES (50297401,00556734,2);
INSERT INTO ordonnancemedicaments (numOrd, id, nbBoites)
VALUES (50002504,00878200,1);


INSERT INTO docteur (matricule, nomM, prenomM, specialite, ville, adresse, niveau, nbrPatients)
VALUES(16482375,'Roy','William',15,'Montréal','1298 Rue Doherty','Docteur',25);
INSERT INTO docteur (matricule, nomM, prenomM, specialite, ville, adresse, niveau, nbrPatients)
VALUES(29671548,'Pelletier','Thomas',23,'Granby','662 Rue Principale','Docteur',25);
INSERT INTO docteur (matricule, nomM, prenomM, specialite, ville, adresse, niveau, nbrPatients)
VALUES(34695210,'Bergeron','Nathan',37,'Montréal','3592 Rue Henri-Julien','Étudiant',5);
INSERT INTO docteur (matricule, nomM, prenomM, specialite, ville, adresse, niveau, nbrPatients)
VALUES(42103690,'Caron','Gabriel',51,'Laval','288 Rue des Peupliers','Interne',15);
INSERT INTO docteur (matricule, nomM, prenomM, specialite, ville, adresse, niveau, nbrPatients)
VALUES(54723810,'Fortier','Samuel',44,'Sherbrooke','933 Rue Dawson','Docteur',25);
INSERT INTO docteur (matricule, nomM, prenomM, specialite, ville, adresse, niveau, nbrPatients)
VALUES(60314967,'Nadeau','Alice',09,'Québec','774 Avenue Léger','Interne',15);
INSERT INTO docteur (matricule, nomM, prenomM, specialite, ville, adresse, niveau, nbrPatients)
VALUES(59630145,'Lachance','Chloé',19,'Montréal','2244 Boulevard Lacordère','Docteur',25);
INSERT INTO docteur (matricule, nomM, prenomM, specialite, ville, adresse, niveau, nbrPatients)
VALUES(73269421,'Poulin','Julie',28,'Chicoutimi','159 Rue Chicoine','Étudiant',5);
INSERT INTO docteur (matricule, nomM, prenomM, specialite, ville, adresse, niveau, nbrPatients)
VALUES(86419562,'Turcotte','Camille',31,'Montréal','4398 Rue Watts','Interne',15);
INSERT INTO docteur (matricule, nomM, prenomM, specialite, ville, adresse, niveau, nbrPatients)
VALUES(94526387,'Gravel','Laurence',48,'Laval','500 Avenue Landry','Docteur',25);


INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(,'','Michel','M','24062501',TO_DATE('24-06-1925','DD-MM-YYYY'),TO_DATE('05-03-2020','DD-MM-YYYY'),59630145); --(VAR(16), VAR(30), VAR(30), ('M', 'F'), VAR(12), DATE, DATE, VAR(8))
INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(,'','Laurent','M','27097501',TO_DATE('27-09-1975','DD-MM-YYYY'),TO_DATE('15-03-2020','DD-MM-YYYY'),16482375); --(VAR(16), VAR(30), VAR(30), ('M', 'F'), VAR(12), DATE, DATE, VAR(8))
INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(,'','Sophia','F','09071601',TO_DATE('09-07-2016','DD-MM-YYYY'),TO_DATE('25-03-2020','DD-MM-YYYY'),60314967); --(VAR(16), VAR(30), VAR(30), ('M', 'F'), VAR(12), DATE, DATE, VAR(8))
INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(,'','Damien','M','29010101',TO_DATE('29-01-2001','DD-MM-YYYY'),TO_DATE('18-02-2020','DD-MM-YYYY'),34695210); --(VAR(16), VAR(30), VAR(30), ('M', 'F'), VAR(12), DATE, DATE, VAR(8))
INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(,'','Yvette','F','20046901',TO_DATE('20-04-1969','DD-MM-YYYY'),TO_DATE('28-02-2020','DD-MM-YYYY'),86419562); --(VAR(16), VAR(30), VAR(30), ('M', 'F'), VAR(12), DATE, DATE, VAR(8))
INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(,'','Myriam','F','26129901',TO_DATE('26-12-1999','DD-MM-YYYY'),TO_DATE('14-01-2020','DD-MM-YYYY'),54723810); --(VAR(16), VAR(30), VAR(30), ('M', 'F'), VAR(12), DATE, DATE, VAR(8))
INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(,'','Romuald','M','28025301',TO_DATE('28-02-1953','DD-MM-YYYY'),TO_DATE('25-01-2020','DD-MM-YYYY'),73269421); --(VAR(16), VAR(30), VAR(30), ('M', 'F'), VAR(12), DATE, DATE, VAR(8))
INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(,'','Alain','M','17073601',TO_DATE('17-07-1936','DD-MM-YYYY'),TO_DATE('22-01-2020','DD-MM-YYYY'),59630145); --(VAR(16), VAR(30), VAR(30), ('M', 'F'), VAR(12), DATE, DATE, VAR(8))
INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(,'','Marie-Anne','F','22108301',TO_DATE('22-10-1983','DD-MM-YYYY'),TO_DATE('30-01-2020','DD-MM-YYYY'),29671548); --(VAR(16), VAR(30), VAR(30), ('M', 'F'), VAR(12), DATE, DATE, VAR(8))
INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(,'','Claude','M','16040801',TO_DATE('16-04-2008','DD-MM-YYYY'),TO_DATE('08-04-2020','DD-MM-YYYY'),94526387); --(VAR(16), VAR(30), VAR(30), ('M', 'F'), VAR(12), DATE, DATE, VAR(8))
INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(,'','Sabrina','F','08108801',TO_DATE('08-10-1988','DD-MM-YYYY'),TO_DATE('18-04-2020','DD-MM-YYYY'),42103690); --(VAR(16), VAR(30), VAR(30), ('M', 'F'), VAR(12), DATE, DATE, VAR(8))
INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(,'','Nicolas','M','05067401',TO_DATE('05-06-1974','DD-MM-YYYY'),TO_DATE('13-04-2020','DD-MM-YYYY'),16482375); --(VAR(16), VAR(30), VAR(30), ('M', 'F'), VAR(12), DATE, DATE, VAR(8))
INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(,'','Sophie','F','18129001',TO_DATE('18-12-1990','DD-MM-YYYY'),TO_DATE('09-02-2020','DD-MM-YYYY'),86419562); --(VAR(16), VAR(30), VAR(30), ('M', 'F'), VAR(12), DATE, DATE, VAR(8))
INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(,'','Claudette','F','21120401',TO_DATE('21-12-2004','DD-MM-YYYY'),TO_DATE('01-04-2020','DD-MM-YYYY'),54723810); --(VAR(16), VAR(30), VAR(30), ('M', 'F'), VAR(12), DATE, DATE, VAR(8))
INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(,'','Jacques','M','30084501',TO_DATE('30-08-1945','DD-MM-YYYY'),TO_DATE('10-02-2020','DD-MM-YYYY'),73269421); --(VAR(16), VAR(30), VAR(30), ('M', 'F'), VAR(12), DATE, DATE, VAR(8))
INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(,'','Martine','F','24115501',TO_DATE('24-11-1955','DD-MM-YYYY'),TO_DATE('07-03-2020','DD-MM-YYYY'),34695210); --(VAR(16), VAR(30), VAR(30), ('M', 'F'), VAR(12), DATE, DATE, VAR(8))
INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(,'','Marjolaine','F','13099601',TO_DATE('13-09-1996','DD-MM-YYYY'),TO_DATE('14-02-2020','DD-MM-YYYY'),29671548); --(VAR(16), VAR(30), VAR(30), ('M', 'F'), VAR(12), DATE, DATE, VAR(8))
INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(,'','Martin','M','01077901',TO_DATE('01-07-1979','DD-MM-YYYY'),TO_DATE('22-01-2020','DD-MM-YYYY'),60314967); --(VAR(16), VAR(30), VAR(30), ('M', 'F'), VAR(12), DATE, DATE, VAR(8))
INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(,'','Amélie','F','26048601',TO_DATE('26-04-1986','DD-MM-YYYY'),TO_DATE('24-04-2020','DD-MM-YYYY'),42103690); --(VAR(16), VAR(30), VAR(30), ('M', 'F'), VAR(12), DATE, DATE, VAR(8))
INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(,'','Rodrigue','M','15106801',TO_DATE('15-10-1968','DD-MM-YYYY'),TO_DATE('03-05-2020','DD-MM-YYYY'),94526387); --(VAR(16), VAR(30), VAR(30), ('M', 'F'), VAR(12), DATE, DATE, VAR(8))


INSERT INTO consultation (CodeDocteur, numDos, dateC, diagnostic, numOrd)
VALUES(,,TO_DATE('','DD-MM-YYYY'),'',);   --(VAR(8), VAR(16), DATE, VAR(255), NUM(8))
