package dao;

import entity.*;

/**
 * Interface pour l'accès aux données de la BDD. Sera utilisé pour toutes
 * les tables de la BDD.
 * 
 * @author Dominic Tardif 1995622
 */
public interface DAOInterface<T,T1> {
    
    //Méthode d'insertion de données
    public abstract void insert(T obj);
    
    //Méthode de mise à jour des données
    public abstract void update(T obj, T1 att);
    
    //Méthode de suppression de données
    public abstract void delete(T obj);
}
