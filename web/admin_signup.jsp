<%-- 
    Document   : admin_signup
    Created on : 28 Feb, 2023, 9:30:04 AM
    Author     : vaishnavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
         <style><%@include file="css/admin_signup.css" %></style>
          <style><%@include file="css/user_navbar.css"%></style>
               <script type="text/javascript" src="css/validation.js"></script>
        
    </head>
    <body style=" background-image: url(images/admin.jpg);">
        
        
            <nav class="navbar" style="height: 70px; margin-top: 1px;">
  <ul class="menu">
    <li style="font-size: 20px; background-color: red; height: 70px;"><a>Courier Tracking...</a></li>
    <li><a href="index.jsp">Home</a></li> 
    <li><a href="admin_login.jsp">Login</a> </li>  
    <li><a href="admin_signup.jsp">Signup</a></li>
     <li><a href=""></a></li>
       <li><a href=""></a></li>
         <li><a href=""></a></li>
  
</nav>
        
         <form name="admin_signup" action="admin_signup" method="post">
             <div class="whitediv">
                 <label style="padding-left: 200px;"><center> SIGNUP </center></label>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab"> First Name:</label></div>
                <div class="col-sm-5"><input type="text" class="textbox" name="First_name" onkeypress="return isString(event);" placeholder="Enter Firstname"></div>
            </div>
                 
           
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab"> Last Name:</label></div>
                <div class="col-sm-5"><input type="text" class="textbox" name="Last_name" onkeypress="return isString(event);" placeholder="Enter Lastname"></div>
            </div>
           
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab"> Email ID:</label></div>
                <div class="col-sm-5"><input type="Email" class="textbox" name="Email_Id" placeholder="Enter Email Id"></div>
            </div>
        
        
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab">  Password:</label></div>
                <div class="col-sm-5"><input type="Password" class="textbox" name="Password" placeholder="Enter passwor"></div>
            </div>
        
           
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab"> Confirm Password:</label></div>
                <div class="col-sm-5"><input type="Password" class="textbox" name="Confirm_password" placeholder="Enter Confirm passowrd"></div>
                <input type="submit" class="button" value="Submit" name="submit"><br> 
            </div>
          </div>
         </form>
    </body>
</html>
