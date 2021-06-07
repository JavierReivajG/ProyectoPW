
package Entidad;

public class Registro {

String Cas;
int Sec;
String Dist;
String Ent;

    public Registro() {
    }

 public Registro(String Cas, int Sec, String Dist, String Ent) {
        this.Cas = Cas;
        this.Sec = Sec;
        this.Dist = Dist;
        this.Ent = Ent;
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

    public String getDist() {
        return Dist;
    }

    public void setDist(String Dist) {
        this.Dist = Dist;
    }

    public String getEnt() {
        return Ent;
    }

    public void setEnt(String Ent) {
        this.Ent = Ent;
    }
    
}
