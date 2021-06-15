
package Entidad;

public class Voto {
 
    int Par;
    int Can;
    int Vot;
    
    public Voto(){
    }
    
     public Voto(int Par, int Can, int Vot, int Cas) {
        this.Par = Par;
        this.Can = Can;
        this.Vot = Vot;
    }    

    public int getPar() {
        return Par;
    }

    public void setPar(int Par) {
        this.Par = Par;
    }
     
     public int getCan() {
        return Can;
    }

    public void setCan(int Can) {
        this.Can = Can;
    }

    public int getVot() {
        return Vot;
    }

    public void setVot(int Vot) {
        this.Vot = Vot;
    }
    
}
