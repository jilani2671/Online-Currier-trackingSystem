/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author vaishnavi
 */
public class admin_login extends HttpServlet {
    
    Connection cn=null;
    Statement st=null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out= resp.getWriter();
          HttpSession session=req.getSession();
           
        Database db=new Database();
          String result=db.Connectdb();
          out.println(result);
          
          
         String Email_ID = req.getParameter("Email_ID");
         String Password = req.getParameter("Password");
         
          out.println(Email_ID);
         out.println(Password);
         
          String event = req.getParameter("submit");
           if(event.equals("login"))
        {
            if(Email_ID.equals("")||Password.equals(""))
            {
                 resp.setContentType("text/html");
                  out.println("<script type='text/javascript'>");
                  out.println("alert('some fields are empty')");
                  out.println("location='admin_login.jsp'");
                  out.println("</script>");
            }
            else
            {
                try
                {
                   Class.forName("com.mysql.jdbc.Driver");
                   cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinecouriertracking","root","root");
                   Statement st=cn.createStatement();
                    
                    String sql = "select * from admin_signup where Email_ID='"+Email_ID+"' && Password='"+Password+"' ";
                     ResultSet rs = st.executeQuery(sql);
                    
                    if(rs.next())
                    {
                         session.setAttribute("Email_Id",rs.getString("Email_Id"));
                         session.setAttribute("Password",rs.getString("Password"));
                      resp.setContentType("text/html");
                  out.println("<script type='text/javascript'>");
                  out.println("alert('Login Successful')");
                  out.println("location='admin_home.jsp'");
                  out.println("</script>");
                    }
                    else
                    {
                        resp.setContentType("text/html");
                  out.println("<script type='text/javascript'>");
                  out.println("alert('Login Unsuccsessful')");
                  out.println("location='admin_login.jsp'");
                  out.println("</script>");
                    }
                    
                }
                catch(Exception ex)
                {
                    out.println(ex.toString());
                }
            }
        }
    }
}
 

   