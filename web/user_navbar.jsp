<%-- 
    Document   : user_navbar
    Created on : 17 Mar, 2023, 7:34:27 PM
    Author     : vaishnavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/user_navbar.css"%></style>
        
     </head>
     
         
        
        <!-- Start Navigation Bar -->
        <nav class="navbar" style="height: 70px; margin-top: 1px;">
  <ul class="menu">
    <li style="font-size: 20px; background-color: red; height: 70px;"><a>Courier Tracking...</a></li>
    <li><a href="user_home.jsp">Home</a></li> 
    <li><a href="user_courierinformation.jsp">New Courier</a> </li>  
    <li><a href="user_courier_info.jsp">History</a></li>
    <li><a href="user_tracking.jsp">Tracking</a></li>
    <li><a href="feedback.jsp">Feedback</a></li>
    <li style="float: right;"><a href="user_login.jsp">LOGOUT</a></li>
  
</nav>
<!-- End Navigation Bar -->
        
       
</html>
