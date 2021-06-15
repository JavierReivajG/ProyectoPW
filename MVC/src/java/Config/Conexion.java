
package Config;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

public class Conexion {
    public DriverManagerDataSource Conectar (){
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://localhost:3307/prep");
        dataSource.setUsername("root"); //request.getSession().setAttribute("usuario", "correo@gmail.com")
        dataSource.setPassword("3366"); //request.getSession().removeAttribute("usuario");
        return dataSource;
    }
    
}
