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
public class updatedetails extends HttpServlet {
    
     Connection cn=null;
    Statement st=null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
         PrintWriter out= resp.getWriter();
           HttpSession session=req.getSession();
         
          Database db=new Database();
          String result=db.Connectdb();
          out.println(result);
           
         String Receiver_Name = req.getParameter("Receiver_Name");
         String Receiver_Email = req.getParameter("Receiver_Email");
         String Tracking_No = req.getParameter("Tracking_No");
         String District = req.getParameter("District");
         String Product_Status = req.getParameter("Product_Status");
       
         
         out.println(Receiver_Name);
         out.println(Receiver_Email);
         out.println(Tracking_No);
         out.println(District);
         out.println(Product_Status);
         
         
         String event=req.getParameter("submit");
         if(event.equals("Insert"))
         {
             if(Receiver_Name.equals("")||Receiver_Email.equals("")||Tracking_No.equals("")||District.equals("")||Product_Status.equals(""))
             {
                 resp.setContentType("text/html");
                  out.println("<script type='text/javascript'>");
                  out.println("alert('some fields are empty')");
                  out.println("location='updatedetails.jsp'");
                  out.println("</script>");             }
             }
             else
             {
                 try
                 {
                     String sql= "insert into  updatedetails(Receiver_Name,Receiver_Email,Tracking_No,District,Product_Status)values('"+Receiver_Name+"','"+Receiver_Email+"','"+Tracking_No+"','"+District+"','"+Product_Status+"')";
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

    