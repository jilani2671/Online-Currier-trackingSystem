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
public class user_courierinformation extends HttpServlet {
    
     Connection cn=null;
    Statement st=null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         
          PrintWriter out= resp.getWriter();
            HttpSession session=req.getSession();
          
           Database db=new Database();
          String result=db.Connectdb();
          out.println(result);
          
         String  Consignment_No = req.getParameter("Consignment_No1");
         String Booking_Date = req.getParameter("Booking_Date");
         String Booking_Mode =     req.getParameter("Booking_Mode");
         String  Weight =  req.getParameter("Weight");
         String Quantity = req.getParameter("Quantity");
         String Parcel_Type =     req.getParameter("Parcel_Type");
         String  Price =  req.getParameter("Price");
         String  Price1 =  req.getParameter("Price1");
         String event=req.getParameter("submit");
         
         
          out.println(Consignment_No);
         out.println(Booking_Date);
         out.println(Booking_Mode);
         out.println(Weight);
          out.println(Quantity);
         out.println(Parcel_Type);
         out.println(Price);
         out.println(event); 
         
         
          if(event.equals("Save"))
          {
              if(Consignment_No.equals("")|| Booking_Date.equals("")||Booking_Mode.equals("")||Weight.equals("")||Quantity.equals("")||Parcel_Type.equals("")||Price.equals(""))
              {
                  resp.setContentType("text/html");
                  out.println("<script type='text/javascript'>");
                  out.println("alert('some fields are empty')");
                  out.println("location='user_courierinformation.jsp'");
                  out.println("</script>");
              }
              else
              {
                  try
                  {
                       
                       
                       session.setAttribute("Consignment_No",Consignment_No);
                       session.setAttribute("Booking_Date",Booking_Date);
                       session.setAttribute("Booking_Mode",Booking_Mode);
                       session.setAttribute("Weight",Weight);
                       session.setAttribute("Quantity",Quantity);
                       session.setAttribute("Parcel_Type",Parcel_Type);
                       session.setAttribute("Price",Price1);
                       
                       
                       resp.setContentType("text/html");
                       out.println("<script type='text/javascript'>"); 
                       out.println("location='user_receiverdetails.jsp'");
                       out.println("</script>");
                       
                  }
                  catch(Exception ex)
                  {
                      out.println(ex.toString());
                  }
              }
          }

          
         if(event.equals("Update"))
         {
             if(Consignment_No.equals("")|| Booking_Date.equals("")||Booking_Mode.equals("")||Weight.equals("")||Quantity.equals("")||Parcel_Type.equals("")||Price.equals(""))
              {
                  out.println("something is empty");
              }
             else
             {
                 try
                 {
                     String update = db.update("update user_courierinformation  set Consignment_No = '"+Consignment_No+"',Booking_Date='"+Booking_Date+"', Booking_Mode='"+Booking_Mode+"', Weight='"+Weight+"' , Quantity='"+Quantity+"', Parcel_Type='"+Parcel_Type+"' , Price='"+Price1+"' where Consignment_No='"+Consignment_No+"' ");
                     out.println(update);
                 }
                 catch(Exception ex)
                 {
                     out.println(ex.toString());
                 }
             }
         }
          
          
          if(event.equals("Delete"))
          {
              if(Consignment_No.equals(""))
              {
                  out.println("Please provide consignment number");
              }
              else
              {
                  try
                  {
                      String delete = db.delete("delete from user_courierinformation where Consignment_No = '"+Consignment_No+"'");
                      out.println(delete);
                  }
                  catch(Exception ex)
                  {
                      out.println(ex.toString());
                  }
              }
          }
          
           
    }   }

    
