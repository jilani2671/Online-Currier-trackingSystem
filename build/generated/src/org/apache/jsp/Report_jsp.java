package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Report_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/css/Report.css");
  }

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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap.css\">\n");
      out.write("         <style>");
      out.write("/* \n");
      out.write("    Document   : Report\n");
      out.write("    Created on : 5 May, 2023, 12:26:10 PM\n");
      out.write("    Author     : vaishnavi\n");
      out.write("    Description:\n");
      out.write("        Purpose of the stylesheet follows.\n");
      out.write("*/\n");
      out.write("\n");
      out.write("root { \n");
      out.write("    display: block;\n");
      out.write("}\n");
      out.write("\n");
      out.write("body\n");
      out.write("{\n");
      out.write("    background-color: gray;\n");
      out.write("}\n");
      out.write(".whitediv\n");
      out.write("{\n");
      out.write("    height: 450px;\n");
      out.write("    width: 800px;\n");
      out.write("    background-color: white;\n");
      out.write("    margin-left: 130px;\n");
      out.write("    margin-top: 90px;\n");
      out.write("}\n");
      out.write(".btn\n");
      out.write("{\n");
      out.write("    height: 50px;\n");
      out.write("    width: 250px;\n");
      out.write("    margin-top: 50px;\n");
      out.write("    margin-left: 60px;\n");
      out.write("    background-color:  #5cb85c;\n");
      out.write("    color: white;\n");
      out.write("}\n");
      out.write(".btn1\n");
      out.write("{\n");
      out.write("    height: 50px;\n");
      out.write("    width: 250px;\n");
      out.write("    margin-top: 60px;\n");
      out.write("    margin-left: 250px;\n");
      out.write("     background-color:  #5cb85c;\n");
      out.write("     color: white;\n");
      out.write("}\n");
      out.write("label\n");
      out.write("{\n");
      out.write("    font-size: 50px;\n");
      out.write("    color: black;\n");
      out.write("    margin-left: 320px;\n");
      out.write("    margin-top: 20px;\n");
      out.write("   \n");
      out.write("}");
      out.write("</style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"whitediv\">\n");
      out.write("            <label>Reports</label>\n");
      out.write("            <div class=\"row\">\n");
      out.write("            <div class=\"col-sm-6\">\n");
      out.write("                <input type=\"submit\" class=\"btn\" value=\"User List\" name=\"submit\">\n");
      out.write("                <input type=\"submit\" class=\"btn\" value=\"user_courierinformation\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-sm-6\">\n");
      out.write("                <input type=\"submit\" class=\"btn\" value=\"user_receiverdetails\">\n");
      out.write("                <input type=\"submit\" class=\"btn\" value=\"user_payment\">\n");
      out.write("            </div>\n");
      out.write("            </div>\n");
      out.write("            <input type=\"submit\" class=\"btn1\" value=\"user_list\">\n");
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
