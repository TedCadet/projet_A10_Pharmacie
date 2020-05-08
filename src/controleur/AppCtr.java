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
import entite.Medicament;
import entite.Ordonnancemedicaments;
import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;
import entite.Docteur;
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
            
            /* code test pour insérer une donnée "Médicament" dans le tableau
            Set<Ordonnancemedicaments> testOrdMed = new HashSet<>();
            Medicaments medTest = new Medicaments("02222222", new Categories((byte) 8), "Test", new BigDecimal(22), testOrdMed);
            DAO.delete(medTest);
            */
            //code pour insérer un enregistrement par table
            
            
            //code pour appeler les requêtes (static) du DAO
            
            
            Map<Docteur,Long> chirurgiesParDocteur = DocteurDAO.chirurgiesPrescritesParDocteur();
            afficherChirurgiesParDocteur(chirurgiesParDocteur);
            
            ConsultationDAO.getTotalConsultationsPerYear();
         
            ConsultationDAO.consultParDocteurs();
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