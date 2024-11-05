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
public class branch_pending_orders extends HttpServlet {
    
    Connection cn = null;
    Statement st = null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
        PrintWriter out = resp.getWriter();
        HttpSession session = req.getSession();
        
        String Consignment_No = req.getParameter("Consignment_No");
        String event = req.getParameter("submit");
        
        if(event.equals("Process Order"));
        {
            session.setAttribute("Consignment_No", Consignment_No);
            resp.sendRedirect("branch_courier_details.jsp");
        
        }
        
        
    }
     
}