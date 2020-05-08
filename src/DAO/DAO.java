/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import controleur.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author M5A99X
 */
public abstract class DAO {
    static Session session = null;
    
    // Méthode pour insérer une nouvelle entité
    public static <T>  void insert(T entite) {
        // ouvre la session
        session = HibernateUtil.getSessionFactory().openSession();
        
        // ouvre la transaction
        Transaction tx = session.beginTransaction();
        
        // sauvegarde le nouveau client
        session.save(entite);
        
        // commit les changements
        tx.commit();
        
        // freme la session
        session.close();
    }
    
    // Méthode pour supprimer une entité
    public static <T>  void delete(T entite) {
        // ouvre la session
        session = HibernateUtil.getSessionFactory().openSession();
        
        // ouvre la transaction
        Transaction tx = session.beginTransaction();
        
        // supprime entite
        session.delete(entite);
        
        // commit les changements
        tx.commit();
        
        // freme la session
        session.close();
    }
    
    // Méthode pour mettre a jour une entité
    public static <T>  void update(T entite) {
        // ouvre la session
        session = HibernateUtil.getSessionFactory().openSession();
        
        // ouvre la transaction
        Transaction tx = session.beginTransaction();
        
        // mets a jour entite
        session.update(entite);
        
        // commit les changements
        tx.commit();
        
        // freme la session
        session.close();
    }
}
