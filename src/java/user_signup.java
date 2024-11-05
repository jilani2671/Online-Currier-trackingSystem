/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
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
public class user_signup extends HttpServlet {
    
     Connection cn=null;
    Statement st=null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out= resp.getWriter();
          HttpSession session=req.getSession();
        
          Database db=new Database();
          String result=db.Connectdb();
          out.println(result);
        
        String First_name = req.getParameter("First_name");
         String Last_name = req.getParameter("Last_name");
         String Email_Id = req.getParameter("Email_Id");
         String Password = req.getParameter("Password");
         String Confirm_password= req.getParameter("Confirm_password");
          String event = req.getParameter("submit");
         
         
         out.println(First_name);
         out.println(Last_name);
         out.println(Email_Id);
         out.println(Password);
         out.println(Confirm_password);
         out.println(event);
         
         
         
        
         if(event.equals("Submit"))
         {
             if(First_name.equals("")||Last_name.equals("")||Email_Id.equals("")||Password.equals("")||Confirm_password.equals(""))
             {
                  resp.setContentType("text/html");
                  out.println("<script type='text/javascript'>");
                  out.println("alert('some fields are empty')");
                  out.println("location='user_signup.jsp'");
                  out.println("</script>");
             }
             else
             {
                 try
                 {
                     String sql = "insert into user_signup(First_name,Last_name,Email_Id,Password,Confirm_password)values('"+First_name+"','"+Last_name+"','"+Email_Id+"','"+Password+"','"+Confirm_password+"')";
                     String insert=db.Insert(sql);
                     out.println(insert);
                     resp.setContentType("text/html");
                     out.println("<script type='text/javascript'>");
                     out.println("alert('Signed up Successfully')");
                     out.println("location='user_login.jsp'");
                     out.println("</script>");
                 }
                 catch (Exception ex)
                 {
                     out.println(ex.toString());
                     resp.setContentType("text/html");
                     out.println("<script type='text/javascript'>");
                     out.println("alert('"+ex.toString()+"')");
                     out.println("location='user_signup.jsp'");
                     out.println("</script>");
                 }
             }
         }
         
         
                
    }

}