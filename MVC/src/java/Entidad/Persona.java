
package Entidad;

public class Persona {

int ID;
String Nom;
int Votos;

    public Persona() {
    }    

    public Persona(int ID, String Nom, int Votos) {
        this.ID = ID;
        this.Nom = Nom;
        this.Votos = Votos;   
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getNom() {
        return Nom;
    }

    public void setNom(String Nom) {
        this.Nom = Nom;
    }

    public int getVotos() {
        return Votos;
    }

    public void setVotos(int Votos) {
        this.Votos = Votos;
    }
    
}
