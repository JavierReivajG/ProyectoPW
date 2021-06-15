
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
    List datos;
    
    @RequestMapping("index.htm")
    public ModelAndView Listar(){
        //String sql="Select * from alianzas";
        //datos=this.jdbcTemplate.queryForList(sql);
        //mav.addObject("lista",datos);
        mav.setViewName("index");
        return mav;
    }
    
    @RequestMapping(value = "sign_up.htm", method = RequestMethod.GET)
    public ModelAndView Sign_up(){
        mav.addObject(new Usuario());
        mav.setViewName("sign_up");
        return mav;
    }
    
    @RequestMapping(value = "sign_up.htm", method = RequestMethod.POST)
    public ModelAndView Sign_up(Usuario u){
        String sql = "INSERT INTO usuarios (nombre, apellido, email, contraseña, no_telefono, red_social) values (?,?,?,?,?,?)";
        this.jdbcTemplate.update(sql, u.getNom(), u.getApe(), u.getEmail(), u.getPass(), u.getTel(), u.getRed());
        sql = "INSERT INTO domicilios (usuario_id, municipio, calle, numero, colonia, cp) values ((SELECT MAX(usuario_id) FROM usuarios),?,?,?,?,?)";
        this.jdbcTemplate.update(sql,u.getMun(),u.getCalle(),u.getNum(),u.getCol(),u.getCp());
        sql = "CREATE USER '"+u.getNom()+"'@'localhost' IDENTIFIED BY '"+u.getPass()+"'";
        this.jdbcTemplate.update(sql);
        return new ModelAndView("redirect:/index.htm");
    }
    
    @RequestMapping(value = "registrar.htm", method = RequestMethod.GET)
    public ModelAndView Registrar(){
        mav.addObject(new Registro());
        mav.setViewName("registrar");
        return mav;
    }
    @RequestMapping(value = "registrar.htm", method = RequestMethod.POST)
    public ModelAndView Registrar(Registro r){
        String sql = "Insert into casillas (casilla_id, tipo_casilla, seccion) values(?,?,?)";
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
        String sql = "INSERT INTO registros (candidatura_id, partido_id, no_votos, casilla_id) values (?,?,?,(SELECT MAX(usuario_id) FROM usuarios))";
        this.jdbcTemplate.update(sql,v.getCan(),v.getPar(),v.getVot());
        return new ModelAndView("redirect:/votar.htm");
    }
}
