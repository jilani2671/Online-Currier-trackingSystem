<%-- 
    Document   : admin_courier_details
    Created on : 5 Mar, 2023, 11:10:24 AM
    Author     : vaishnavi
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="admin_navbar.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Courier Details</title>
         <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/admin_courier_details.css"%></style>
        <style>
            .button
{
    height: 50px;
    width: 150px;
    margin-left: 500px;
    margin-top: -38px;
    background-color: orange;   
    color: black;
    border-width: 7px;
    border-color: blue;
}
        </style>
        
    </head>
    <body>
        <form action="admin_courier_details" name="admin_courier_details" method="post">
            
        <%
            Connection cn = null;
            Statement st = null;
            
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinecouriertracking","root","root");
            st=cn.createStatement();
                    
            String sql = "select * from user_courierinformation where ci_id = '"+session.getAttribute("ci_id")+"' ";
            ResultSet rs = st.executeQuery(sql);
            
            while(rs.next())
            {

        %>     
            
            
         <div class="whitediv">
             <input type="hidden" name="user_id" value="<%=rs.getString("user_id")%>">
             <input type="hidden" name="Consignment_No" value="<%=rs.getString("Consignment_No")%>">
             <label class="h1" style="padding-left: 350px;" >Courier Details</label><br><br>
              <div class="row">
              <div class="col-sm-3"><label class="lab"> Courier ID :</label></div>
              <div class="col-sm-3"><input type="text" class="textbox" name="Delivered_ID" value="<%=rs.getString("ci_id")%>"></div>
              <div class="col-sm-3"><label class="lab">Booking Date:</label></div>
              <div class="col-sm-3"><input type="Date" class="textbox" name="Booking_Date" value="<%=rs.getString("Booking_Date")%>"></div>
         </div><br><br>
         <div class="row">
            <div class="col-sm-3"><label class="lab"> Booking Mode:</label></div>
              <div class="col-sm-3"><input type="text" class="textbox" name="Booking_Mode" value="<%=rs.getString("Booking_Mode")%>"></div>
              <div class="col-sm-3"><label class="lab"> Weight:</label></div>
              <div class="col-sm-3"><input type="text" class="textbox" name="Weight" value="<%=rs.getString("Weight")%>"></div>  
         </div><br><br>
          <div class="row">
            <div class="col-sm-3"><label class="lab"> Quantity:</label></div>
            <div class="col-sm-3"><input type="text" class="textbox" name="Quantity" value="<%=rs.getString("Quantity")%>"></div>
              <div class="col-sm-3"><label class="lab"> Parcel Type:</label></div>
              <div class="col-sm-3"><select  class="textbox" name="Parcel_Type" value="<%=rs.getString("Parcel_Type")%>">
                      <option>Parcel Type</option>
                      <option>Non-Commercial</option>
                      <option>Commercial</option>
                      
                  </select> </div>  
         </div><br><br>
          <div class="row">
            <div class="col-sm-3"><label class="lab">Price:</label></div>
            <div class="col-sm-3"><input type="text" class="textbox" name="Price" value="<%=rs.getString("Price")%>"></div>
              <div class="col-sm-3"><label class="lab"> Status:</label></div>
              <div class="col-sm-3"><input type="text" class="textbox" name="Status" value="<%=rs.getString("status")%>"></div>  
         </div><br><br>
         
         <div class="h">
             Select Details to Send for next Address
         </div><br><br>
         
         <div class="row">
             <div class="col-sm-3"><label class="lab">Change Status:</label></div>
             <div class="col-sm-3"><select  class="textbox" name="Change_Status">
                     <option>Select Status</option>
                 <option>Confirm</option>
                 <option>Cancel</option>
                 </select> </div>
             <div class="col-sm-3"><label class="lab">Send to City</label></div>
             <div class="col-sm-3">
                 <select  class="textbox" name="nextcity">
                      <%
                        Connection cn2 = null;
                        Statement st2 = null;

                        Class.forName("com.mysql.jdbc.Driver");
                        cn2=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinecouriertracking","root","root");
                        st2=cn2.createStatement();
                        String sql2 = "select * from branch_signup ";
                        ResultSet rs2= st2.executeQuery(sql2);
            
                        while(rs2.next())
                        {
                        %>     
                        <option value="<%=rs2.getString("city")%>"><%=rs2.getString("city")%></option>
                      <% } %>
                      </select>
             </div>
              </div><br><br>
              <div class="row">
                  <div class="col-sm-3"><label class="lab">Send to Branch:</label></div>
                  <div class="col-sm-3">
                      <select  class="textbox" name="nextbranch">
                      <%
                        Connection cn1 = null;
                        Statement st1 = null;

                        Class.forName("com.mysql.jdbc.Driver");
                        cn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinecouriertracking","root","root");
                        st1=cn1.createStatement();
                        String sql1 = "select * from branch_signup ";
                        ResultSet rs1= st1.executeQuery(sql1);
            
                        while(rs1.next())
                        {
                        %>     
                        <option value="<%=rs1.getString("First_name")%>"><%=rs1.getString("First_name")%></option>
                      <% } %>
                      </select>
                  </div>
              </div>
              
               <div class="col-sm-4"><input type="submit" name="submit" class="button" value="Save"></div>
            
         </div>
        
        <% } %>
        </form>
    </body>
</html>
