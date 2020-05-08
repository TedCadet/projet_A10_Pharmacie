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


INSERT INTO ordonnancemedicaments (numOrd, idMed, nbBoites)
VALUES (50690480,'02380617',1);
INSERT INTO ordonnancemedicaments (numOrd, idMed, nbBoites)
VALUES (50000345,'00596612',1);
INSERT INTO ordonnancemedicaments (numOrd, idMed, nbBoites)
VALUES (50032780,'02230897',1);
INSERT INTO ordonnancemedicaments (numOrd, idMed, nbBoites)
VALUES (50297401,'00556734',2);
INSERT INTO ordonnancemedicaments (numOrd, idMed, nbBoites)
VALUES (50002504,'00878200',1);


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
VALUES(1325969751,'Proulx','Michel','M','PROM24062501',TO_DATE('24-06-1925','DD-MM-YYYY'),TO_DATE('05-03-2020','DD-MM-YYYY'),59630145);
INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(1635249856,'Bédard','Laurent','M','BEDL27097501',TO_DATE('27-09-1975','DD-MM-YYYY'),TO_DATE('15-03-2020','DD-MM-YYYY'),16482375);
INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(1965784256,'Blais','Sophia','F','BLAS09071601',TO_DATE('09-07-2016','DD-MM-YYYY'),TO_DATE('25-03-2020','DD-MM-YYYY'),60314967);
INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(2046589631,'Couture','Damien','M','COUD29010101',TO_DATE('29-01-2001','DD-MM-YYYY'),TO_DATE('18-02-2020','DD-MM-YYYY'),34695210);
INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(2415963788,'Cyr','Yvette','F','CYRY20046901',TO_DATE('20-04-1969','DD-MM-YYYY'),TO_DATE('28-02-2020','DD-MM-YYYY'),86419562);
INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(2679854130,'Dion','Myriam','F','DIOM26129901',TO_DATE('26-12-1999','DD-MM-YYYY'),TO_DATE('14-01-2020','DD-MM-YYYY'),54723810);
INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(3652154789,'Mercier','Romuald','M','MERR28025301',TO_DATE('28-02-1953','DD-MM-YYYY'),TO_DATE('25-01-2020','DD-MM-YYYY'),73269421);
INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(3125698541,'Bolduc','Alain','M','BOLA17073601',TO_DATE('17-07-1936','DD-MM-YYYY'),TO_DATE('22-01-2020','DD-MM-YYYY'),59630145);
INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(3025690185,'Fortier','Marie-Anne','F','FORM22108301',TO_DATE('22-10-1983','DD-MM-YYYY'),TO_DATE('30-01-2020','DD-MM-YYYY'),29671548);
INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(4201569389,'Hamel','Claude','M','HAMC16040801',TO_DATE('16-04-2008','DD-MM-YYYY'),TO_DATE('08-04-2020','DD-MM-YYYY'),94526387);
INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(4632589610,'Germain','Sabrina','F','GERS08108801',TO_DATE('08-10-1988','DD-MM-YYYY'),TO_DATE('18-04-2020','DD-MM-YYYY'),42103690);
INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(4698521307,'Lemay','Nicolas','M','LEMN05067401',TO_DATE('05-06-1974','DD-MM-YYYY'),TO_DATE('13-04-2020','DD-MM-YYYY'),16482375);
INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(5132964520,'Villeneuve','Sophie','F','VILS18129001',TO_DATE('18-12-1990','DD-MM-YYYY'),TO_DATE('09-02-2020','DD-MM-YYYY'),86419562);
INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(5426978162,'Larouche','Claudette','F','LARC21120401',TO_DATE('21-12-2004','DD-MM-YYYY'),TO_DATE('01-04-2020','DD-MM-YYYY'),54723810);
INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(6130254987,'Moreau','Jacques','M','MORJ30084501',TO_DATE('30-08-1945','DD-MM-YYYY'),TO_DATE('10-02-2020','DD-MM-YYYY'),73269421);
INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(6485936980,'Bertrand','Martine','F','BERM24115501',TO_DATE('24-11-1955','DD-MM-YYYY'),TO_DATE('07-03-2020','DD-MM-YYYY'),34695210);
INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(7215489645,'Lacroix','Marjolaine','F','LACM13099601',TO_DATE('13-09-1996','DD-MM-YYYY'),TO_DATE('14-02-2020','DD-MM-YYYY'),29671548);
INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(7398754610,'Gélinas','Martin','M','GELM01077901',TO_DATE('01-07-1979','DD-MM-YYYY'),TO_DATE('22-01-2020','DD-MM-YYYY'),60314967);
INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(8462597568,'Pépin','Amélie','F','PEPA26048601',TO_DATE('26-04-1986','DD-MM-YYYY'),TO_DATE('24-04-2020','DD-MM-YYYY'),42103690);
INSERT INTO dossierpatient (numDos, nomP, prenomP, genre, numAS, dateNaiss, dateC, matricule)
VALUES(8634512059,'Giguère','Rodrigue','M','GIGR15106801',TO_DATE('15-10-1968','DD-MM-YYYY'),TO_DATE('03-05-2020','DD-MM-YYYY'),94526387);


