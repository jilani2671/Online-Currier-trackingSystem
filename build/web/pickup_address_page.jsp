<%-- 
    Document   : addresspage
    Created on : 29 Jan, 2023, 3:02:25 PM
    Author     : vaishnavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="user_navbar.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Address Page</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
         <style><%@include file="css/pickup_address_page.css"%></style>
   <script type="text/javascript" src="css/validation.js"></script>
    </head>
    <body> 
        <form action="pickup_address_page" name="pickup_address_page" method="post">
    <div class="whitediv"> 
        <center>    <h1> Pickup Address Page</h1></center>
         <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab"> NamePerson:</label></div>
                <div class="col-sm-5"><input type="text" class="textbox" name="Name_person" onkeypress="return isString(event);" placeholder="Name_person"></div>
            </div>
        
        
        
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab">AddressLine1:</label></div>
                <div class="col-sm-5"><input type="text" class="textbox" name="Address_Line1" placeholder="Address Line1"></div>
            </div>
                 
           
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab"> AddressLine2:</label></div>
                <div class="col-sm-5"><input type="text" class="textbox" name="Address_Line2" placeholder="Address Line2"></div>
            </div>
           
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab"> Pin Code:</label></div>
                <div class="col-sm-5"><input type="text" class="textbox" name="Pin_Code" onkeypress="return isNumber(event);" placeholder=" Pin code"></div>
            </div>
         <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab"> City:</label></div>
                <div class="col-sm-5"><input type="text" class="textbox" name="City" onkeypress="return isString(event);" placeholder="City"></div>
            </div>
        
        
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab">  State</label></div>
                <div class="col-sm-5"><input type="text" class="textbox" name="State" onkeypress="return isString(event);" placeholder="State"></div>
            </div>
        
           
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab"> Country</label></div>
                <div class="col-sm-5"><input type="text" class="textbox" name="Country" onkeypress="return isString(event);" placeholder=" Country"></div>
            </div>
        <input class="button" type="Submit" name="submit" value="submit">
          </div>
        
    
    
    
    
        </form>
    </body>
    
</html>
