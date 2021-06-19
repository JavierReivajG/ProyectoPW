
package Config;

import Controller.Controlador;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
//import Entidad.Usuario;

public class Conexion {
    public DriverManagerDataSource Conectar (){
        //Usuario u = new Usuario();
        String User = Controlador.Email;//u.getEmail();
        String Pass = Controlador.Pass;//u.getPass();
        
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://localhost:3307/prep");
        dataSource.setUsername(User); //request.getSession().setAttribute("usuario", "correo@gmail.com")
        dataSource.setPassword(Pass); //request.getSession().removeAttribute("usuario");
        return dataSource;
    }
    
}
