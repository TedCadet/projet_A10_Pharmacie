package entity;
// Generated 28-Apr-2020 9:49:00 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Categories generated by hbm2java
 */
@Entity
@Table(name="CATEGORIES"
    ,schema="A18PROJET3"
)
public class Categories  implements java.io.Serializable {


     private byte id;
     private String nom;
     private String description;
     private Set<Medicaments> medicamentses = new HashSet<Medicaments>(0);

    public Categories() {
    }

	
    public Categories(byte id) {
        this.id = id;
    }
    public Categories(byte id, String nom, String description, Set<Medicaments> medicamentses) {
       this.id = id;
       this.nom = nom;
       this.description = description;
       this.medicamentses = medicamentses;
    }
   
     @Id 

    
    @Column(name="ID", unique=true, nullable=false, precision=2, scale=0)
    public byte getId() {
        return this.id;
    }
    
    public void setId(byte id) {
        this.id = id;
    }

    
    @Column(name="NOM", length=100)
    public String getNom() {
        return this.nom;
    }
    
    public void setNom(String nom) {
        this.nom = nom;
    }

    
    @Column(name="DESCRIPTION", length=500)
    public String getDescription() {
        return this.description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="categories")
    public Set<Medicaments> getMedicamentses() {
        return this.medicamentses;
    }
    
    public void setMedicamentses(Set<Medicaments> medicamentses) {
        this.medicamentses = medicamentses;
    }




}


