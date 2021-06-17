
package Entidad;

public class Usuario {
 
    String Nom;
    String Ape;
    String Email = "root";
    String Pass = "3366";
    String Tel;
    String Red;
    
    String Mun;
    String Calle;
    String Num;
    String Col;
    String Cp;

 public Usuario(){
 }
 
 public Usuario(String Nom, String Ape, String Email, String Pass, String Tel,
         String Red, String Mun, String Calle, String Num, String Col, String Cp){
     
    this.Nom = Nom;
    this.Ape = Ape;
    this.Email = Email;
    this.Pass = Pass;
    this.Tel = Tel;
    this.Red = Red;
    
    this.Mun = Mun;
    this.Calle = Calle;
    this.Num = Num;
    this.Col = Col;
    this.Cp = Cp;
 }

    public String getNom() {
        return Nom;
    }

    public void setNom(String Nom) {
        this.Nom = Nom;
    }

    public String getApe() {
        return Ape;
    }

    public void setApe(String Ape) {
        this.Ape = Ape;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getPass() {
        return Pass;
    }

    public void setPass(String Pass) {
        this.Pass = Pass;
    }

    public String getTel() {
        return Tel;
    }

    public void setTel(String Tel) {
        this.Tel = Tel;
    }

    public String getRed() {
        return Red;
    }

    public void setRed(String Red) {
        this.Red = Red;
    }

    public String getMun() {
        return Mun;
    }

    public void setMun(String Mun) {
        this.Mun = Mun;
    }

    public String getCalle() {
        return Calle;
    }

    public void setCalle(String Calle) {
        this.Calle = Calle;
    }

    public String getNum() {
        return Num;
    }

    public void setNum(String Num) {
        this.Num = Num;
    }

    public String getCol() {
        return Col;
    }

    public void setCol(String Col) {
        this.Col = Col;
    }

    public String getCp() {
        return Cp;
    }

    public void setCp(String Cp) {
        this.Cp = Cp;
    }


}
