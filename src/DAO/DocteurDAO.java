package DAO;

import controleur.HibernateUtil;
import java.util.List;
import entite.Docteur;
import java.util.HashMap;
import java.util.Map;
import org.hibernate.Query;

public class DocteurDAO extends DAO {
  
    /* Obtenir le nombre de chirurgies par docteur */
    public static Map<Docteur,Long> chirurgiesPrescritesParDocteur() {
        
        session = HibernateUtil.getSessionFactory().openSession();
        
        String hql = "select doc.matricule, doc.nomm, doc.prenomm, count(con.ordonnance) " +
                     "from Docteur doc " +
                     "join doc.consultations as con " +
                     "join con.ordonnance as ord " +
                     "with ord.typeo = 'chirurgie'" + 
                     "group by doc.matricule, doc.nomm, doc.prenomm";
                             
        Query query = session.createQuery(hql);
        List<Object[]> resultSet = query.list();
        
        Map<Docteur,Long> result = new HashMap<>();
        
        for (Object[] obj : resultSet) {
            Docteur doc = new Docteur((int)obj[0], (String)obj[1], (String)obj[2]);
            Long nChirurgies = (Long)obj[3];
            result.put(doc, nChirurgies);          
        }
  
        session.close();
        return result;
    }
}
