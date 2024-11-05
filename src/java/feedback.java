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
public class feedback extends HttpServlet {
    
    Connection cn=null;
    Statement st=null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         
          PrintWriter out= resp.getWriter();
            HttpSession session=req.getSession();
          
          Database db=new Database();
          String result=db.Connectdb();
          out.println(result);
         
           
         String Coustomer_Name = req.getParameter("Coustomer_Name");
         String Email_ID = req.getParameter("Email_ID");
         String Feedback = req.getParameter("Feedback");
         
         
         out.println(Coustomer_Name);
         out.println(Email_ID);
         out.println(Feedback);
        
          String event=req.getParameter("submit");
         if(event.equals("Send"))
         {
             if(Coustomer_Name.equals("")||Email_ID.equals("")||Feedback.equals(""))
             {
               resp.setContentType("text/html");
                  out.println("<script type='text/javascript'>");
                  out.println("alert('some fields are empty')");
                  out.println("location='feedback.jsp'");
                  out.println("</script>");
             }
             else
             {
                 try
                 {
                     String sql= "insert into feedback(Coustomer_Name,Email_ID,Feedback)values('"+Coustomer_Name+"','"+Email_ID+"','"+Feedback+"')";
                       String insert=db.Insert(sql);
                     out.println("records inserted successfully");
                 }
                 catch(Exception ex)
                 {
                     out.println(ex.toString());
                 }
                     
         }
    }
       
    }

    
}