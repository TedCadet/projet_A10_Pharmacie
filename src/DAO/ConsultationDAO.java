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
import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Projections;

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
        
        // join avec docteur, donne lui l'alias d
        cr.createAlias("docteur", "d");
        
        /* instancie une projectionList pour recevoir les résultats du count
        *  groupé par le matricule, le nom et le prénom
        */
        ProjectionList pl = Projections.projectionList();
        pl.add(Projections.groupProperty("d.matricule"));
        pl.add(Projections.groupProperty("d.nomm"));
        pl.add(Projections.groupProperty("d.prenomm"));
        pl.add(Projections.rowCount());
        
        // rajoute la projection au criteria
        cr.setProjection(pl);
 
        // contient la liste des résultats
        List<Object[]> resultats = cr.list();
        
        // boucle qui affiche chacun des résultats
        for(Object[] element : resultats) {
            System.out.println("matricule: " + element[0] + " - nom: " + element[1] + " - prenom: " + element[2] + " - consultations: " + element[3]);
        }
        
        // ferme la session
        session.close();           
    }
}
