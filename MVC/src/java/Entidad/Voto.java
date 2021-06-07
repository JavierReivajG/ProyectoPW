
package Entidad;

public class Voto {
 
    String Nomp;
    String Nomdf;
    String Nomdl;
    
    public Voto(){
    }
    
     public Voto(String Nomp, String Nomdf, String Nomdl) {
        this.Nomp = Nomp;
        this.Nomdf = Nomdf;
        this.Nomdl = Nomdl;
    }    

    public String getNomp() {
        return Nomp;
    }

    public void setNomp(String Nomp) {
        this.Nomp = Nomp;
    }

    public String getNomdf() {
        return Nomdf;
    }

    public void setNomdf(String Nomdf) {
        this.Nomdf = Nomdf;
    }

    public String getNomdl() {
        return Nomdl;
    }

    public void setNomdl(String Nomdl) {
        this.Nomdl = Nomdl;
    }
}
