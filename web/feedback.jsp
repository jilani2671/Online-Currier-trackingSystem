<%-- 
    Document   : feedbak
    Created on : 29 Jan, 2023, 3:00:17 PM
    Author     : vaishnavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="user_navbar.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feed Back</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/feedback.css">
           <script type="text/javascript" src="css/validation.js"></script>
        <style>
            
            
 body
{
     background-image: url(images/42.jpg);
    background-repeat: no-repeat;
    background-size: 1480px;
     background-position: center;
}


.whitediv
{
    height: 450px;
    width: 500px;
    background-color:  transparent;
     margin-left: 700px;
    margin-top: 40px;
     outline: 5px solid;
}

.textbox
{
    height: 40px;
    width: 200px;
    margin-left: 40px;
    margin-top: 30px;
    border-radius: 10px;
     
}


.button
{
    height: 50px;
    width: 50%;
    margin-left: 25%;
    margin-top: 15%;
    border: none;
    background-color: orange;  
    border-radius: 10px;
    color: white;
}


.lab
{
    font-size: 20px;
    margin-top: 30px;
}
        </style>
         </head>
    <body>
        <form action="feedback" method="post">
        <div class="whitediv"> 
            <h1>  <label style="padding-left: 170px;"> <center> Feedback</center></label></h1>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab"> Coustomer Name:</label></div>
                <div class="col-sm-5"><input type="text" class="textbox" name="Coustomer_Name" onkeypress="return isString(event);" placeholder="Enter Coustomer Name "></div>
            </div>
              <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab"> Email ID:</label></div>
                <div class="col-sm-5"><input type="Email" class="textbox" name="Email_ID" placeholder="Enter Email Id"></div>
            </div>
            
              <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab"> Feedback:</label></div>
                <div class="col-sm-5"><input type="text" class="textbox" name="Feedback" placeholder="Enter Feedback"></div>
            </div>
             <input type="submit" class="button" name="submit" value="Send"><br> 
        </div>
        </form>
    </body>
</html>
