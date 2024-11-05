<%-- 
    Document   : user_pendingorder
    Created on : 17 Feb, 2023, 8:35:36 PM
    Author     : vaishnavi
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="branch_navbar.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pending Order</title>
         <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        
        <link rel="stylesheet" type="text/css" href="css/pendingorder.css">
    </head>
     <body> 
         <h1> User Pending Order</h1>
 

         <table class="container" style="margin-top: 150px;">
	<thead>
		<tr>
			<th>ID</th>
			<th>user id</th>
			<th>Consignment No</th>
			<th>Booking Date</th>
                        <th>Booking Mode</th>
                        <th>Weight</th>
			<th>Parcel Type</th>
			<th>Price</th>
			<th>City</th>
                        <th>Pincode</th>
                        <th>Order</th>
                        
		</tr>
	</thead>
	<tbody>
		    <%
            Connection cn = null;
            Statement st = null;
            
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinecouriertracking","root","root");
            st=cn.createStatement();
                    
            String sql = "select * from user_courierinformation ";
            ResultSet rs = st.executeQuery(sql);
            
            while(rs.next())
            {

        %>  
        
        <form name="admin_pending_orders" action="admin_pending_orders" method="post">
            <input type="hidden" name="ci_id" value="<%=rs.getString("ci_id")%>">
        <tr>
          <td><%= rs.getString("ci_id")%></td>
          <td><%= rs.getString("user_id")%></td>
          <td><%= rs.getString("Consignment_No")%></td> 
          <td><%= rs.getString("Booking_Date")%></td>
          <td><%= rs.getString("Booking_Mode")%></td>
          <td><%= rs.getString("Weight")%></td>
          <td><%= rs.getString("Parcel_Type")%></td>
          <td><%= rs.getString("Price")%></td>
          <td><%= rs.getString("rcity")%></td>
          <td><%= rs.getString("rpincode")%></td>
          <td><input type="submit" name="submit" value="Process Order"></td>
        </tr>
        </form>
        <%
              }
        %>
                
		 
	</tbody>
</table>
</body>
