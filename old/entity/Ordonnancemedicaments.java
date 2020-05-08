package entity;
// Generated 28-Apr-2020 9:49:00 PM by Hibernate Tools 4.3.1


import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * Ordonnancemedicaments generated by hbm2java
 */
@Entity
@Table(name="ORDONNANCEMEDICAMENTS"
    ,schema="A18PROJET3"
)
public class Ordonnancemedicaments  implements java.io.Serializable {


     private OrdonnancemedicamentsId id;
     private Medicaments medicaments;
     private Ordonnance ordonnance;
     private Short nbboites;

    public Ordonnancemedicaments() {
    }

	
    public Ordonnancemedicaments(OrdonnancemedicamentsId id, Medicaments medicaments, Ordonnance ordonnance) {
        this.id = id;
        this.medicaments = medicaments;
        this.ordonnance = ordonnance;
    }
    public Ordonnancemedicaments(OrdonnancemedicamentsId id, Medicaments medicaments, Ordonnance ordonnance, Short nbboites) {
       this.id = id;
       this.medicaments = medicaments;
       this.ordonnance = ordonnance;
       this.nbboites = nbboites;
    }
   
     @EmbeddedId

    
    @AttributeOverrides( {
        @AttributeOverride(name="numord", column=@Column(name="NUMORD", nullable=false, precision=8, scale=0) ), 
        @AttributeOverride(name="id", column=@Column(name="ID", nullable=false, length=8) ) } )
    public OrdonnancemedicamentsId getId() {
        return this.id;
    }
    
    public void setId(OrdonnancemedicamentsId id) {
        this.id = id;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="ID", nullable=false, insertable=false, updatable=false)
    public Medicaments getMedicaments() {
        return this.medicaments;
    }
    
    public void setMedicaments(Medicaments medicaments) {
        this.medicaments = medicaments;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="NUMORD", nullable=false, insertable=false, updatable=false)
    public Ordonnance getOrdonnance() {
        return this.ordonnance;
    }
    
    public void setOrdonnance(Ordonnance ordonnance) {
        this.ordonnance = ordonnance;
    }

    
    @Column(name="NBBOITES", precision=3, scale=0)
    public Short getNbboites() {
        return this.nbboites;
    }
    
    public void setNbboites(Short nbboites) {
        this.nbboites = nbboites;
    }




}

