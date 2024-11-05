<%-- 
    Document   : branch_navbar
    Created on : 17 Mar, 2023, 7:52:46 PM
    Author     : vaishnavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
          <link rel="stylesheet" type="text/css" href="css/branch_navbar.css">
     </head>
         
        
        <!-- Start Navigation Bar -->
        <nav class="navbar" style="height: 70px; margin-top: 1px;">
  <ul class="menu">
    <li style="font-size: 20px; background-color: red; height: 70px;"><a>Courier Tracking...</a></li>
    <li><a href="branch_home.jsp">Home</a></li> 
    <li><a href="branch_pending_orders.jsp">New Couriers</a> </li>  
    <li><a href="branch_history.jsp">History</a></li>
    <li><a href="branch_tracking.jsp">Tracking</a></li>
    <li style="float: right;"><a href="branch_login.jsp">LOGOUT</a></li>
  
</nav>
<!-- End Navigation Bar -->
        
     </body>
</html>
