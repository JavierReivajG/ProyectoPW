
package Entidad;

public class Registro {

int Id;
String Cas;
int Sec;

int Par;
int Can;
int Vot;

    public Registro() {
    }

 public Registro(int Id,String Cas, int Sec, int Par, int Can, int Vot) {
     this.Id = Id;
     this.Cas = Cas;
     this.Sec = Sec;
     this.Par = Par;
     this.Can = Can;
     this.Vot = Vot;
     
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getCas() {
        return Cas;
    }

    public void setCas(String Cas) {
        this.Cas = Cas;
    }

    public int getSec() {
        return Sec;
    }

    public void setSec(int Sec) {
        this.Sec = Sec;
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
