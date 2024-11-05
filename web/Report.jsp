<%-- 
    Document   : Report
    Created on : 5 May, 2023, 12:25:55 PM
    Author     : Padmbhushan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
         <style><%@include file="css/Report.css"%></style>
    </head>
    <body>
        <form name="Report" action="Report_view.jsp" method="post">
        <div class="whitediv">
            <label>Reports</label>
            <div class="row">
            <div class="col-sm-6">
                <input type="submit" class="btn" value="Courier Information" name="submit">
                <input type="submit" class="btn" value="Pickup Address" name="submit">
            </div>
            <div class="col-sm-6">
                <input type="submit" class="btn" value="Receiverdetails" name="submit">
                <input type="submit" class="btn" value="Payment" name="submit">
            </div>
            </div>
            <input type="submit" class="btn1" value="User list" name="submit">
        </div>
        </form>
    </body>
</html>
