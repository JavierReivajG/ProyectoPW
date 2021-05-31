
package Controller;

import Config.Conexion;
import Entidad.Persona;
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
        String sql="Select * from alumnos";
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
        String sql = "Insert into alumnos(codigo, nombre, domicilio)values(?,?,?)";
        this.jdbcTemplate.update(sql,p.getCod(),p.getNom(),p.getDomi());//getDomi?
        return new ModelAndView("redirect:/index.htm");
    }
    @RequestMapping(value = "editar.htm", method = RequestMethod.GET)
    public ModelAndView Ediar(HttpServletRequest request){
        codigo = Integer.parseInt(request.getParameter("codigo"));
        String sql = "Select * from Alumnos Where codigo = "+codigo;
        datos=this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista",datos);
        mav.setViewName("editar");
        return mav;
    }
    @RequestMapping(value = "editar.htm", method = RequestMethod.POST)
    public ModelAndView Editar(Persona p){
        String sql="update alumnos set Codigo = ?, Nombre = ?, Domicilio = ? Where Codigo = "+codigo;
        this.jdbcTemplate.update(sql,p.getCod(),p.getNom(),p.getDomi());
        return new ModelAndView("redirect:/index.htm");
    }
    @RequestMapping(value = "borrar.htm")
    public ModelAndView Borrar(HttpServletRequest request){
        codigo =Integer.parseInt(request.getParameter("codigo"));
        String sql = "Delete from alumnos where codigo = "+codigo;
        this.jdbcTemplate.update(sql);
        return new ModelAndView("redirect:/index.htm");
    }
}
