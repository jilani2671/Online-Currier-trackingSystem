<%-- 
    Document   : branch_signup
    Created on : 9 Mar, 2023, 11:36:16 AM
    Author     : vaishnavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/branch_signup.css"%></style>
              <script type="text/javascript" src="css/validation.js"></script>
    </head>
    <body>
        
        
         <nav class="navbar" style="height: 70px; margin-top: 1px;">
  <ul class="menu">
    <li style="font-size: 20px; background-color: red; height: 70px;"><a>Courier Tracking...</a></li>
    <li><a href="index.jsp">Home</a></li> 
    <li><a href="branch_login.jsp">Login</a> </li>  
    <li><a href="branch_signup.jsp">Signup</a></li>
     <li><a href=""></a></li>
       <li><a href=""></a></li>
         <li><a href=""></a></li>
  
</nav>
        <form name="branch_signup" action="branch_signup" method="post">
             <div class="whitediv">
  <label class="h1" style="padding-left: 150px;" >Branch Signup</label><br><br>            
                <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab">Branch Name:</label></div>
                <div class="col-sm-5"><input type="text" class="textbox" name="First_name" onkeypress="return isString(event);" placeholder="Enter Firstname"></div>
            </div>
               
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab">Email ID:</label></div>
                <div class="col-sm-5"><input type="Email" class="textbox" name="Email_Id" placeholder="Enter Email Id"></div>
            </div>
        
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab">City</label></div>
                <div class="col-sm-5"><input type="text" class="textbox" name="city"   placeholder="Enter city"></div>
            </div>
  
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab">Pincode</label></div>
                <div class="col-sm-5"><input type="text" class="textbox" name="pincode"   placeholder="Enter Pincode"></div>
            </div>
        
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab">Password:</label></div>
                <div class="col-sm-5"><input type="Password" class="textbox" name="Password"   placeholder="Enter password"></div>
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
