
package Config;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

public class Conexion {
    public DriverManagerDataSource Conectar (){
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://localhost:3307/escuela");
        dataSource.setUsername("root");
        dataSource.setPassword("3366");
        return dataSource;
    }
    
}
