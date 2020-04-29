package entity;
// Generated 28-Apr-2020 9:49:00 PM by Hibernate Tools 4.3.1


import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * OrdonnancemedicamentsId generated by hbm2java
 */
@Embeddable
public class OrdonnancemedicamentsId  implements java.io.Serializable {


     private int numord;
     private String id;

    public OrdonnancemedicamentsId() {
    }

    public OrdonnancemedicamentsId(int numord, String id) {
       this.numord = numord;
       this.id = id;
    }
   


    @Column(name="NUMORD", nullable=false, precision=8, scale=0)
    public int getNumord() {
        return this.numord;
    }
    
    public void setNumord(int numord) {
        this.numord = numord;
    }


    @Column(name="ID", nullable=false, length=8)
    public String getId() {
        return this.id;
    }
    
    public void setId(String id) {
        this.id = id;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof OrdonnancemedicamentsId) ) return false;
		 OrdonnancemedicamentsId castOther = ( OrdonnancemedicamentsId ) other; 
         
		 return (this.getNumord()==castOther.getNumord())
 && ( (this.getId()==castOther.getId()) || ( this.getId()!=null && castOther.getId()!=null && this.getId().equals(castOther.getId()) ) );
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + this.getNumord();
         result = 37 * result + ( getId() == null ? 0 : this.getId().hashCode() );
         return result;
   }   


}


