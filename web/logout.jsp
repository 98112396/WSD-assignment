<%-- 
    Document   : logout
    Created on : 28/03/2017, 4:06:48 PM
    Author     : 11661143
--%>

<%@page import = "uts.wsd.*"contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="style.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <header>
        <h1>FlightTicket!</h1>
    </header>
    <body>
        <%
            session.invalidate();
        %>
        <p class = "center">You have been logged out. Click <a href="main.jsp">here</a> to return to the main page</p>
    </body>
    <footer>
    <p>FlightTicket</p>
    </footer>    
</html>
