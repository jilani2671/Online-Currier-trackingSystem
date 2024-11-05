<%-- 
    Document   : updatedetails
    Created on : 14 Feb, 2023, 7:34:41 PM
    Author     : vaishnavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Details</title>
         <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
         <style><%@include file="css/updatedetails.css"%></style>
           <script type="text/javascript" src="css/validation.js"></script> 
    </head>
    <body>
        <form action="updatedetails" method="post">
         <div class="whitediv"> 
             <center><h1>Update Details</h1></center>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab"> Receiver Name:</label></div>
                <div class="col-sm-5"><input type="text" class="textbox" name="Receiver_Name" onkeypress="return isString(event);" placeholder="Receiver Name"></div>
            </div>
                 
           
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab">Receiver Email:</label></div>
                <div class="col-sm-5"><input type="Email" class="textbox" name="Receiver_Email" placeholder="Receiver_Email"></div>
            </div>
           
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab"> Tracking No:</label></div>
                <div class="col-sm-5"><input type="text" class="textbox" name="Tracking_No" onkeypress="return isNumber(event);" placeholder="Tracking_No"></div>
            </div>
        
        
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab">  District :</label></div>
                <div class="col-sm-5"><input type="text" class="textbox" name="District" onkeypress="return isString(event);" placeholder="District"></div>
            </div>
        
           
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab"> Product Status:</label></div>
                <div class="col-sm-5"><input type="text" class="textbox" name="Product_Status" placeholder="Product_Status"></div>
            </div>
              <input type="submit" class="button" value="Insert" name="submit"><br> 
         </div>
        </form>
    </body>
</html>
