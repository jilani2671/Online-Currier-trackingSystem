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
public class branch_signup extends HttpServlet {
     Connection cn=null;
    Statement st=null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         PrintWriter out= resp.getWriter();
           HttpSession session=req.getSession();
           
           
          
        
         String First_name = req.getParameter("First_name"); 
         String Email_ID = req.getParameter("Email_Id");
         String Password = req.getParameter("Password");
         String Confirm_password = req.getParameter("Confirm_password");
         String city = req.getParameter("city");
         String pincode = req.getParameter("pincode");
         
         out.println(First_name); 
         out.println(Email_ID);
         out.println(Password);
         out.println(Confirm_password);
       
           Database db=new Database();
          String result=db.Connectdb();
          out.println(result);
         
           String event=req.getParameter("submit");
         if(event.equals("Submit"))
         {
             if(First_name.equals("")||Email_ID.equals("")||Password.equals("")||Confirm_password.equals(""))
             {
                  resp.setContentType("text/html");
                  out.println("<script type='text/javascript'>");
                  out.println("alert('some fields are empty')");
                  out.println("location=' brach_signup.jsp'");
                  out.println("</script>");             
             }
             else
             {
                 try
                 {
                     String sql= "insert into  branch_signup(First_name,Email_ID,Password,Confirm_password,city,pincode)values('"+First_name+"','"+Email_ID+"','"+Password+"','"+Confirm_password+"', '"+city+"', '"+pincode+"')";
                     String insert=db.Insert(sql);
                     out.println(insert);
                        resp.setContentType("text/html");
                        out.println("<script type='text/javascript'>");
                        out.println("alert('Signup Successfull')");
                        out.println("location=' branch_login.jsp'");
                        out.println("</script>");
                 }
                 catch(Exception ex)
                 {
                     out.println(ex.toString());
                 }
               }
             }
         }
}
   
    
    

   