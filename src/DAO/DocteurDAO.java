/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import controleur.HibernateUtil;
import java.util.List;
import entite.Docteur;
import org.hibernate.Query;
/**
 *
 * @author M5A99X
 */
public class DocteurDAO extends DAO {
  
    
    /*
    select docteur.matricule, docteur.nomm, count(consultation.numord)
    from docteur join consultation on docteur.matricule = consultation.codedocteur
    join ordonnance on consultation.numord = ordonnance.numord
    where ordonnance.typeo = 'chirurgie'
    group by docteur.matricule, docteur.nomm;
    */
    public static void chirurgiesPrescritesParDocteur() {
        
        session = HibernateUtil.getSessionFactory().openSession();
        
        String hql = "select doc.name, count(con.numord) " +
                     "from Docteur doc " +
                     "join d.consultations as con " +
                     "join co.ordonnance as ord " +
                     "with ord.numord = 'chirurgie'";
                     
                
                
        Query query = session.createQuery(hql);
        List results = query.list();
        
        session.close();
        
    }
}