INSERT INTO consultation (CodeDocteur, numDos, dateC, diagnostic, numOrd)
VALUES(59630145,3125698541,TO_DATE('23-01-2020','DD-MM-YYYY'),'',50000345);
INSERT INTO consultation (CodeDocteur, numDos, dateC, diagnostic, numOrd)
VALUES(94526387,8634512059,TO_DATE('26-01-2020','DD-MM-YYYY'),'',10075182);
INSERT INTO consultation (CodeDocteur, numDos, dateC, diagnostic, numOrd)
VALUES(86419562,5132964520,TO_DATE('08-01-2020','DD-MM-YYYY'),'',50032780);
INSERT INTO consultation (CodeDocteur, numDos, dateC, diagnostic, numOrd)
VALUES(42103690,4632589610,TO_DATE('15-02-2020','DD-MM-YYYY'),'',10961257);
INSERT INTO consultation (CodeDocteur, numDos, dateC, diagnostic, numOrd)
VALUES(59630145,1325969751,TO_DATE('20-03-2020','DD-MM-YYYY'),'',50690480);
INSERT INTO consultation (CodeDocteur, numDos, dateC, diagnostic, numOrd)
VALUES(34695210,6485936980,TO_DATE('23-04-2020','DD-MM-YYYY'),'',10358961);
INSERT INTO consultation (CodeDocteur, numDos, dateC, diagnostic, numOrd)
VALUES(86419562,2415963788,TO_DATE('09-03-2020','DD-MM-YYYY'),'',10004895);
INSERT INTO consultation (CodeDocteur, numDos, dateC, diagnostic, numOrd)
VALUES(29671548,7215489645,TO_DATE('16-02-2020','DD-MM-YYYY'),'',50002504);
INSERT INTO consultation (CodeDocteur, numDos, dateC, diagnostic, numOrd)
VALUES(73269421,6130254987,TO_DATE('04-12-2020','DD-MM-YYYY'),'',50297401);
INSERT INTO consultation (CodeDocteur, numDos, dateC, diagnostic, numOrd)
VALUES(34695210,2046589631,TO_DATE('03-03-2020','DD-MM-YYYY'),'',10125746);
INSERT INTO consultation (CodeDocteur, numDos, dateC, diagnostic, numOrd)

VALUES(34695210,2046589631,TO_DATE('18-03-2020','DD-MM-YYYY'),'',10125746);
INSERT INTO consultation (CodeDocteur, numDos, dateC, diagnostic, numOrd)
VALUES(42103690,4632589610,TO_DATE('01-03-2020','DD-MM-YYYY'),'',10961257);
INSERT INTO consultation (CodeDocteur, numDos, dateC, diagnostic, numOrd)
VALUES(34695210,6485936980,TO_DATE('28-04-2020','DD-MM-YYYY'),'',10358961);
INSERT INTO consultation (CodeDocteur, numDos, dateC, diagnostic, numOrd)
VALUES(34695210,6485936980,TO_DATE('07-05-2020','DD-MM-YYYY'),'',10358961);
INSERT INTO consultation (CodeDocteur, numDos, dateC, diagnostic, numOrd)
VALUES(94526387,8634512059,TO_DATE('26-02-2020','DD-MM-YYYY'),'',10075182);