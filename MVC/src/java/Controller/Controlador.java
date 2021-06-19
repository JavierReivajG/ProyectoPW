
package Controller;

import Config.Conexion;
import Entidad.Registro;
import Entidad.Voto;
import Entidad.Usuario;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Controlador {
    Conexion con = new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    ModelAndView mav=new ModelAndView();
    int codigo;
    public static String Email, Pass;
    List datos, datos1, datos2;
    
    //ResultSet rs = null;
    
    @RequestMapping("index.htm")
    public ModelAndView Listar(){
        String sql="SELECT r.casilla_id,puesto,alianza AS \"Alianza_o_Partido\", SUM(no_votos) Total_Votos\n" +
"FROM registros r\n" +
"JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id\n" +
"JOIN partidos p ON r.partido_id = p.partido_id\n" +
"JOIN casillas c ON c.casilla_id = r.casilla_id\n" +
"WHERE alianza IS NOT NULL and cn.puesto = 'Diputado Federal'\n" +
"GROUP BY r.casilla_id,alianza,puesto\n" +
"UNION\n" +
"SELECT r.casilla_id,puesto,nombre AS \"Alianza_o_Partido\", SUM(no_votos) as Total_Votos\n" +
"FROM registros r\n" +
"JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id\n" +
"JOIN partidos p ON r.partido_id = p.partido_id\n" +
"JOIN casillas c ON c.casilla_id = r.casilla_id\n" +
"WHERE cn.puesto = 'Diputado Federal'\n" +
"GROUP BY r.casilla_id,nombre,puesto\n" +
"ORDER BY puesto,Total_Votos DESC";
        datos=this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista",datos);
        String sql2 = "SELECT r.casilla_id,puesto,alianza AS \"Alianza_o_Partido\", SUM(no_votos) Total_Votos\n" +
"FROM registros r\n" +
"JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id\n" +
"JOIN partidos p ON r.partido_id = p.partido_id\n" +
"JOIN casillas c ON c.casilla_id = r.casilla_id\n" +
"WHERE alianza IS NOT NULL and cn.puesto = 'Diputado Local'\n" +
"GROUP BY r.casilla_id,alianza,puesto\n" +
"UNION\n" +
"SELECT r.casilla_id,puesto,nombre AS \"Alianza_o_Partido\", SUM(no_votos) as Total_Votos\n" +
"FROM registros r\n" +
"JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id\n" +
"JOIN partidos p ON r.partido_id = p.partido_id\n" +
"JOIN casillas c ON c.casilla_id = r.casilla_id\n" +
"WHERE cn.puesto = 'Diputado Local'\n" +
"GROUP BY r.casilla_id,nombre,puesto\n" +
"ORDER BY puesto,Total_Votos DESC;";
        datos1=this.jdbcTemplate.queryForList(sql2);
        mav.addObject("lista1",datos1);
        String sql3 = "SELECT r.casilla_id,puesto,alianza AS \"Alianza_o_Partido\", SUM(no_votos) Total_Votos\n" +
"FROM registros r\n" +
"JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id\n" +
"JOIN partidos p ON r.partido_id = p.partido_id\n" +
"JOIN casillas c ON c.casilla_id = r.casilla_id\n" +
"WHERE alianza IS NOT NULL and cn.puesto = 'Presidente Municipal'\n" +
"GROUP BY r.casilla_id,alianza,puesto\n" +
"UNION\n" +
"SELECT r.casilla_id,puesto,nombre AS \"Alianza_o_Partido\", SUM(no_votos) as Total_Votos\n" +
"FROM registros r\n" +
"JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id\n" +
"JOIN partidos p ON r.partido_id = p.partido_id\n" +
"JOIN casillas c ON c.casilla_id = r.casilla_id\n" +
"WHERE cn.puesto = 'Presidente Municipal'\n" +
"GROUP BY r.casilla_id,nombre,puesto\n" +
"ORDER BY puesto,Total_Votos DESC;";
        datos2=this.jdbcTemplate.queryForList(sql3);
        mav.addObject("lista2",datos2);
        mav.setViewName("index");
        return mav;
    }
    
    @RequestMapping(value = "sign_in.htm", method = RequestMethod.GET)
    public ModelAndView Sign_in(){
        //String sql="Select * from registros";
        //datos=this.jdbcTemplate.queryForList(sql);
        //mav.addObject("lista",datos);
        mav.addObject(new Usuario());
        mav.setViewName("sign_in");
        return mav;
    }
    
    @RequestMapping (value = "sign_in.htm", method = RequestMethod.POST)
    public ModelAndView Sign_in(Usuario us){
        Email = us.getEmail();
        Pass = us.getPass();
        String sql = "Select tipo_usuario from usuarios where email = '"+Email+"' AND contraseña = '"+Pass+"'";
        String tipUs = (String) jdbcTemplate.queryForObject(sql, new Object[] {}, String.class);
        System.out.println("Usuario: "+tipUs);
        if (tipUs.equals("Autorizado")){
        return new ModelAndView("redirect:/registrar.htm");
        }
        else{
        return new ModelAndView("redirect:/sign_in.htm");
        }
    }
    
    
    @RequestMapping(value = "sign_up.htm", method = RequestMethod.GET)
    public ModelAndView Sign_up(){
        mav.addObject(new Usuario());
        mav.setViewName("sign_up");
        return mav;
    }
    
    @RequestMapping(value = "sign_up.htm", method = RequestMethod.POST)
    public ModelAndView Sign_up(Usuario u){
        String sql = "INSERT INTO usuarios (tipo_usuario, nombre, apellido, email, contraseña, no_telefono, red_social) values ('No_autorizado',?,?,?,?,?,?)";
        this.jdbcTemplate.update(sql, u.getNom(), u.getApe(), u.getEmail(), u.getPass(), u.getTel(), u.getRed());
        sql = "INSERT INTO domicilios (usuario_id, municipio, calle, numero, colonia, cp) values ((SELECT MAX(usuario_id) FROM usuarios),?,?,?,?,?)";
        this.jdbcTemplate.update(sql,u.getMun(),u.getCalle(),u.getNum(),u.getCol(),u.getCp());
        sql = "CREATE USER '"+u.getEmail()+"'@'localhost' IDENTIFIED BY '"+u.getPass()+"'";
        this.jdbcTemplate.update(sql);
        return new ModelAndView("redirect:/sign_in.htm");
    }
    
    @RequestMapping(value = "registrar.htm", method = RequestMethod.GET)
    public ModelAndView Registrar(){
        mav.addObject(new Registro());
        mav.setViewName("registrar");
        return mav;
    }
    @RequestMapping(value = "registrar.htm", method = RequestMethod.POST)
    public ModelAndView Registrar(Registro r){
        String sql = "Insert into casillas (numero_casilla, tipo_casilla, seccion) values(?,?,?)";
        this.jdbcTemplate.update(sql, r.getId(), r.getCas(),r.getSec());
        return new ModelAndView("redirect:/votar.htm");
    }
    
    @RequestMapping(value = "votar.htm", method = RequestMethod.GET)
    public ModelAndView Votar(){
        mav.addObject(new Voto());
        mav.setViewName("votar");
        return mav;
    }
    @RequestMapping(value = "votar.htm", method = RequestMethod.POST)
    public ModelAndView Votar(Voto v){
        String sql = "INSERT INTO registros (candidatura_id, partido_id, no_votos, casilla_id) values (?,?,?,(SELECT MAX(casilla_id) FROM casillas))";
        this.jdbcTemplate.update(sql,v.getCan(),v.getPar(),v.getVot());
        return new ModelAndView("redirect:/votar.htm");
    }
    
    @RequestMapping("conteo.htm")
    public ModelAndView Contar(){
         String sql="SELECT r.casilla_id,puesto,alianza AS \"Alianza_o_Partido\", SUM(no_votos) Total_Votos\n" +
"FROM registros r\n" +
"JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id\n" +
"JOIN partidos p ON r.partido_id = p.partido_id\n" +
"JOIN casillas c ON c.casilla_id = r.casilla_id\n" +
"WHERE alianza IS NOT NULL and cn.puesto = 'Diputado Federal'\n" +
"GROUP BY r.casilla_id,alianza,puesto\n" +
"UNION\n" +
"SELECT r.casilla_id,puesto,nombre AS \"Alianza_o_Partido\", SUM(no_votos) as Total_Votos\n" +
"FROM registros r\n" +
"JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id\n" +
"JOIN partidos p ON r.partido_id = p.partido_id\n" +
"JOIN casillas c ON c.casilla_id = r.casilla_id\n" +
"WHERE cn.puesto = 'Diputado Federal'\n" +
"GROUP BY r.casilla_id,nombre,puesto\n" +
"ORDER BY puesto,Total_Votos DESC";
        datos=this.jdbcTemplate.queryForList(sql);
        mav.addObject("cont",datos);
        String sql2 = "SELECT r.casilla_id,puesto,alianza AS \"Alianza_o_Partido\", SUM(no_votos) Total_Votos\n" +
"FROM registros r\n" +
"JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id\n" +
"JOIN partidos p ON r.partido_id = p.partido_id\n" +
"JOIN casillas c ON c.casilla_id = r.casilla_id\n" +
"WHERE alianza IS NOT NULL and cn.puesto = 'Diputado Local'\n" +
"GROUP BY r.casilla_id,alianza,puesto\n" +
"UNION\n" +
"SELECT r.casilla_id,puesto,nombre AS \"Alianza_o_Partido\", SUM(no_votos) as Total_Votos\n" +
"FROM registros r\n" +
"JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id\n" +
"JOIN partidos p ON r.partido_id = p.partido_id\n" +
"JOIN casillas c ON c.casilla_id = r.casilla_id\n" +
"WHERE cn.puesto = 'Diputado Local'\n" +
"GROUP BY r.casilla_id,nombre,puesto\n" +
"ORDER BY puesto,Total_Votos DESC;";
        datos1=this.jdbcTemplate.queryForList(sql2);
        mav.addObject("cont1",datos1);
        String sql3 = "SELECT r.casilla_id,puesto,alianza AS \"Alianza_o_Partido\", SUM(no_votos) Total_Votos\n" +
"FROM registros r\n" +
"JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id\n" +
"JOIN partidos p ON r.partido_id = p.partido_id\n" +
"JOIN casillas c ON c.casilla_id = r.casilla_id\n" +
"WHERE alianza IS NOT NULL and cn.puesto = 'Presidente Municipal'\n" +
"GROUP BY r.casilla_id,alianza,puesto\n" +
"UNION\n" +
"SELECT r.casilla_id,puesto,nombre AS \"Alianza_o_Partido\", SUM(no_votos) as Total_Votos\n" +
"FROM registros r\n" +
"JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id\n" +
"JOIN partidos p ON r.partido_id = p.partido_id\n" +
"JOIN casillas c ON c.casilla_id = r.casilla_id\n" +
"WHERE cn.puesto = 'Presidente Municipal'\n" +
"GROUP BY r.casilla_id,nombre,puesto\n" +
"ORDER BY puesto,Total_Votos DESC;";
        datos2=this.jdbcTemplate.queryForList(sql3);
        mav.addObject("cont2",datos2);
        mav.setViewName("conteo");
        return mav;
    }
}
