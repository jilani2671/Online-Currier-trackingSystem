<%-- 
    Document   : registration
    Created on : 27 Jan, 2023, 7:11:52 PM
    Author     : vaishnavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <title> SIGHUP</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
         <style><%@include file="css/user_navbar.css"%></style>
        <link rel="stylesheet" type="text/css" href="css/user_signup.css">
        <script type="text/javascript" src="css/validation.js"></script>
        <style>


body
{
     background-image: url(images/60.jpg);
   background-size: cover;
     
}

.whitediv
{
    height: 550px;
    width: 500px;
    background-color:transparent ;
    margin-left: 700px;
    margin-top: 40px;
    outline: 5px solid;
}

.textbox
{
    height: 45px;
    width: 200px;
    margin-left: 40px;
    margin-top: 20px;
     
}



.button
{
    height: 50px;
    width: 60%;
    margin-left: 90px;
    margin-top: 5%;
    background-color: orange;   
    color: black;
    border-width: 7px;
    border-color: blue;
}

 
.lab
{
    font-size: 20px;
    margin-top: 30px;
}            
        </style>
    </head>
    <body>
        
        
         <form name="user_signup" action="user_signup" method="post">
             
              <nav class="navbar" style="height: 70px; margin-top: 1px;">
  <ul class="menu">
    <li style="font-size: 20px; background-color: red; height: 70px;"><a>Courier Tracking...</a></li>
    <li><a href="index.jsp">Home</a></li> 
    <li><a href="user_login.jsp">Login</a> </li>  
    <li><a href="user_signup.jsp">Signup</a></li>
     <li><a href=""></a></li>
       <li><a href=""></a></li>
         <li><a href=""></a></li>
  
</nav>
             
             
             <div class="whitediv">
          <h1> <center> SIGNUP </center></h1>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab">First Name:</label></div>
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
                <div class="col-sm-5"><input type="Password" class="textbox" name="Password"   placeholder="Enter passwor"></div>
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
