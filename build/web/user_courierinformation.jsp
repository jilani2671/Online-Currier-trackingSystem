<%-- 
    Document   : courireinformation
    Created on : 25 Jan, 2023, 12:43:27 PM
    Author     : vaishnavi
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="user_navbar.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Courier Information </title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/user_courierinformation.css"%></style>
           <script type="text/javascript" src="css/validation.js"></script>
        <style>
            body
{
  background-color: lightyellow;
  
   }

.whitediv
  {
                
    height: 500px;
    width: 870px;
    background-color:lightblue;
    margin-top: 20px;
    margin-left: 200px;
    box-shadow: 4px 4px white;
    border-radius: 50px;
   
  }
  label
  {
      font-size: 20px;
      color: black;
      margin-left: 20px;
  }
            .button
            {
                height: 40px;
                width: 180px;
                background-color: red;
                margin-top: 30px;
                margin-left: 50px;
                border-radius: 10px;
                color: white;
            }
            .h12
            {
                color: orangered;
                 color: red;
                 margin-left: 250px;
                
            }
        </style>
        
        <script type="text/javascript">
                function calculation()
                {
                    var parsel_type = document.getElementById("ptype").value;
                    var weight = document.getElementById("weight").value;
                    var quantity = document.getElementById("qty").value; 
                    if(parsel_type==="Non-Commercial")
                        {
                             
                            document.getElementById("price1").value = weight*10*quantity;
                            document.getElementById("price2").value = weight*10*quantity;
                        }
                        else if(parsel_type==="Commercial")
                            {
                                document.getElementById("price1").value = weight*20*quantity;
                                document.getElementById("price2").value = weight*20*quantity;
                            }
                    
                };
            </script> 
            
            
         </head>
    <body>
        <form action="user_courierinformation"  name="user_courierinformation" method="post">
            
            <%
                    Connection cn = null; long co_no = 1234567890;
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinecouriertracking","root","root");
                    Statement st = cn.createStatement();
                    
                    String sql = "select * from  user_courierinformation  ";
                     ResultSet rs = st.executeQuery(sql);
                    
                    while(rs.next())
                    {
                         co_no = Long.parseLong(rs.getString("Consignment_No"))+1;
                    }

            %>
            
          <div class="whitediv"><br>
              <h1 class="h12">Courier Information</h1><br><br>
        <div class="row">
            <div class="col-sm-3"><label>Consignment No :</label> </div>
            <div class="col-sm-3">
                <input class="h" type="text" name="Consignment_No" onkeypress="return isNumber(event);" value="<%=co_no%>" placeholder="Consignment_No" disabled="true" >
                <input type="hidden" name="Consignment_No1" value="<%=co_no%>">
            </div> 
              <div class="col-sm-3"><label>Booking Date :</label></div>  
              <div class="col-sm-3"><input class="h" type="date" name="Booking_Date"></div>
        </div><br><br>
                        
                           
        <div class="row">
            <div class="col-sm-3"><label>Booking Mode:</label></div>   
            <div class="col-sm-3"><select class="h" name="Booking_Mode"><option>Select</option><option>Online</option><option>Offline</option></select></div>  
            <div class="col-sm-3"><label>Parcel Type</label> </div>
            <div class="col-sm-3">
                <select  name="Parcel_Type" class="h" id="ptype">
                    <option value="Select">Select</option>
                    <option value="Non-Commercial">Non-Commercial</option>
                    <option value="Commercial">Commercial</option>
                </select>
             </div>  
              
            
        </div><br><br>
                        
         <div class="row">
            <div class="col-sm-3"><label>Weight :</label></div>  
            <div class="col-sm-3"><input class="h" type="text" id="weight" name="Weight" onkeypress="return isNumber(event);" placeholder="Weight"></div> 
            <div class="col-sm-3"><label>Quantity :</label></div>   
            <div class="col-sm-3"><input class="h" type="text" id="qty" name="Quantity"   placeholder="Quantity" onkeyup="calculation()"></div>  
            
            
        </div><br><br>
                        
       <div class="row">
                
             <div class="col-sm-3"><label>Price:</label></div>  
             <div class="col-sm-3">
                 <input class="h" type="text" name="Price" id="price1" value="" onkeypress="return isNumber(event);" placeholder="Price">
                 <input type="hidden" name="Price1" id="price2" value="">
             </div>  <br> 
                 
        </div><br>
                        <div class="row">
                            <div class="col-sm-4"><input type="submit" name="submit" class="button" value="Save" style="background-color:red;"></div>
            
            <div class="col-sm-4"><input type="submit" class="button" name="submit" value="Update" style="background-color:orchid;"></div>
            
            <div class="col-sm-4"><input type="submit" class="button" name="submit" value="Delete" style="background-color: olivedrab;"></div>
        </div>    
                      
        </div>
            
                
            
        </form>
    </body>
</html>
