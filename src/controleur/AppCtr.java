/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controleur;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import dao.Requetes;

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
        Session session = null;
        
        try{
            sessionFactory = HibernateUtil.getSessionFactory();
            session = sessionFactory.openSession();
            
            //code pour insérer un enregistrement par table
            
            //code pour appeler les requêtes (static) du DAO
         
        } catch(HibernateException e){
            System.out.println(e.toString());

        } finally{
            if(session != null){
                session.close();
            }
            if(sessionFactory != null){
                sessionFactory.close();
            }
        }
    }
}