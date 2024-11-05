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
public class admin_branchinformation extends HttpServlet {
    
    Connection cn=null;
    Statement st=null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         PrintWriter out= resp.getWriter();
           HttpSession session=req.getSession();
         
          Database db=new Database();
          String result=db.Connectdb();
          out.println(result);
         
           
         String Branch_ID = req.getParameter("Branch_ID");
         String Branch_Name = req.getParameter("Branch_Name");
         String Address = req.getParameter("Address");
         String Phone_No = req.getParameter("Phone_No");
         String City = req.getParameter("City");
         String Set_Password = req.getParameter("Set_Password");
        
         
         out.println(Branch_ID);
         out.println(Branch_Name);
         out.println(Address);
         out.println(Phone_No);
         out.println(City);
         out.println(Set_Password);
         
         
         
         String event=req.getParameter("submit");
         if(event.equals("Save"))
         {
             if(Branch_ID.equals("")||Branch_Name.equals("")||Address.equals("")||Phone_No.equals("")||City.equals("")||Set_Password.equals(""))
             {
                resp.setContentType("text/html");
                  out.println("<script type='text/javascript'>");
                  out.println("alert('some fields are empty')");
                  out.println("location='admin_branchadminformation.jsp'");
                  out.println("</script>");
             }
             else
             {
                 try
                 {
                     String sql= "insert admin_branchinformation(Branch_ID,Branch_Name,Address,Phone_No,City,Set_Password)values('"+Branch_ID+"','"+Branch_Name+"','"+Address+"','"+Phone_No+"','"+City+"','"+Set_Password+"')";
                     String insert=db.Insert(sql);
                     out.println(insert);
                 }
                 catch(Exception ex)
                 {
                     out.println(ex.toString());
                 }
             }
         }
            if(event.equals("Update"))
         {
             if(Branch_ID.equals("")||Branch_Name.equals("")|| Address.equals("")||Phone_No.equals("")||City.equals("")||Set_Password.equals(""))
              {
                  out.println("something is empty");
              }
             else
             {
                 try
                 {
                     String update = db.update("update admin_branchinformation  set Branch_ID = '"+Branch_ID+"',Branch_Name='"+Branch_Name+"', Address='"+Address+"', Phone_No='"+Phone_No+"' , City='"+City+"', Set_Password='"+Set_Password+"'");
                     out.println(update);
                 }
                 catch(Exception ex)
                 {
                     out.println(ex.toString());
                 }
             }
         
          
          
         
         }
         
         
    }

    
}