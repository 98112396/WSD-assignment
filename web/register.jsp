<%-- 
    Document   : register
    Created on : 2017. 5. 11, 오후 2:13:47
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="style.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
        <header>
        <h1>FlightTicket!</h1>
    </header>
    <body>
                <h1 class="center">Register</h1>
        <form action = "registered.jsp" method = "post">
            <table class = "tables"> 
            <tr><td>Full name</td><td><input type = "text" name = "name"></td></tr>
            <tr><td>Email</td><td><input type = "email  " name = "email"></td></tr>
            <tr><td>Password</td><td><input type = "password" name = "password"></td></tr>
            <tr><td>Date of Birth</td><td><input type="date" name="dob"></td></tr>
            <tr><td></td><td><input type = "submit" value = "Register"></td></tr>
            </table>
        </form>    
    </body>
        <footer>
            <p>FlightTicket</p>
        </footer>
</html>
