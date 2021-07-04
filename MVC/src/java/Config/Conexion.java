
package Config;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
//import Entidad.Usuario;

public class Conexion {
    public DriverManagerDataSource Conectar (){
        String User = "root";
        String Pass = "0y0IYv3NQe";//JSs4aXG5RP
        
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://node72957-env-7771431.jelastic.saveincloud.net:3306/prep");//node72028-env-5389750.jelastic.saveincloud.net
        dataSource.setUsername(User); //request.getSession().setAttribute("usuario", "correo@gmail.com")
        dataSource.setPassword(Pass); //request.getSession().removeAttribute("usuario");
        return dataSource;
    }
    
}
