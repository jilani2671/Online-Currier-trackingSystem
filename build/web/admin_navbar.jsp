<%-- 
    Document   : admin_navbar
    Created on : 17 Mar, 2023, 7:48:58 PM
    Author     : vaishnavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
       
      <style><%@include file="css/admin_navbar.css"%></style>

     </head>
      
        <nav class="navbar" style="height: 70px; margin-top: 1px;">
  <ul class="menu">
    <li style="font-size: 20px; background-color: red; height: 70px;"><a>Courier Tracking...</a></li>
    <li><a href="admin_home.jsp">Home</a></li> 
    <li><a href="User_List.jsp">List</a></li> 
    <li><a href="admin_pending_orders.jsp">New Couriers</a> </li>  
    <li><a href="admin_history.jsp">History</a></li>
    <li><a href="admin_tracking.jsp">Tracking</a></li> 
    <li style="float: right;"><a href="admin_login.jsp">LOGOUT</a></li>
  
</nav>
<!-- End Navigation Bar -->
   
</html>
