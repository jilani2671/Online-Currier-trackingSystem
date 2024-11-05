<%-- 
    Document   : payment
    Created on : 27 Jan, 2023, 7:22:16 PM
    Author     : vaishnavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="user_navbar.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment</title>
               <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
               <style><%@include file="css/user_payment.css"%></style>   
               <script type="text/javascript" src="css/validation.js"></script>
               
               <script type="text/javascript">
                 function calculation()
                {
                  
                    var Price = document.getElementById("Price").value; 
                    var Amount = Number(Price)+((Price*18)/100);
                    
                    document.getElementById("Amount").value = Amount;
                    
                    
                };
            </script> 
    </head>
    <body onload="calculation()">
        <form action="user_payment" method="Post">
        <div class="whitediv">
            <center>  <h1> Payment</h1></center>
              
               <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab">Payment Mode:</label></div>
                <div class="col-sm-5"><input type="text" class="textbox" name="Payment_Mode" onkeypress="return isString(event);"  placeholder=""></div>
            
            </div>
              
                <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab">Price:  </label></div>
                <div class="col-sm-5">
                    <input type="hidden" name="Price1" value="<%=session.getAttribute("Price")%>">
                    <input type="text" class="textbox" name="Price" id="Price" value="<%=session.getAttribute("Price")%>" disabled="true">
                </div>
            </div>
                <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab">Quantity:</label></div>
                <div class="col-sm-5">
                    <input type="hidden" name="Quantity1" value="<%=session.getAttribute("Quantity")%>">
                    <input type="text" class="textbox" name="Quantity" value="<%=session.getAttribute("Quantity")%>" disabled="true"></div>
            </div>
                <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab">Tax </label></div>
                <div class="col-sm-5">
                    <input type="hidden" name="Tax1" value="<%=session.getAttribute("Quantity")%>">
                    <input type="text" class="textbox" name="Tax" value="18%" id="Tax" onkeypress="return isNumber(event);" placeholder=""   disabled="true" ></div>
            </div>
                <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab">Amount  </label></div>
                <div class="col-sm-5"><input type="text" class="textbox" name="Amount" id="Amount" onkeypress="return isNumber(event);" placeholder=""></div>
            </div>
            <input class="button" name="submit" type="submit" value="Submit">
        </div>
    </form>
    </body>
</html>
