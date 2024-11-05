<%-- 
    Document   : index
    Created on : 11 Jan, 2023, 10:45:52 AM
    Author     : vaishnavi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Page</title>
        <style>
            body{
                background-image: url('images/mainpage.jpg');
                background-repeat: no-repeat;
                background-size:cover;
            }
            
            .abc
            {
                height: 50px;
                width: 400px;
                background-color: transparent;
                margin: 22% 0 0 58%;
            }
            
            ul, li, a
            {
                list-style: none;
                text-decoration: none;
                display: inline;
                font-size: 20px; 
                padding: 0 0 0 20px;
                color: blue;
            }
        </style>
    </head>
    <body>
        <div class="abc">
            <br>
            <ul>
                <li><a href="admin_login.jsp">Admin</a></li>
                <li><a href="branch_login.jsp">Branch</a></li>
                <li><a href="user_home2.jsp">User</a></li>
            </ul>
        </div>
    </body>
</html>
