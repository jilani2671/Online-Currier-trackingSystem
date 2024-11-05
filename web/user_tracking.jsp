<%-- 
    Document   : user_tracking
    Created on : 5 Mar, 2023, 8:38:23 PM
    Author     : vaishnavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="user_navbar.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Track Courier</title>
           <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
         <style><%@include file="css/user_tracking.css"%></style>
         
    </head>
    <body>
        <form name="user_tracking" action="user_tracking" method="post">
          <div class="whitediv">
            <div class="h">
                <center><h1>Track Courier</h1></center>
            </div><br><br>
            <div class="h2">
                <label>  Consignment No:</label></div><br>
            <div class="h3">
            <input type="text" class="textbox" name="Consignment No">
            </div><br>
            
             <input type="submit" class="button" name="submit" value="Track"><br> 
        </div>
        </form>
    </body>
</html>
