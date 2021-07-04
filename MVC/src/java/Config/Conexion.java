
package Config;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
//import Entidad.Usuario;

public class Conexion {
    public DriverManagerDataSource Conectar (){
        String User = "root";
        String Pass = "JekFq9GrOv";//JekFq9GrOv
        
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://node72911-env-2528857.jelastic.saveincloud.net:3306/prep");//node72911-env-2528857.jelastic.saveincloud.net
        //node72028-env-5389750.jelastic.saveincloud.net
        dataSource.setUsername(User); //request.getSession().setAttribute("usuario", "correo@gmail.com")
        dataSource.setPassword(Pass); //request.getSession().removeAttribute("usuario");
        return dataSource;
    }
    
}
