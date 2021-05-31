
package Entidad;

public class Persona {

int Cod;
String Nom;
String Domi;

    public Persona() {
    }    

    public Persona(int Cod, String Nom, String Domi) {
        this.Cod = Cod;
        this.Nom = Nom;
        this.Domi = Domi;   
    }

    public int getCod() {
        return Cod;
    }

    public void setCod(int Cod) {
        this.Cod = Cod;
    }

    public String getNom() {
        return Nom;
    }

    public void setNom(String Nom) {
        this.Nom = Nom;
    }

    public String getDomi() {
        return Domi;
    }

    public void setDomi(String Domi) {
        this.Domi = Domi;
    }
    
}
