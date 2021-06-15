
package Entidad;

public class Registro {

int Id;
String Cas;
int Sec;

    public Registro() {
    }

 public Registro(int Id,String Cas, int Sec) {
     this.Id = Id;
     this.Cas = Cas;
     this.Sec = Sec;
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

 
    
}
