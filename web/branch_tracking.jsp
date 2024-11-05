<%-- 
    Document   : admin_tracking
    Created on : 5 Mar, 2023, 8:38:01 PM
    Author     : vaishnavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="branch_navbar.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Track Courier</title>
          <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
         <style><%@include file="css/admin_tracking.css"%></style>
    </head>
    <body>
        
        <form name="branch_tracking" action="branch_tracking" method="post">
       <div class="whitediv">
            <div class="h">
                <center>Track Courier</center>
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
