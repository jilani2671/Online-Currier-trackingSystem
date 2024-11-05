<%-- 
    Document   : branchlogin
    Created on : 27 Jan, 2023, 7:38:43 PM
    Author     : vaishnavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Branch Login</title>
     <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/branch_login.css">
              <script type="text/javascript" src="css/validation.js"></script>
               
        <style>
         
body
{
  background-image: url(images/26.jpg);
    background-repeat: no-repeat;
    background-size: 550px;
}


.whitediv
{
    height: 450px;
    width: 40%;
    background-color:transparent ;
    border-radius: 20px;
    margin-left: 600px;
    margin-top: 40px;
    outline: 5px solid;
    outline-width: 7px;
    outline-color: red;
  }
 

.textbox
{
    height: 40px;
    width: 200px;
    margin-left: 40px;
    margin-top: 20px;
    border-radius: 10px;
    background-color: #f2dede;
     
}


.button
{
    height: 50px;
    width: 40%;
    margin-left: 150px;
    margin-top: 10%;
    background-color: orange;   
    color: black;
    border-width: 7px;
    border-color: blue;
}

 
.lab
{
    font-size: 20px;
    margin-top: 30px;
}   
            
    .navbar {
  background-color: #25283D;
  color: black;
  border-radius: 4px;
  width: 100vw;
  max-width: 1400px;
  margin: 20px auto 0;

  
}

.navbar .menu {
  display: flex;
  position: relative;
}

@media (max-width: 820px) {
  .navbar .menu {
    display: block;
    position: relative;
  }
}

.navbar .menu li {
  flex: 1;
  display: flex;
  text-align: center;
  transition: background-color 0.5s ease;
}

.navbar .menu a {
  flex: 1;
  justify-content: center;
  display: inline-flex;
  color: #ffffff;
  text-decoration: none;
  padding: 20px;
  position: relative;
}

.navbar .menu a > .fa {
  font-weight: bold;
  margin-left: 8px;
}

.navbar .menu li:hover {
  background-color: #8F3985;
}

.navbar .menu li:hover .container {
  display: flex;
}

@media (max-width: 820px) {
  .navbar .menu li:hover .container {
    display: none;
  }
  
  .fa-angle-down {
    display: none;
  }
}

a.hasDropdown:after {
  position: absolute;
  bottom: -16px;
  left: 50%;
  transform: translateX(-50%);
  height: 0;
  width: 0;
  border: 8px solid transparent;
  border-top-color: #25283d;
  z-index: 2;
}

@media (max-width: 820px) {
  li:hover a.hasDropdown:after {
    display: none;
  }
}

li:hover a.hasDropdown:after {
  content: '';
  border-top-color: #8F3985;
}

/* End Navigation Bar */

/* Start Single Section Menu */

.container {
  display: none;
  position: absolute;
  top: 56px;
  left: 0;
  right: 0;
  background-color: #ffffff;
  box-shadow: 0 2px 0 rgba(0, 0, 0, 0.06);
  padding: 20px;
  text-align: left;
  margin-bottom: 30px;
}

.container__list {
  flex: 1;
  display: flex;
  flex-wrap: wrap;
  min-width: 0;
}

.container__listItem {
  flex: 0 0 25%;
  padding: 10px 30px;
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
}

.container__listItem > div {
  color: #DB6356;
  text-decoration: underline;
  cursor: pointer;
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
}

/* End Single Section Menu */

/* Start Multiple Section Menu */
.container.has-multi .container__listItem {
  flex-basis: 100%;
}

.container.has-multi .container__list {
  flex-basis: 33.333%;
  border-radius: 4px;
}

.container.has-multi .container__list:not(:last-child) {
  border-right: solid 1px #f3f3f3;
  margin-right: 20px;
}        
            
            
            
        </style>
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
        <form action="branch_login" name="branch_login" method="post">
        <div class="whitediv"><br>
             <h1><center>Branch Login</center></h1><br>
           <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab">Email Id:</label></div>
                <div class="col-sm-5"><input type="text" class="textbox" name="Email_ID" onkeypress="return isNumbar(event);" placeholder="Enter Email Id"></div>
            </div>
             <br>
             
             <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><label class="lab"> Password:</label></div>
                <div class="col-sm-5"><input type="Password" class="textbox" name="Password" placeholder="Enter Password"></div>
            </div>
             <br>
             <br>
              <input type="submit" class="button" name="submit" value="Submit"><br> 
        </div>
        </form>
    </body>
</html>

