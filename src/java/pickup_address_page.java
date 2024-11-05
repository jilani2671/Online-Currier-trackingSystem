/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author vaishnavi
 */
public class pickup_address_page extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
          PrintWriter out= resp.getWriter();
           HttpSession session=req.getSession();

        
         String  Name_person = req.getParameter("Name_person"); 
         String Address_Line1 = req.getParameter("Address_Line1");
         String Address_Line2 = req.getParameter("Address_Line2");
         String Pin_Code = req.getParameter("Pin_Code");
         String  City = req.getParameter("City");
         String State = req.getParameter("State");
         String Country = req.getParameter("Country");
         
         out.println(Name_person);
         out.println(Address_Line1);
         out.println(Address_Line2);
         out.println(Pin_Code);
          out.println(City);
         out.println(State);
         out.println(Country);
       
          Database db=new Database();
          String result=db.Connectdb();
          out.println(result);
        
         
           String event=req.getParameter("submit");
         if(event.equals("submit"))
         {
             if(Name_person.equals("")||Address_Line1.equals("")||Address_Line2.equals("")||Pin_Code.equals("")||City.equals("")|| State.equals("")||Country.equals(""))
             {
                   resp.setContentType("text/html");
                  out.println("<script type='text/javascript'>");
                  out.println("alert('some fields are empty')");
                  out.println("location='pickup_address_page.jsp'");
                  out.println("</script>");             }
             else
             {
                 try
                 {
                      String sql= "insert into pickup_address_page(user_id, Email_ID, reciever_name, Receiver_Email, Consignment_No, Name_person, Address_Line1,Address_Line2,Pin_Code,City,State,Country)values('"+session.getAttribute("user_id") +"', '"+session.getAttribute("Email_Id") +"', '"+session.getAttribute("reciever_name") +"', '"+session.getAttribute("Receiver_Email") +"', '"+session.getAttribute("Consignment_No") +"','"+Name_person+"','"+Address_Line1+"','"+Address_Line2+"','"+Pin_Code+"','"+City+"','"+State+"','"+Country+"')";
                      String insert=db.Insert(sql);
                      out.println(insert);
                      
                      session.setAttribute("Pin_Code",Pin_Code);
                      session.setAttribute("City", City);
                      
                      resp.setContentType("text/html");
                      out.println("<script type='text/javascript'>");
                      out.println("alert('Record insert successfully')");
                      out.println("location='user_payment.jsp'");
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

   