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
public class user_receiverdetails extends HttpServlet {
    
     Connection cn=null;
    Statement st=null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
           PrintWriter out= resp.getWriter();
             HttpSession session=req.getSession();
           
         Database db=new Database();
          String result=db.Connectdb();
          out.println(result);
          
         String Name= req.getParameter("Name"); 
         String Email_Id = req.getParameter("Email_Id");  
         String Phone_No = req.getParameter("Phone_No");
         String  Address = req.getParameter("Address");
         String City  = req.getParameter("City");
         String  Pin_code  = req.getParameter("Pin_code");
         String State =     req.getParameter("State");
         String  Country =  req.getParameter("Country");
       
          
         out.println(Name); 
         out.println(Email_Id);  
         out.println(Phone_No);
         out.println(Address);
         out.println(City); 
         out.println(Pin_code);
         out.println(State);
         out.println(Country);
         out.println(Email_Id);
         
         
         
             String event=req.getParameter("submit");
         if(event.equals("Submit"))
         {
             if(Name.equals("")||Email_Id.equals("")||Phone_No.equals("")||Address.equals("")||City.equals("")||Pin_code.equals("")|| State.equals("")||Country.equals(""))
             {
                resp.setContentType("text/html");
                  out.println("<script type='text/javascript'>");
                  out.println("alert('some fields are empty')");
                  out.println("location='user_receiverdetails.jsp'");
                  out.println("</script>");             
             }
             
             else
             {
                 try
                 {
                     String sql= "insert into  user_receiverdetails(user_id, Email_Id, Receiver_Name,Receiver_Email,phone_No, Address,City, Pin_code,state,Country)values('"+session.getAttribute("user_id") +"','"+session.getAttribute("Email_Id") +"','"+Name+"','"+Email_Id+"','"+Phone_No+"','"+ Address+"','"+City+"','"+Pin_code+"','"+State+"','"+Country+"')";
                     String insert=db.Insert(sql);
                     out.println(insert);
                     
                         session.setAttribute("Name", Name); 
                         session.setAttribute("Email_Id", Email_Id); 
                         session.setAttribute("Phone_No", Phone_No);
                         session.setAttribute("Address", Address);
                         session.setAttribute("rCity", City);
                         session.setAttribute("rPin_code", Pin_code);
                         session.setAttribute("State", State);
                         session.setAttribute("Country", Country);
                             
                        out.println(insert);
                        resp.setContentType("text/html");
                        out.println("<script type='text/javascript'>");
                        out.println("alert('Recort insrtes successfull')");
                        out.println("location='pickup_address_page.jsp'");
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


