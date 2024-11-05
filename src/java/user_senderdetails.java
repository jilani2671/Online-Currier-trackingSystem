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
public class user_senderdetails extends HttpServlet {
    
    Connection cn=null;
    Statement st=null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
     PrintWriter out= resp.getWriter();
       HttpSession session=req.getSession();

        Database db=new Database();
          String result=db.Connectdb();
          out.println(result);
     
     
         String User_name = req.getParameter("User_name");
          String Email_Id = req.getParameter("Email_Id");
         String Phone_No = req.getParameter("Phone_No");
         String State = req.getParameter("State");
         String  Country =  req.getParameter("Country");
           String event=req.getParameter("submit");
         
         
          out.println(User_name);
         out.println(Email_Id);
         out.println(Phone_No);
         out.println(State);
         out.println(Country);
        out.println(event);
         
         if(event.equals("submit"))
         {
             if(User_name.equals("")||Email_Id.equals("")||Phone_No.equals("")||State.equals("")||Country.equals(""))
                     {
                         resp.setContentType("text/html");
                  out.println("<script type='text/javascript'>");
                  out.println("alert('some fields are empty')");
                  out.println("location='user_senderdetail.jsp'");
                  out.println("</script>");                
             
            }
                     
         else
         {
           try
            {
             String sql= "insert into  user_senderdetail(Email_ID, user_name, phone_No, state, Country)values('"+Email_Id+"','"+User_name+"','"+Phone_No+"','"+State+"','"+Country+"')";
                     String insert=db.Insert(sql);
                     out.println(insert);
                     
              }
                 catch(Exception ex)
                 {
                     out.println(ex.toString());
                 }
                     
         }
         }
    }
}
         
           
        
             
        

         
    