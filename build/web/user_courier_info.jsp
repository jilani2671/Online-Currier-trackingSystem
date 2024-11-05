<%-- 
    Document   : admin_viewcourier
    Created on : 15 Feb, 2023, 10:15:44 AM
    Author     : vaishnavi
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="user_navbar.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>courier list</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/user_courier_info.css" %></style>
    </head>
    <body>
       <section>
  <!--for demo wrap-->
  <h1>Courier Information</h1>
   <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>Consignment_No</th>
          <th>Booking_Date</th>
          <th>Booking_Mode</th>
          <th>Price</th>
          <th>Parcel_Type</th>
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
                    
            String sql = "select * from user_courierinformation";
            ResultSet rs = st.executeQuery(sql);
            
            while(rs.next())
            {

        %>  
         
        <tr>
          <td><%= rs.getString("Consignment_No")%></td>
          <td><%= rs.getString("Booking_Date")%></td>
          <td><%= rs.getString("Booking_Mode")%></td>
          <td><%= rs.getString("Price")%></td>
          <td><%= rs.getString("Parcel_Type")%></td>
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
