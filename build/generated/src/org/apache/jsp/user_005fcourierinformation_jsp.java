package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.DriverManager;

public final class user_005fcourierinformation_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/user_navbar.jsp");
    _jspx_dependants.add("/css/user_navbar.css");
    _jspx_dependants.add("/css/user_courierinformation.css");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap.css\">\n");
      out.write("        <style>");
      out.write("/* \n");
      out.write("    Document   : user_navbar\n");
      out.write("    Created on : 17 Mar, 2023, 7:33:55 PM\n");
      out.write("    Author     : vaishnavi\n");
      out.write("    Description:\n");
      out.write("        Purpose of the stylesheet follows.\n");
      out.write("*/\n");
      out.write("\n");
      out.write("root { \n");
      out.write("    display: block;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("      \n");
      out.write("           * {\n");
      out.write("  box-sizing: border-box;\n");
      out.write("}\n");
      out.write("\n");
      out.write("body {\n");
      out.write("  background: #edeff0;\n");
      out.write("  font-family: 'Hind', sans-serif;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Start Navigation Bar */\n");
      out.write("\n");
      out.write(".navbar {\n");
      out.write("  background-color: #25283D;\n");
      out.write("  color: black;\n");
      out.write("  border-radius: 4px;\n");
      out.write("  width: 100vw;\n");
      out.write("  max-width: 1400px;\n");
      out.write("  margin: 20px auto 0;\n");
      out.write("\n");
      out.write("  \n");
      out.write("}\n");
      out.write("\n");
      out.write(".navbar .menu {\n");
      out.write("  display: flex;\n");
      out.write("  position: relative;\n");
      out.write("}\n");
      out.write("\n");
      out.write("@media (max-width: 820px) {\n");
      out.write("  .navbar .menu {\n");
      out.write("    display: block;\n");
      out.write("    position: relative;\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("\n");
      out.write(".navbar .menu li {\n");
      out.write("  flex: 1;\n");
      out.write("  display: flex;\n");
      out.write("  text-align: center;\n");
      out.write("  transition: background-color 0.5s ease;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".navbar .menu a {\n");
      out.write("  flex: 1;\n");
      out.write("  justify-content: center;\n");
      out.write("  display: inline-flex;\n");
      out.write("  color: #ffffff;\n");
      out.write("  text-decoration: none;\n");
      out.write("  padding: 20px;\n");
      out.write("  position: relative;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".navbar .menu a > .fa {\n");
      out.write("  font-weight: bold;\n");
      out.write("  margin-left: 8px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".navbar .menu li:hover {\n");
      out.write("  background-color: #8F3985;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".navbar .menu li:hover .container {\n");
      out.write("  display: flex;\n");
      out.write("}\n");
      out.write("\n");
      out.write("@media (max-width: 820px) {\n");
      out.write("  .navbar .menu li:hover .container {\n");
      out.write("    display: none;\n");
      out.write("  }\n");
      out.write("  \n");
      out.write("  .fa-angle-down {\n");
      out.write("    display: none;\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("\n");
      out.write("a.hasDropdown:after {\n");
      out.write("  position: absolute;\n");
      out.write("  bottom: -16px;\n");
      out.write("  left: 50%;\n");
      out.write("  transform: translateX(-50%);\n");
      out.write("  height: 0;\n");
      out.write("  width: 0;\n");
      out.write("  border: 8px solid transparent;\n");
      out.write("  border-top-color: #25283d;\n");
      out.write("  z-index: 2;\n");
      out.write("}\n");
      out.write("\n");
      out.write("@media (max-width: 820px) {\n");
      out.write("  li:hover a.hasDropdown:after {\n");
      out.write("    display: none;\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("\n");
      out.write("li:hover a.hasDropdown:after {\n");
      out.write("  content: '';\n");
      out.write("  border-top-color: #8F3985;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* End Navigation Bar */\n");
      out.write("\n");
      out.write("/* Start Single Section Menu */\n");
      out.write("\n");
      out.write(".container {\n");
      out.write("  display: none;\n");
      out.write("  position: absolute;\n");
      out.write("  top: 56px;\n");
      out.write("  left: 0;\n");
      out.write("  right: 0;\n");
      out.write("  background-color: #ffffff;\n");
      out.write("  box-shadow: 0 2px 0 rgba(0, 0, 0, 0.06);\n");
      out.write("  padding: 20px;\n");
      out.write("  text-align: left;\n");
      out.write("  margin-bottom: 30px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".container__list {\n");
      out.write("  flex: 1;\n");
      out.write("  display: flex;\n");
      out.write("  flex-wrap: wrap;\n");
      out.write("  min-width: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".container__listItem {\n");
      out.write("  flex: 0 0 25%;\n");
      out.write("  padding: 10px 30px;\n");
      out.write("  overflow: hidden;\n");
      out.write("  white-space: nowrap;\n");
      out.write("  text-overflow: ellipsis;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".container__listItem > div {\n");
      out.write("  color: #DB6356;\n");
      out.write("  text-decoration: underline;\n");
      out.write("  cursor: pointer;\n");
      out.write("  overflow: hidden;\n");
      out.write("  white-space: nowrap;\n");
      out.write("  text-overflow: ellipsis;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* End Single Section Menu */\n");
      out.write("\n");
      out.write("/* Start Multiple Section Menu */\n");
      out.write(".container.has-multi .container__listItem {\n");
      out.write("  flex-basis: 100%;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".container.has-multi .container__list {\n");
      out.write("  flex-basis: 33.333%;\n");
      out.write("  border-radius: 4px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".container.has-multi .container__list:not(:last-child) {\n");
      out.write("  border-right: solid 1px #f3f3f3;\n");
      out.write("  margin-right: 20px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* End Multiple Section Menu */\n");
      out.write("</style>\n");
      out.write("        \n");
      out.write("     </head>\n");
      out.write("     \n");
      out.write("         \n");
      out.write("        \n");
      out.write("        <!-- Start Navigation Bar -->\n");
      out.write("        <nav class=\"navbar\" style=\"height: 70px; margin-top: 1px;\">\n");
      out.write("  <ul class=\"menu\">\n");
      out.write("    <li style=\"font-size: 20px; background-color: red; height: 70px;\"><a>Courier Tracking...</a></li>\n");
      out.write("    <li><a href=\"user_home.jsp\">Home</a></li> \n");
      out.write("    <li><a href=\"user_courierinformation.jsp\">New Courier</a> </li>  \n");
      out.write("    <li><a href=\"user_courier_info.jsp\">History</a></li>\n");
      out.write("    <li><a href=\"user_tracking.jsp\">Tracking</a></li>\n");
      out.write("    <li><a href=\"feedback.jsp\">Feedback</a></li>\n");
      out.write("    <li style=\"float: right;\"><a href=\"user_login.jsp\">LOGOUT</a></li>\n");
      out.write("  \n");
      out.write("</nav>\n");
      out.write("<!-- End Navigation Bar -->\n");
      out.write("        \n");
      out.write("       \n");
      out.write("</html>\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title> Courier Information </title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap.css\">\n");
      out.write("        <style>");
      out.write("/* \n");
      out.write("    Document   : courireinformation\n");
      out.write("    Created on : 25 Jan, 2023, 12:43:57 PM\n");
      out.write("    Author     : vaishnavi\n");
      out.write("    Description:\n");
      out.write("        Purpose of the stylesheet follows.\n");
      out.write("*/\n");
      out.write("\n");
      out.write("root { \n");
      out.write("    display: block;\n");
      out.write("}\n");
      out.write("     body\n");
      out.write("{\n");
      out.write("   background-color: lightyellow;\n");
      out.write("  \n");
      out.write("   }\n");
      out.write(".whitediv\n");
      out.write("  {\n");
      out.write("                \n");
      out.write("    height: 500px;\n");
      out.write("    width: 870px;\n");
      out.write("    background-color: black ;\n");
      out.write("      margin-top: 40px;\n");
      out.write("    margin-left: 200px;\n");
      out.write("    box-shadow: 4px 4px white;\n");
      out.write("    border-radius: 50px;\n");
      out.write("    opacity: 0.5\n");
      out.write("  }\n");
      out.write("            .font\n");
      out.write("            {\n");
      out.write("                margin-left: 50px;\n");
      out.write("                font-size: 10px;\n");
      out.write("                color: white;\n");
      out.write("                 font-family: Edwardian Script ITC;\n");
      out.write("            }\n");
      out.write("            .font1{\n");
      out.write("                font-size: 10px;\n");
      out.write("            }\n");
      out.write("             \n");
      out.write("            .font3{\n");
      out.write("                font-size: 20px;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            .font4{\n");
      out.write("                font-size: 20px;\n");
      out.write("            }\n");
      out.write("               \n");
      out.write("               \n");
      out.write("           \n");
      out.write("            .button\n");
      out.write("            {\n");
      out.write("                hight: 200px;\n");
      out.write("                width: 180px;\n");
      out.write("                background-color: red;\n");
      out.write("                margin-top: 60px;\n");
      out.write("                margin-left: 50px;\n");
      out.write("                border-radius: 10px;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            .h{\n");
      out.write("                height: 30px;\n");
      out.write("                width: 180px;\n");
      out.write("                border-radius: 10px;\n");
      out.write("            }\n");
      out.write("           ");
      out.write("</style>\n");
      out.write("           <script type=\"text/javascript\" src=\"css/validation.js\"></script>\n");
      out.write("        <style>\n");
      out.write("            body\n");
      out.write("{\n");
      out.write("  background-color: lightyellow;\n");
      out.write("  \n");
      out.write("   }\n");
      out.write("\n");
      out.write(".whitediv\n");
      out.write("  {\n");
      out.write("                \n");
      out.write("    height: 500px;\n");
      out.write("    width: 870px;\n");
      out.write("    background-color:lightblue;\n");
      out.write("    margin-top: 20px;\n");
      out.write("    margin-left: 200px;\n");
      out.write("    box-shadow: 4px 4px white;\n");
      out.write("    border-radius: 50px;\n");
      out.write("   \n");
      out.write("  }\n");
      out.write("  label\n");
      out.write("  {\n");
      out.write("      font-size: 20px;\n");
      out.write("      color: black;\n");
      out.write("      margin-left: 20px;\n");
      out.write("  }\n");
      out.write("            .button\n");
      out.write("            {\n");
      out.write("                height: 40px;\n");
      out.write("                width: 180px;\n");
      out.write("                background-color: red;\n");
      out.write("                margin-top: 30px;\n");
      out.write("                margin-left: 50px;\n");
      out.write("                border-radius: 10px;\n");
      out.write("                color: white;\n");
      out.write("            }\n");
      out.write("            .h12\n");
      out.write("            {\n");
      out.write("                color: orangered;\n");
      out.write("                 color: red;\n");
      out.write("                 margin-left: 250px;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("         </head>\n");
      out.write("    <body>\n");
      out.write("        <form action=\"user_courierinformation\"  name=\"user_courierinformation\" method=\"post\">\n");
      out.write("            \n");
      out.write("            ");

                    Connection cn = null; long co_no = 1234567890;
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinecouriertracking","root","root");
                    Statement st = cn.createStatement();
                    
                    String sql = "select * from  user_courierinformation  ";
                     ResultSet rs = st.executeQuery(sql);
                    
                    while(rs.next())
                    {
                         co_no = Long.parseLong(rs.getString("Consignment_No"))+1;
                    }

            
      out.write("\n");
      out.write("            \n");
      out.write("          <div class=\"whitediv\"><br>\n");
      out.write("              <h1 class=\"h12\">Courier Information</h1><br><br>\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-sm-3\"><label>Consignment No :</label> </div>\n");
      out.write("            <div class=\"col-sm-3\">\n");
      out.write("                <input class=\"h\" type=\"text\" name=\"Consignment_No\" onkeypress=\"return isNumber(event);\" value=\"");
      out.print(co_no);
      out.write("\" placeholder=\"Consignment_No\" disabled=\"true\" >\n");
      out.write("                <input type=\"hidden\" name=\"Consignment_No1\" value=\"");
      out.print(co_no);
      out.write("\">\n");
      out.write("            </div> \n");
      out.write("              <div class=\"col-sm-3\"><label>Booking Date :</label></div>  \n");
      out.write("              <div class=\"col-sm-3\"><input class=\"h\" type=\"date\" name=\"Booking_Date\"></div>\n");
      out.write("        </div><br><br>\n");
      out.write("                        \n");
      out.write("                           \n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-sm-3\"><label>Booking Mode:</label></div>   \n");
      out.write("            <div class=\"col-sm-3\"><select class=\"h\" name=\"Booking_Mode\"><option>Select</option><option>Online</option><option>Offline</option></select></div>  \n");
      out.write("            <div class=\"col-sm-3\"><label>Parcel Type</label> </div>\n");
      out.write("            <div class=\"col-sm-3\">\n");
      out.write("                <select  name=\"Parcel_Type\" class=\"h\" id=\"ptype\">\n");
      out.write("                    <option value=\"Select\">Select</option>\n");
      out.write("                    <option value=\"Non-Commercial\">Non-Commercial</option>\n");
      out.write("                    <option value=\"Commercial\">Commercial</option>\n");
      out.write("                </select>\n");
      out.write("             </div>  \n");
      out.write("              \n");
      out.write("            \n");
      out.write("        </div><br><br>\n");
      out.write("                        \n");
      out.write("         <div class=\"row\">\n");
      out.write("            <div class=\"col-sm-3\"><label>Weight :</label></div>  \n");
      out.write("            <div class=\"col-sm-3\"><input class=\"h\" type=\"text\" id=\"weight\" name=\"Weight\" onkeypress=\"return isNumber(event);\" placeholder=\"Weight\"></div> \n");
      out.write("            <div class=\"col-sm-3\"><label>Quantity :</label></div>   \n");
      out.write("            <div class=\"col-sm-3\"><input class=\"h\" type=\"text\" id=\"qty\" name=\"Quantity\" onkeypress=\"return isNumber(event);\" placeholder=\"Quantity\" onclick=\"calculation()\"></div>  \n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </div><br><br>\n");
      out.write("                        \n");
      out.write("       <div class=\"row\">\n");
      out.write("                \n");
      out.write("             <div class=\"col-sm-3\"><label>Price:</label></div>  \n");
      out.write("             <div class=\"col-sm-3\">\n");
      out.write("                 <input class=\"h\" type=\"text\" name=\"Price\" id=\"price1\" onkeypress=\"return isNumber(event);\" placeholder=\"Price\">\n");
      out.write("                 <input type=\"hidden\" name=\"Price1\" id=\"price2\">\n");
      out.write("             </div>  <br> \n");
      out.write("                 \n");
      out.write("        </div><br>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-sm-4\"><input type=\"submit\" name=\"submit\" class=\"button\" value=\"Save\" style=\"background-color:red;\"></div>\n");
      out.write("            \n");
      out.write("            <div class=\"col-sm-4\"><input type=\"submit\" class=\"button\" name=\"submit\" value=\"Update\" style=\"background-color:orchid;\"></div>\n");
      out.write("            \n");
      out.write("            <div class=\"col-sm-4\"><input type=\"submit\" class=\"button\" name=\"submit\" value=\"Delete\" style=\"background-color: olivedrab;\"></div>\n");
      out.write("        </div>    \n");
      out.write("                      \n");
      out.write("        </div>\n");
      out.write("            \n");
      out.write("            <script type=\"text/javascript\">\n");
      out.write("                function calculation()\n");
      out.write("                {\n");
      out.write("                    var parsel_type = document.getElementById(\"ptype\").value;\n");
      out.write("                    var weight = document.getElementById(\"weight\").value;\n");
      out.write("                    var quantity = document.getElementById(\"quantity\").value;\n");
      out.write("                    alert(\"Hi\");\n");
      out.write("                    if(parsel_type===\"Non-Commercial\")\n");
      out.write("                        {\n");
      out.write("                            document.getElementById(\"price1\").value(\"150\");\n");
      out.write("                            document.getElementById(\"price2\").value(weight*10*quantity);\n");
      out.write("                        }\n");
      out.write("                        else if(parsel_type===\"Commercial\")\n");
      out.write("                            {\n");
      out.write("                                document.getElementById(\"price1\").value(weight*20*quantity);\n");
      out.write("                                document.getElementById(\"price2\").value(weight*20*quantity);\n");
      out.write("                            }\n");
      out.write("                    \n");
      out.write("                }\n");
      out.write("            </script>     \n");
      out.write("            \n");
      out.write("        </form>\n");
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
