/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

import java.util.List;

/**
 *
 * @author M5A99X
 */
public class Utilitaire {
    /* méthode pour afficher le tableau de résultats. Fonctionne pour l'instant
    * seulement avec des tableaux avec 4 colonnes 
    * TODO: La rendre plus générique
    */
    public static void afficheTableau(List<Object[]> resultats, String[] enTete) {
        //  variable qui va contenir la longueur max de la 2e colonne  
        int maxLong1 = 0;
        
        //  variable qui va contenir la longueur max de la 3e colonne 
        int maxLong2 = 0;
        
        // String qui va afficher les éléments de l'en-tête 
        String et = "|";
        
        // boucle qui va trouver la longueur max des colonnes
        for(Object[] element : resultats) {
            if(maxLong1 < element[1].toString().length()) {
                maxLong1 = element[1].toString().length();
            }
            if(maxLong2 < element[2].toString().length()) {
                maxLong2 = element[2].toString().length();
            }
        }
        
        
        // boucle qui affiche chacun des résultats
        System.out.println("----------------------------------------------------------------------");
        // affiche l'en-tête. Rajoute chaque element du tableau "en-tête"
        for(String element : enTete) {
            et += "    " + element + "    |";
        }
        System.out.println(et);
        
        // affiche les éléments du tableau résultats
        System.out.println("----------------------------------------------------------------------");
        for(Object[] element : resultats) {
            // contient le nombre d'espace pour équilibrer la 2e colonne
            String espaces1 = creerEspace(maxLong1, element[1].toString().length());
            
            // contient le nombre d'espace pour équilibrer la 3e colonne
            String espaces2 = creerEspace(maxLong2, element[2].toString().length());
            
            // affiche l'élément
            System.out.println("|    " + element[0] + "    |    " + element[1] + espaces1 + "    |    " + element[2] + espaces2 + "    |    " + element[3] + "    |") ;
        }
        System.out.println("----------------------------------------------------------------------");    
    }
    
    /*
    * méthode qui retourne le nombre d'espace qu'il faut pour équilibrer la
    * longueur des colonnes du tableau à afficher. Prend en entrée la longueur
    * de la colonne et la longueur de l'élément présent. Rajoute le nombre 
    *d'espaces selon la différence entre les deux longueurs.
    */
    public static String creerEspace(int longueurMax, int longueurPresent) {
        String espaces = "";
        int diff = longueurMax - longueurPresent;
        
        for(int i=0; i< diff; i++) {
            espaces += " ";
        }
        
        return espaces;
    }
}
