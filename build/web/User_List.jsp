<%-- 
    Document   : User_List
    Created on : 20 Feb, 2023, 9:51:07 AM
    Author     : vaishnavi
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="admin_navbar.jsp"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        
        <link rel="stylesheet" type="text/css" href="css/User_List.css">
    </head>
    <body>
        <section>
  <!--for demo wrap-->
  <h1>User List</h1>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>User ID</th>
          <th>First Name</th>
          <th>Last Name</th>
          <th>Email ID</th>
          <th>Password</th>
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
                    
            String sql = "select * from user_signup";
            ResultSet rs = st.executeQuery(sql);
            
            while(rs.next())
            {

        %>  
         
        <tr>
          <td><%= rs.getString("user_id")%></td>
          <td><%= rs.getString("First_name")%></td>
          <td><%= rs.getString("Last_name")%></td>
          <td><%= rs.getString("Email_Id")%></td>
          <td><%= rs.getString("Password")%></td>
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
