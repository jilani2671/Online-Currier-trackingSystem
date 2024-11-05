/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author vaishnavi
 */
public class admin_courier_details extends HttpServlet {
      Connection cn=null;
    Statement st=null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         
        PrintWriter out= resp.getWriter();
          HttpSession session=req.getSession();
         
          Database db=new Database();
          String result=db.Connectdb();
          out.println(result);
          
          
         String Consignment_No = req.getParameter("Consignment_No");
          String user_id = req.getParameter("user_id");
          String Delivered_ID = req.getParameter("Delivered_ID");
         String Booking_Date = req.getParameter("Booking_Date");
         String Booking_Mode = req.getParameter("Booking_Mode");
         String Weight =     req.getParameter("Weight");
         String  Quantity =  req.getParameter("Quantity");
         String Parcel_Type = req.getParameter("Parcel_Type");
         String Price =     req.getParameter("Price"); 
          String Change_Status =req.getParameter("Change_Status");
           String nextcity =req.getParameter("nextcity");
            String nextbranch =req.getParameter("nextbranch");
         String event=req.getParameter("submit");
         
         
             out.println(Delivered_ID);
         out.println(Booking_Date);
         out.println(Booking_Mode);
         out.println(Weight);
         out.println(Quantity);
          out.println(Parcel_Type);
         out.println(Price); 
         out.println(Change_Status);
         out.println(nextcity);
         out.println(nextbranch);
         out.println(event); 
         
         
          if(event.equals("Save"))
          {
              if(Delivered_ID.equals("")|| Booking_Date.equals("")||Booking_Mode.equals("")|| Weight.equals("")||Quantity.equals("")||Parcel_Type.equals("")|| Price.equals("")|| Change_Status.equals("")||nextcity.equals("")||nextbranch.equals(""))
              {
                   resp.setContentType("text/html");
                  out.println("<script type='text/javascript'>");
                  out.println("alert('some fields are empty')");
                  out.println("location=' admin_courier_details.jsp'");
                  out.println("</script>");
              }
              else
              {
                  try
                  {
                      Date date= new Date();
                      SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
                      String today = formatter.format(date);
                      
                      String sql= "insert into tracking(user_id,Consignment_No,Booking_Date,Parcel_Type,Price,branch_name,city,status, date)values('"+user_id+"','"+Consignment_No+"','"+Booking_Date+"','"+Parcel_Type+"','"+Price+"','"+nextcity+"','"+nextbranch+"', '"+Change_Status+"', '"+today+"')";
                      String insert=db.Insert(sql);
                      out.println(insert);
                      
                      String sql1 = "update user_courierinformation set status= '"+Change_Status+"' where Consignment_No='"+Consignment_No+"' ";
                      String update = db.update(sql1);
                      out.println(update);
                      
                       resp.sendRedirect("admin_pending_orders.jsp");
                  }
                  catch(Exception ex)
                  {
                      out.println(ex.toString());
                  }
              }
          }
         
       
    }  
}


  
    