<%-- 
    Document   : user_courier_order
    Created on : 20 Feb, 2023, 12:48:58 PM
    Author     : vaishnavi
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
           <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        
        <link rel="stylesheet" type="text/css" href="css/user_confirm_order.css">
        
    </head>
    <body>
        <section>
  <!--for demo wrap-->
  <h1>Confirm Order</h1>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>Id</th>
          <th>Consignment No</th>
          <th>Booking Date</th>
          <th>Booking Mode</th>
          <th>Quantity</th>
          <th>Price</th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
          <%
            Connection cn = null;
            Statement st = null;
            
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinecouriertracking","root","root");
            st=cn.createStatement();
                    
            String sql = "select * from  user_courierinformation";
            ResultSet rs = st.executeQuery(sql);
            
            while(rs.next())
            {

        %>  
        <tr>
          <td><%=rs.getString("user_id")%></td>
           <td><%=rs.getString("Consignment_No")%></td>
          <td><%=rs.getString("Booking_Date")%></td>
          <td><%=rs.getString("Booking_Mode")%></td>
          <td><%=rs.getString("Quantity")%></td>
           <td><%=rs.getString("Price")%></td>
            
        </tr>
        <%
               }
        %>
      </tbody>
    </table>
  </div>
</section>


<!-- follow me template -->
 
    </body>
</html>
