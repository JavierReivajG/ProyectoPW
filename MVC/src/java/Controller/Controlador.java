
package Controller;

import Config.Conexion;
import Entidad.Registro;
import Entidad.Usuario;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
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
    String tipUs;
    List datos, datos1, datos2, usuarios;
 
    @RequestMapping(value = "index.htm", method = RequestMethod.GET)
    public ModelAndView Index(){
        //String sql="Select * from registros";
        //datos=this.jdbcTemplate.queryForList(sql);
        //mav.addObject("lista",datos);
        mav.addObject(new Usuario());
        mav.setViewName("index");
        return mav;
    }
    
    @RequestMapping (value = "index.htm", method = RequestMethod.POST)
    public ModelAndView Index(Usuario us){
        try{
        Email = us.getEmail();
        Pass = us.getPass();
        String sql = "Select tipo_usuario from usuarios where email = '"+Email+"' AND contraseña = '"+Pass+"'";
        tipUs = (String) jdbcTemplate.queryForObject(sql, new Object[] {}, String.class);
        if (tipUs.equals("Autorizado") || tipUs.equals("Administrador")){
        return new ModelAndView("redirect:/registrar.htm");
        }
        else{
        return new ModelAndView("redirect:/esperaValid.htm");
        }
        }catch(Exception e){
            return new ModelAndView("redirect:/incorrect.htm");
        }
    }
    
    @RequestMapping(value = "sign_in_admin.htm", method = RequestMethod.GET)
    public ModelAndView Sign_in_admin(){
        mav.addObject(new Usuario());
        mav.setViewName("sign_in_admin");
        return mav;
    }
    
    @RequestMapping (value = "sign_in_admin.htm", method = RequestMethod.POST)
    public ModelAndView Sign_in_admin(Usuario admin){
        try{
        Email = admin.getEmail();
        Pass = admin.getPass();
        String sql = "Select tipo_usuario from usuarios where email = '"+Email+"' AND contraseña = '"+Pass+"'";
        tipUs = (String) jdbcTemplate.queryForObject(sql, new Object[] {}, String.class);
        if (tipUs.equals("Administrador")){
        return new ModelAndView("redirect:/validar.htm");
        }
        else{
        return new ModelAndView("redirect:/emailNotFound.htm");
        }
        
        }catch(Exception e){
            return new ModelAndView("redirect:/incorrect.htm");
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
        return new ModelAndView("redirect:/index.htm");
    }
    
    @RequestMapping(value = "registrar.htm", method = RequestMethod.GET)
    public ModelAndView Registrar(){
        try{
        if (tipUs.equals("Autorizado")){
        mav.addObject(new Registro());
        mav.setViewName("registrar");
        return mav;
        }
        else{
            return new ModelAndView("redirect:/esperaValid.htm");
        }
        } catch(Exception e){
            return new ModelAndView("redirect:/emailNotFound.htm");
        }
    }
    @RequestMapping(value = "registrar.htm", method = RequestMethod.POST)
    public ModelAndView Registrar(Registro r){
        String sql = "Insert into casillas (numero_casilla, tipo_casilla, seccion) values(?,?,?)";
        this.jdbcTemplate.update(sql, r.getId(), r.getCas(),r.getSec());
        sql = "INSERT INTO registros (candidatura_id, partido_id, no_votos, casilla_id) values (?,?,?,(SELECT MAX(casilla_id) FROM casillas))";
        this.jdbcTemplate.update(sql,r.getCan(),r.getPar(),r.getVot());
        return new ModelAndView("redirect:/registrar.htm");
    }
   
    @RequestMapping("conteo.htm")
    public ModelAndView Contar(){
        try{
        if (tipUs.equals("Autorizado")){
         String sql="SELECT c.numero_casilla,puesto,alianza AS \"Alianza_o_Partido\", SUM(no_votos) Total_Votos\n" +
"FROM registros r\n" +
"JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id\n" +
"JOIN partidos p ON r.partido_id = p.partido_id\n" +
"JOIN casillas c ON c.casilla_id = r.casilla_id\n" +
"WHERE alianza IS NOT NULL and cn.puesto = 'Diputado Federal'\n" +
"GROUP BY c.numero_casilla,alianza,puesto\n" +
"UNION\n" +
"SELECT c.numero_casilla,puesto,nombre AS \"Alianza_o_Partido\", SUM(no_votos) as Total_Votos\n" +
"FROM registros r\n" +
"JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id\n" +
"JOIN partidos p ON r.partido_id = p.partido_id\n" +
"JOIN casillas c ON c.casilla_id = r.casilla_id\n" +
"WHERE cn.puesto = 'Diputado Federal'\n" +
"GROUP BY c.numero_casilla,nombre,puesto\n" +
"ORDER BY puesto,Total_Votos DESC;";
        datos=this.jdbcTemplate.queryForList(sql);
        mav.addObject("cont",datos);
        String sql2 = "SELECT numero_casilla,puesto,alianza AS \"Alianza_o_Partido\", SUM(no_votos) Total_Votos\n" +
"FROM registros r\n" +
"JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id\n" +
"JOIN partidos p ON r.partido_id = p.partido_id\n" +
"JOIN casillas c ON c.casilla_id = r.casilla_id\n" +
"WHERE alianza IS NOT NULL and cn.puesto = 'Diputado Local'\n" +
"GROUP BY numero_casilla,alianza,puesto\n" +
"UNION\n" +
"SELECT numero_casilla,puesto,nombre AS \"Alianza_o_Partido\", SUM(no_votos) as Total_Votos\n" +
"FROM registros r\n" +
"JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id\n" +
"JOIN partidos p ON r.partido_id = p.partido_id\n" +
"JOIN casillas c ON c.casilla_id = r.casilla_id\n" +
"WHERE cn.puesto = 'Diputado Local'\n" +
"GROUP BY numero_casilla,nombre,puesto\n" +
"ORDER BY puesto,Total_Votos DESC;";
        datos1=this.jdbcTemplate.queryForList(sql2);
        mav.addObject("cont1",datos1);
        String sql3 = "SELECT numero_casilla,puesto,alianza AS \"Alianza_o_Partido\", SUM(no_votos) Total_Votos\n" +
"FROM registros r\n" +
"JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id\n" +
"JOIN partidos p ON r.partido_id = p.partido_id\n" +
"JOIN casillas c ON c.casilla_id = r.casilla_id\n" +
"WHERE alianza IS NOT NULL and cn.puesto = 'Presidente Municipal'\n" +
"GROUP BY numero_casilla,alianza,puesto\n" +
"UNION\n" +
"SELECT numero_casilla,puesto,nombre AS \"Alianza_o_Partido\", SUM(no_votos) as Total_Votos\n" +
"FROM registros r\n" +
"JOIN candidaturas cn ON cn.candidatura_id = r.candidatura_id\n" +
"JOIN partidos p ON r.partido_id = p.partido_id\n" +
"JOIN casillas c ON c.casilla_id = r.casilla_id\n" +
"WHERE cn.puesto = 'Presidente Municipal'\n" +
"GROUP BY numero_casilla,nombre,puesto\n" +
"ORDER BY puesto,Total_Votos DESC;";
        datos2=this.jdbcTemplate.queryForList(sql3);
        mav.addObject("cont2",datos2);
        mav.setViewName("conteo");
        return mav;
        } else{
            return new ModelAndView("redirect:/esperaValid.htm");
        }
        } catch(Exception e){
            return new ModelAndView("redirect:/emailNotFound.htm");
        }
    }
    
    @RequestMapping("validar.htm")
    public ModelAndView Validar(){
        try{
        if (tipUs.equals("Administrador")){
        String sql="Select usuario_id, nombre, email, tipo_usuario from usuarios";
        usuarios=this.jdbcTemplate.queryForList(sql);
        mav.addObject("contenido",usuarios);
        mav.setViewName("validar");
        return mav;
        } else{
            return new ModelAndView("redirect:/esperaValid.htm");
        }
        } catch(Exception e){
            return new ModelAndView("redirect:/emailNotFound.htm");
        }
    }

    @RequestMapping(value = "autorizar.htm")
    public ModelAndView Autorizar(HttpServletRequest request){
        codigo =Integer.parseInt(request.getParameter("codigo"));
        String sql = "UPDATE usuarios SET tipo_usuario = 'Autorizado' where usuario_id = "+codigo;
        this.jdbcTemplate.update(sql);
        return new ModelAndView("redirect:/validar.htm");
    }
    
    @RequestMapping(value = "denegar.htm")
    public ModelAndView Denegar(HttpServletRequest request){
        codigo =Integer.parseInt(request.getParameter("codigo"));
        String sql = "UPDATE usuarios SET tipo_usuario = 'No_autorizado' where usuario_id = "+codigo;
        this.jdbcTemplate.update(sql);
        return new ModelAndView("redirect:/validar.htm");
    }
    
    @RequestMapping(value = "eliminar.htm")
    public ModelAndView Eliminar(HttpServletRequest request){
        codigo =Integer.parseInt(request.getParameter("codigo"));
        String sql = "DELETE FROM usuarios where usuario_id = "+codigo;
        this.jdbcTemplate.update(sql);
        return new ModelAndView("redirect:/validar.htm");
    }
    
    @RequestMapping(value = "recuperar.htm", method = RequestMethod.GET)
    public ModelAndView Recuperar(){
        mav.addObject(new Usuario());
        mav.setViewName("recuperar");
        return mav;
    }
    
    @RequestMapping (value = "recuperar.htm", method = RequestMethod.POST)
    public ModelAndView Recuperar(Usuario recUs){
        try{
            String correo = recUs.getEmail();
            String sql = "Select contraseña from usuarios where email = '"+correo+"'";
            String contra = (String) jdbcTemplate.queryForObject(sql, new Object[] {}, String.class);
        
            try {
            Properties props = new Properties();
            props.setProperty("mail.smtp.host", "smtp.gmail.com");
            props.setProperty("mail.smtp.starttls.enable", "true");
            props.setProperty("mail.smtp.port", "587");
            props.setProperty("mail.smtp.auth", "true");
            
            Session session = Session.getDefaultInstance(props);
            
            String correoRemitente = "prep.recovery@gmail.com";
            String passwordRemitente = "prep1234";
            String asunto = "Recuperar Contraseña PREP 2021";
            String mensaje = "La contraseña correspondienta a la cuenta " +correo+ " es: " + contra;
            
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(correoRemitente));
            
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(correo));
            message.setSubject(asunto);
            message.setText(mensaje);
            
            Transport t = session.getTransport("smtp");
            t.connect(correoRemitente, passwordRemitente);
            t.sendMessage(message, message.getRecipients(Message.RecipientType.TO));
            t.close();
        } catch (AddressException ex) {
            Logger.getLogger(Controlador.class.getName()).log(Level.SEVERE, null, ex);
        } catch (MessagingException ex) {
            Logger.getLogger(Controlador.class.getName()).log(Level.SEVERE, null, ex);
        }
            
        }catch(Exception e){
            return new ModelAndView("redirect:/emailNotFound.htm");
        }
        return new ModelAndView("redirect:/index.htm");
    }
    
    @RequestMapping ("emailNotFound.htm")
    public ModelAndView enf(){
        mav.setViewName("emailNotFound");
        return mav;
    }
    
    @RequestMapping ("esperaValid.htm")
    public ModelAndView Espera(){
        mav.setViewName("esperaValid");
        return mav;
    }
    
    @RequestMapping ("incorrect.htm")
    public ModelAndView Incorrect(){
        mav.setViewName("incorrect");
        return mav;
    }
    
}
