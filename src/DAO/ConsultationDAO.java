/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import controleur.HibernateUtil;
import entite.Consultation;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;

/**
 *
 * @author M5A99X
 */
public class ConsultationDAO extends DAO {
    
    // Méthode pour afficher le nombre de consultations par docteur
    public static void consultParDocteurs() {
        // ouvre la session
        session = HibernateUtil.getSessionFactory().openSession();
        
        // crée le critère avec la table Consultation comme base
        Criteria cr = session.createCriteria(Consultation.class);
        
        // crée la requête qui va chercher le nombre de consultations par docteur
        // avec un group by sur docteur.matricule, docteur.nomm, docteur.nomm
        Query query = session.createQuery("SELECT docteur.matricule, docteur.nomm, docteur.prenomm, count(DISTINCT c.docteur) "
                        + "FROM Consultation c join c.docteur docteur "
                        + "GROUP BY docteur.matricule, docteur.nomm, docteur.prenomm");
        
        
        
        // contient la liste des résultats
        List<Object[]> resultats = query.list();
        
        // boucle qui affiche chacun des résultats
        for(Object[] element : resultats) {
            System.out.println("matricule: " + element[0] + " - nom: " + element[1] + " - prenom: " + element[2] + " - consultations: " + element[3]);
        }
        
        // ferme la session
        session.close();           
    }
}
