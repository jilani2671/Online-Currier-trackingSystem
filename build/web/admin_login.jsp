<%-- 
    Document   : admin
    Created on : 15 Feb, 2023, 9:11:30 AM
    Author     : vaishnavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
         <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/admin_login.css">
         <style><%@include file="css/user_navbar.css"%></style>
              <script type="text/javascript" src="css/validation.js"></script>
             
        <style>
            body
{
   background-image: url(images/re1.jpg);
   background-repeat: no-repeat;
   background-size: 1400px;
 
}


.whitediv
{
    height: 550px;
    width: 80%;
   
    margin-left: 20px;
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
    background-color: white;
    margin-top: 50px;
    margin-left: 50px;
    opacity: 50%;
    border-radius: 10px;
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
    height: 40px;
    width: 180px;
    margin-top: 40px;
    margin-left: 100px;
    background-color: orange;
    color: white;
    border-radius: 10px;
    border: none;
}
        </style>
    </head>
    <body>
        
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
        
         <form name="admin_login" action="admin_login" method="post">
          <div class="col-sm-6">
                <div class="box"><br>
                    <center> <h1> Admin Login</h1></center>
                    <input type="text" class="textbox" name="Email_ID" onkeypress="return isString(event);" placeholder="Email_ID"><br>
                    <input type="Password" class="textbox" name="Password"  placeholder="Password" id="typepass"><br><br>
                   
                    <div class="col-sm-4"> <input type="checkbox"> Remember</div>
                    <div class="col-sm-2"></div>
                    <div class="col-sm-5">Forgot Password</div>
                      <input type="submit" class="button" name="submit" value="login"><br> 
                 </div>
                </div>
       
            
            <div class="col-sm-6">
                
            </div>
            
        
    </form>
    </body>
</html>
