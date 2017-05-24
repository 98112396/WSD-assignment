<%-- 
    Document   : main
    Created on : 2017. 5. 10, 오후 5:38:37
    Author     : user
--%>

<%@page import="uts.wsd.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="style.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FlightTicket</title>
    </head>
    <header>
        <h1>FlightTicket!</h1>
    </header>
    <body>

         <%
             User user = (User)session.getAttribute("user");
             
             if(user != null){
                String name = user.getName();
                String tye = user.getType();
                if(user.getType().equals("admin"))
                {
         %>
        
                <p align = "right">Welcome! <%=name%> | <a href="admin.jsp">Admin</a> | <a href="booking.jsp">Booking</a> | <a href="logout.jsp">LogOut</a></p>
                        <form action="result.jsp" method="post">
         <%
                     } 
                else{
         %>
         <p align = "right">Welcome! <%=name%> | <a href="booking.jsp">Booking</a> | <a href="logout.jsp">Logout</a></p>
                        <form action="result.jsp" method="post">
         <%       
            }}
             else{
         %>
         <p class="right"><a href="login.jsp">Login</a> | <a href="register.jsp">Registers</a></p>
        
                <form action="result.jsp" method="post">
          <%
              }
          %>
          <table class="contents">
                <tr><td>City</td><td>
                         <select name="firstCity">
                            <option value ="Sydney">Sydney
                            <option value ="Melbourne"> Melbourne
                            <option value ="Brisbane"> Brisbane
                            <option value ="Perth"> Perth
                            <option value ="Adelaide"> Adelaide   
                        </select>
                    </td>
                    <td>
                      <select name="secondCity">
                            <option value ="Sydney">Sydney
                            <option value ="Melbourne"> Melbourne
                            <option value ="Brisbane"> Brisbane
                            <option value ="Perth"> Perth
                            <option value ="Adelaide"> Adelaide   
                        </select>    
                    </td></tr>
                <tr><td>Type</td><td>Business<input type = "radio" name = "types" value = "Business">
                         Economy<input type = "radio" name = "types" value = "Economy"></td></tr>
                <tr><td>Departure Date</td><td><input type="date" name="dDate"></td></tr>
                <tr><td>Return Date</td><td><input type="date" name="rDate"></td></tr>
               <tr><td></td><td><input type = "submit" value = "Search"></td></tr>
               <tr><td></td><td><input type = "hidden" name = "submitted" value = "yes" ></td></tr>
            </table>
        </form>
        </body>
        <footer>
            <p>FlightTicket</p>
        </footer>
</html>
