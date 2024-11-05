<%-- 
    Document   : user_login
    Created on : 25 Jan, 2023, 10:26:36 AM
    Author     : vaishnavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Login</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/user_login.css">
           <script type="text/javascript" src="css/validation.js"></script>
           <style><%@include file="css/user_navbar.css"%></style>
        <style>
  body{
 
    background-image: url(images/6.jpg); 
    background-repeat: no-repeat;
    background-size: 1280px;
    
}

  
.whitediv
{
    height: 550px;
    width: 80%;
   
    margin-left: 10px;
    margin-top: 2%;
   
    height: 500px;
    width: 1100px;
    }
.h
{
    font-size: 15px;
    margin-left: 200px;
    margin-top: 0.2px;
    color: blue;
    
}
.box
{
    height: 450px;
    width: 400px;
    
    background-color:  whitesmoke;
    margin-top: 50px;
    margin-left: 800px;
    opacity: 50%;
}
.textbox
{
    height: 40px;
    width: 250px;
    border-radius: 10px;
    margin-left: 40px;
    margin-top: 40px;
}
.button
{
    height: 50px;
    width: 220px;
    margin-left: -70px;
    margin-top: 40px;
    background-color: orange;   
    color: black;
    border-width: 7px;
    border-color: blue;
}
        </style>
    </head>
    
    <body>
        
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
        
        <form name="user_login" action="user_login" method="post">
         
           <div class="col-sm-6">
                <div class="box"><br>
                    <h1><b><center> Login</center></b></h1>
                    <input type="text" class="textbox" name="Email_Id" onkeypress="return isString(event);" placeholder="Email"><br>
                    <input type="Password" class="textbox" name="Password" placeholder="Password"><br><br>
                   
                    <div class="col-sm-4"> <input type="checkbox">  Remember</div>
                    <div class="col-sm-2"></div>
                    <a href="user_login.jsp">Forgot Password???</a>
                      <input type="submit" class="button" name="submit" value="login"><br> 
                      
                 </div>
                </div>
       
            
            <div class="col-sm-6">
                
            </div>
            
        </form>
    </body>
</html>
