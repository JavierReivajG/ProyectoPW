package org.apache.jsp.WEB_002dINF.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Registro_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Registro</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("          <div class=\"container mt-4 col-lg-4\">\n");
      out.write("            <div class = \"card border-info \">\n");
      out.write("                <div class=\"card-header bg-info\">\n");
      out.write("                    <H4>Registrar</h4>\n");
      out.write("                </div>\n");
      out.write("                <div class =\"card-body\">\n");
      out.write("                    <form method=\"POST\">\n");
      out.write("                        <label>Casilla</label>\n");
      out.write("                        <select name=\"casilla\">\n");
      out.write("                            <option value=\"value1\" selected>Básica</option>\n");
      out.write("                            <option value=\"value2\">Contigua</option>\n");
      out.write("                            <option value=\"value3\">Especial</option>\n");
      out.write("                            <option value=\"value3\">Extraordinaria</option>\n");
      out.write("                            <option value=\"value3\">Otra</option>\n");
      out.write("                        </select>\n");
      out.write("                        <label>Seccional</label>\n");
      out.write("                        <input type=\"text\" name=\"seccional\" class=\"form-control\" value =\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${lista[0].Seccional}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                        <label>Distrito</label>\n");
      out.write("                        <input type=\"text\" name=\"Distrito\" class=\"form-control\" value =\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${lista[0].Distrito}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                        <label>Entidad</label>\n");
      out.write("                        <input type=\"text\" name=\"votos\" class=\"form-control\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${lista[0].Entidad}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"><BR>\n");
      out.write("                        <input type=\"submit\" value=\"Actualizar\" class=\"btn btn-success\">\n");
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
