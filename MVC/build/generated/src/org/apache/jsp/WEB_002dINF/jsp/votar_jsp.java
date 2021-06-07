package org.apache.jsp.WEB_002dINF.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class votar_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel = \"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\" integrity=\"sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO\" crossorigin=\"anonymous\">\n");
      out.write("        <title>Votar</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("          <div class=\"container mt-4 col-lg-4\">\n");
      out.write("            <div class = \"card border-info \">\n");
      out.write("                <div class=\"card-header bg-info\">\n");
      out.write("                    <H4>Proceso Electoral Federal 2021</h4>\n");
      out.write("                </div>\n");
      out.write("                <div class =\"card-body\">\n");
      out.write("                    <form method=\"POST\">\n");
      out.write("                        <label>Presidente Municipal de Tonalá</label>\n");
      out.write("                        <select name=\"Nomp\" class=\"form-control\">\n");
      out.write("                            <option value=\"NULL\" selected>Seleccionar</Option>\n");
      out.write("                            <option value=\"PAN\">PAN</option>\n");
      out.write("                            <option value=\"PRD\">PRD</option>\n");
      out.write("                            <option value=\"PRI\">PRI</option>\n");
      out.write("                            <option value=\"PVEM\">VERDE ECOLÓGISTA</option>\n");
      out.write("                            <option value=\"PT\">PT</option>\n");
      out.write("                            <option value=\"MC\">MOVIMIENTO CIUDADANO</option>\n");
      out.write("                            <option value=\"MORENA\">MORENA</option>\n");
      out.write("                            <option value=\"PES\">PES</option>\n");
      out.write("                            <option value=\"RSP\">REDES SOCIALES PROGRESISTAS (RSP)</option>\n");
      out.write("                            <option value=\"FxM\">FUERZA MÉXICO</option>\n");
      out.write("                            <option value=\"HAGAMOS\">HAGAMOS</option>\n");
      out.write("                            <option value=\"SOMOS\">SOMOS</option>\n");
      out.write("                            <option value=\"FUTURO\">FUTURO</option>\n");
      out.write("                            <option value=\"INDEPENDIENTE\">INDEPENDIENTE</option>\n");
      out.write("                        </select><BR>\n");
      out.write("                        \n");
      out.write("                        <label>Diputado Federal</label>\n");
      out.write("                        <select name=\"Nomdf\" class=\"form-control\">\n");
      out.write("                            <option value=\"NULL\" selected>Seleccionar</Option>\n");
      out.write("                            <option value=\"PAN\">PAN</option>\n");
      out.write("                            <option value=\"PRD\">PRD</option>\n");
      out.write("                            <option value=\"PRI\">PRI</option>\n");
      out.write("                            <option value=\"PVEM\">VERDE ECOLÓGISTA</option>\n");
      out.write("                            <option value=\"PT\">PT</option>\n");
      out.write("                            <option value=\"MC\">MOVIMIENTO CIUDADANO</option>\n");
      out.write("                            <option value=\"MORENA\">MORENA</option>\n");
      out.write("                            <option value=\"PES\">PES</option>\n");
      out.write("                            <option value=\"RSP\">REDES SOCIALES PROGRESISTAS (RSP)</option>\n");
      out.write("                            <option value=\"FxM\">FUERZA MÉXICO</option>\n");
      out.write("                            <option value=\"HAGAMOS\">HAGAMOS</option>\n");
      out.write("                            <option value=\"SOMOS\">SOMOS</option>\n");
      out.write("                            <option value=\"FUTURO\">FUTURO</option>\n");
      out.write("                            <option value=\"INDEPENDIENTE\">INDEPENDIENTE</option>\n");
      out.write("                        </select><BR>\n");
      out.write("                        \n");
      out.write("                        <label>Diputado Local</label>\n");
      out.write("                        <select name=\"Nomdl\" class=\"form-control\">\n");
      out.write("                            <option value=\"NULL\" selected>Seleccionar</Option>\n");
      out.write("                            <option value=\"PAN\">PAN</option>\n");
      out.write("                            <option value=\"PRD\">PRD</option>\n");
      out.write("                            <option value=\"PRI\">PRI</option>\n");
      out.write("                            <option value=\"PVEM\">VERDE ECOLÓGISTA</option>\n");
      out.write("                            <option value=\"PT\">PT</option>\n");
      out.write("                            <option value=\"MC\">MOVIMIENTO CIUDADANO</option>\n");
      out.write("                            <option value=\"MORENA\">MORENA</option>\n");
      out.write("                            <option value=\"PES\">PES</option>\n");
      out.write("                            <option value=\"RSP\">REDES SOCIALES PROGRESISTAS (RSP)</option>\n");
      out.write("                            <option value=\"FxM\">FUERZA MÉXICO</option>\n");
      out.write("                            <option value=\"HAGAMOS\">HAGAMOS</option>\n");
      out.write("                            <option value=\"SOMOS\">SOMOS</option>\n");
      out.write("                            <option value=\"FUTURO\">FUTURO</option>\n");
      out.write("                            <option value=\"INDEPENDIENTE\">INDEPENDIENTE</option>\n");
      out.write("                        </select><BR>\n");
      out.write("                        \n");
      out.write("                        <input type=\"submit\" value=\"Registrar Voto\" class=\"btn btn-success\">\n");
      out.write("                        <a href=\"index.htm\">Regresar</a>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
