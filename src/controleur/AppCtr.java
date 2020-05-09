/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controleur;

import DAO.ConsultationDAO;
import DAO.DAO;
import DAO.DocteurDAO;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import entite.Categories;
import entite.Consultation;
import entite.ConsultationId;
import entite.Medicament;
import entite.Ordonnancemedicaments;
import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;
import entite.Docteur;
import entite.Dossierpatient;
import entite.Ordonnance;
import entite.Ordonnancechirurgie;
import entite.OrdonnancechirurgieId;
import entite.Ordonnancemedicaments;
import entite.OrdonnancemedicamentsId;
import entite.Specialite;
import java.util.Date;
import java.util.Map;

/**
 *
 * @author M5A99X
 */
public class AppCtr {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        SessionFactory sessionFactory = null;
        
        try{
            sessionFactory = HibernateUtil.getSessionFactory();
            
            //code pour insérer un enregistrement par table
            //une donnée "Médicament" dans le tableau
            Medicament medTest = new Medicament("02222222", new Categories((byte) 8, "catTest"), "Test", new BigDecimal(22), null);
            
            // une donnée "Categorie" dans le tableau
            Categories catTest = new Categories((byte) 2, "catTest", "test d'insertion", null); 
            
            //code test pour insérer une donnée "Ordonnance" dans le tableau 
            Ordonnance ord1Test = new Ordonnance(10352222, null, "chirurgie", new Date(), null, null, null);
 
            Ordonnance ord2Test = new Ordonnance(10222299, null, "medicaments", new Date(), null, null, null);

            //code test pour insérer une donnée "Specialite" dans le tableau
            Specialite specTest = new Specialite((byte) 22, "titreTest", "descriptionTest", null);
            
            //code test pour insérer une donnée "Consultation" 
            Consultation conTest = new Consultation(new ConsultationId(29672222, (long) 22, new Date()), null, null, null, "DiagnoticsTest");

            //code test pour insérer une donnée "Docteur" dans le tableau
            Docteur docTest = new Docteur(29672222, null, "nomTest", "prenomTest", "villeTest", "adresseTest", "Interne", (short) 22, null, null);

            //code test pour insérer une donnée "Dossierpatient" dans le tableau
            Dossierpatient dosPatTest = new Dossierpatient((long) 22, null, "nomTest", "prenomTest", 'M', "TEST2222", null, null, null);

            //code test pour insérer une donnée "Ordonnancechirurgie" dans le tableau ** fonctionne pas
            Ordonnancechirurgie ordChiTest = new Ordonnancechirurgie(new OrdonnancechirurgieId(10352222, (short) 2), null, "cirurgieTest");

            //code test pour insérer une donnée "Ordonnancemedicaments" dans le tableau ** fonctionne pas
            Ordonnancemedicaments ordMedTest = new Ordonnancemedicaments(new OrdonnancemedicamentsId(10352299, "02222222"), null, null, (short) 22);     
            
            // delete
//            DAO.delete(dosPatTest);
//            DAO.delete(docTest);
//            DAO.delete(ordChiTest);
//            DAO.delete(ordMedTest);
//            DAO.delete(medTest);
//            DAO.delete(ord1Test);
//            DAO.delete(ord2Test);
//            DAO.delete(specTest);
//            DAO.delete(catTest);
//            DAO.delete(conTest);
   
            // insertion
            DAO.insert(catTest);
            DAO.insert(specTest);
            DAO.insert(ord2Test);
            DAO.insert(ord1Test);
            DAO.insert(medTest);
            DAO.insert(ordMedTest);
            DAO.insert(ordChiTest);
            DAO.insert(docTest);
            DAO.insert(dosPatTest);
            DAO.insert(conTest);

            
            //code pour appeler les requêtes (static) du DAO
            Map<Docteur,Long> chirurgiesParDocteur = DocteurDAO.chirurgiesPrescritesParDocteur();
            afficherChirurgiesParDocteur(chirurgiesParDocteur);
            
            //Requête #2
            System.out.println("+++++++++++++++++++++++++++++++++++++++++");
            System.out.println("Nombre de consultations par docteur:");
            ConsultationDAO.consultParDocteurs();
            
            //Requête #3
            System.out.println("+++++++++++++++++++++++++++++++++++++++++");
            System.out.println("Nombre de consultations par année:");
            ConsultationDAO.getTotalConsultationsPerYear();
            
        } catch(HibernateException e){
            System.out.println(e.toString());

        } finally{
            if(sessionFactory != null){
                sessionFactory.close();
            }
        }
    }
    
    private static void afficherChirurgiesParDocteur(Map<Docteur,Long> cpd) {
        System.out.printf("Nombre des chirurgies par Docteur%n");
        System.out.printf("%-15s%-15s%-15s%5s%n",
                "Matricule", "Nom", "Prénom", "N. Chirurgies");
        for (Docteur doc : cpd.keySet()) {
            System.out.printf("%-15s%-15s%-15s%-5s%n",
                doc.getMatricule(),
                doc.getNomm(),
                doc.getPrenomm(),
                cpd.get(doc));
        }
    }
}