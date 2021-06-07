
package Controller;

import Config.Conexion;
import Entidad.Persona;
import Entidad.Registro;
import Entidad.Voto;
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
        String sql="Select * from alianzas";
        datos=this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista",datos);
        mav.setViewName("index");
        return mav;
    }
    @RequestMapping(value = "agregar.htm", method = RequestMethod.GET)
    public ModelAndView Agregar(){
        mav.addObject(new Persona());
        mav.setViewName("agregar");
        return mav;
    }
    @RequestMapping(value = "agregar.htm", method = RequestMethod.POST)
    public ModelAndView Agregar(Persona p){
        String sql = "Insert into alianzas(nombre, no_votos)values(?,?)";
        this.jdbcTemplate.update(sql,p.getNom(),p.getVotos());//getDomi?
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
        String sql = "Insert into seccionales(seccion, distrito, entidad)values(?,?,?)";
        this.jdbcTemplate.update(sql,r.getSec(),r.getDist(),r.getEnt());
        sql = "Insert into casillas (tipo_casilla, seccion) values(?,?)";
        this.jdbcTemplate.update(sql, r.getCas(),r.getSec());
        return new ModelAndView("redirect:/index.htm");
    }
    
    
    @RequestMapping(value = "votar.htm", method = RequestMethod.GET)
    public ModelAndView Votar(){
        mav.addObject(new Voto());
        mav.setViewName("votar");
        return mav;
    }
    @RequestMapping(value = "votar.htm", method = RequestMethod.POST)
    public ModelAndView Votar(Voto v){
        String sql = "UPDATE partidos SET no_votos = no_votos+1 WHERE nombre = ?";
        this.jdbcTemplate.update(sql,v.getNomp());
        sql = "UPDATE partidos SET no_votos = no_votos+1 WHERE nombre = ?";
        this.jdbcTemplate.update(sql,v.getNomdf());
        sql = "UPDATE partidos SET no_votos = no_votos+1 WHERE nombre = ?";
        this.jdbcTemplate.update(sql,v.getNomdl());
        return new ModelAndView("redirect:/index.htm");
    }
    
    
    @RequestMapping(value = "editar.htm", method = RequestMethod.GET)
    public ModelAndView Ediar(HttpServletRequest request){
        codigo = Integer.parseInt(request.getParameter("codigo"));//Codigo = Codigo !
        String sql = "Select * from alianzas Where alianza_id = "+codigo;
        datos=this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista",datos);
        mav.setViewName("editar");
        return mav;
    }
    @RequestMapping(value = "editar.htm", method = RequestMethod.POST)
    public ModelAndView Editar(Persona p){
        String sql="update alianzas set alianza_id = ?, nombre = ?, no_votos = ? Where alianza_id = "+codigo;
        this.jdbcTemplate.update(sql,p.getID(),p.getNom(),p.getVotos());
        return new ModelAndView("redirect:/index.htm");
    }
    @RequestMapping(value = "borrar.htm")
    public ModelAndView Borrar(HttpServletRequest request){
        codigo =Integer.parseInt(request.getParameter("codigo"));//Codigo = Codigo !!
        String sql = "Delete from alianzas where alianza_id = "+codigo;
        this.jdbcTemplate.update(sql);
        return new ModelAndView("redirect:/index.htm");
    }
}
