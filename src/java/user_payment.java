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
public class user_payment extends HttpServlet {
    
     Connection cn=null;
    Statement st=null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
          PrintWriter out= resp.getWriter();
          HttpSession session=req.getSession();
          
          Database db=new Database();
          String result=db.Connectdb();
          out.println(result);
           
         String Payment_Mode = req.getParameter("Payment_Mode");
         String Price = req.getParameter("Price1");
         String Quantity = req.getParameter("Quantity1");
         String Tax = req.getParameter("Tax1");
         String Amount = req.getParameter("Amount");
       
         
         out.println(Payment_Mode);
         out.println(Price);
         out.println(Quantity);
         out.println(Tax);
         out.println(Amount);
        
            String event=req.getParameter("submit");
            
        if(event.equals("Submit"))
         {
             if(Payment_Mode.equals("")||Price.equals("")||Quantity.equals("")||Tax.equals("")||Amount.equals(""))
             {
                  resp.setContentType("text/html");
                  out.println("<script type='text/javascript'>");
                  out.println("alert('some fields are empty')");
                  out.println("location='user_payment.jsp'");
                  out.println("</script>");             
             }
             else
             {
                 try
                 {
                    Date date= new Date();
                    SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
                    String today = formatter.format(date);
                     
                    String sql= "insert into user_payment(user_id,Email_ID,Consignment_No,Payment_Mode, Price, Quantity, Tax, Amount)values('"+session.getAttribute("user_id")+"', '"+session.getAttribute("Email_Id") +"' ,'"+session.getAttribute("Consignment_No") +"','"+Payment_Mode+"','"+Price+"','"+Quantity+"','"+Tax+"','"+Amount+"')";
                    String insert=db.Insert(sql);
                    out.println(insert);
                     
                    session.setAttribute("Payment_Mode", Payment_Mode);
                    session.setAttribute("Price", Price);
                    session.setAttribute("Quantity", Quantity);
                    session.setAttribute("Tax", Tax);
                    session.setAttribute("Amount", Amount);
                     
                    String sql1= "insert into tracking(user_id,Consignment_No, Booking_Date,Booking_Mode,Parcel_Type,Price,branch_name,city,status, date)values('"+session.getAttribute("user_id")+"', '"+session.getAttribute("Consignment_No")+"','"+session.getAttribute("Booking_Date")+"','"+session.getAttribute("Booking_Mode")+"','"+session.getAttribute("Weight")+"','"+session.getAttribute("Quantity")+"','"+session.getAttribute("Parcel_Type")+"','"+session.getAttribute("Price")+"', 'Pending', date)";
                    String insert1=db.Insert(sql);
                    out.println(insert1);
                    
                    String sql2= "insert into user_courierinformation(user_id,Email_ID,Consignment_No, Booking_Date,Booking_Mode,Weight,Quantity,Parcel_Type,Price,status,city,pincode,rcity,rpincode)values('"+session.getAttribute("user_id")+"', '"+session.getAttribute("Email_Id")+"', '"+session.getAttribute("Consignment_No")+"','"+session.getAttribute("Booking_Date")+"','"+session.getAttribute("Booking_Mode")+"','"+session.getAttribute("Weight")+"','"+session.getAttribute("Quantity")+"','"+session.getAttribute("Parcel_Type")+"','"+session.getAttribute("Price")+"', 'Pending','"+session.getAttribute("City") +"','"+session.getAttribute("Pin_Code") +"','"+session.getAttribute("rCity") +"','"+session.getAttribute("rPin_code") +"')";
                    String insert2=db.Insert(sql2);
                    out.println(insert2);

                    resp.setContentType("text/html");
                    out.println("<script type='text/javascript'>");
                    out.println("alert('Payment Successful')");
                    out.println("location='user_home.jsp'");
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