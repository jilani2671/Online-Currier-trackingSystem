<%-- 
    Document   : sederdetail
    Created on : 26 Jan, 2023, 5:37:33 PM
    Author     : vaishnavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sender Detail</title>
         <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
         <style><%@include file="css/user_senderdetail.css"%></style>
            <script type="text/javascript" src="css/validation.js"></script>

      </head>
     <body> 
         <form  name="user_receiverdetails" action="user_senderdetails" method="post">
        <div class="whitediv"> 
            <div class="h">
                <center>SENDER DETAIL</center>
            </div>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab"> Username:</label></div>
                <div class="col-sm-5"><input type="text" class="textbox" name="User_name" onkeypress="return isString(event);" placeholder="Enter Username"></div>
            </div>
                 
           
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab"> Email ID:</label></div>
                <div class="col-sm-5"><input type="email" class="textbox" name="Email_Id" onkeypress="" placeholder="Enter Email Id"></div>
            </div>
           
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab"> Phone No:</label></div>
                <div class="col-sm-5"><input type="text" class="textbox" name="Phone_No" onkeypress="return isNumber(event);" placeholder="Enter  Phone No" onkeypress="return isNumber(event);"></div>
            </div>
        
        
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab">  State</label></div>
                <div class="col-sm-5"><input type="text" class="textbox" name="State" onkeypress="return isString(event);" placeholder="Enter State"></div>
            </div>
        
           
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab"> Country</label></div>
                <div class="col-sm-5"><input type="text" class="textbox" name="Country" onkeypress="return isString(event);" placeholder="Enter  Country"></div>
            </div>
           <input type="submit" class="button" value="submit" name="submit"><br> 
          </div>
     </form>      
    </body>
</html>
