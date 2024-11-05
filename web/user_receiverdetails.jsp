<%-- 
    Document   : receiverdetails
    Created on : 27 Jan, 2023, 7:31:55 PM
    Author     : vaishnavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="user_navbar.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Receiver Detail</title>
        
      <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
         <style><%@include file="css/user_receiverdetails.css"%></style>
            <script type="text/javascript" src="css/validation.js"></script>
     </head>
    <body>
          <form name="user_receiverdetails" action="user_receiverdetails" method="post">
        <div class="whitediv"> 
            <center><h1>Receiver Details</h1></center>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab"> Name:</label></div>
                <div class="col-sm-5"><input type="text" class="textbox" name="Name" onkeypress="return isString(event);" placeholder="Enter Username"></div>
            </div>
                 
           
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab"> Email ID:</label></div>
                <div class="col-sm-5"><input type="Email" class="textbox" name="Email_Id" placeholder="Enter Email Id"></div>
            </div>
           
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab"> Phone No:</label></div>
                <div class="col-sm-5"><input type="text" class="textbox" name="Phone_No" onkeypress="return isNumber(event);" placeholder="Enter  Phone No"></div>
            </div>
            
             <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab">Address:</label></div>
                <div class="col-sm-5"><input type="text" class="textbox" name="Address" onkeypress="return isString(event);" placeholder="Enter  Address"></div>
            </div>
        
            
             <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab"> City:</label></div>
                <div class="col-sm-5"><input type="text" class="textbox" name="City" onkeypress="return isStrings(event);" placeholder="Enter City"></div>
            </div>
        
            
             <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab">Pin Code:</label></div>
                <div class="col-sm-5"><input type="text" class="textbox" name="Pin_code" onkeypress="return isNumber(event);" placeholder="Enter  Pin Code"></div>
            </div>
            
            
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab">  State:</label></div>
                <div class="col-sm-5"><select class="textbox" name="State" onkeypress="return isString(event);"> 
                        <option>Select</option>
                        <option>maharashtra</option>
                        <option>Gujarat</option>
                         <option>Goa</option>
                          <option>Karnataka</option>
                           <option>Keral</option>
                            <option>Punjab</option>
                    </select></div>
            </div>
        
           
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab"> Country:</label></div>
                <div class="col-sm-5"><input type="text" class="textbox" name="Country" onkeypress="return isString(event);" placeholder="Enter  Country"></div>
            </div>
            
            
            
           <input type="submit" class="button" name="submit" value="Submit"><br> 
          </div>
    </form>
    </body>
</html>

