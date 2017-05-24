<%-- 
    Document   : login
    Created on : 2017. 5. 11, 오후 2:09:34
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style.css" rel="stylesheet" type="text/css">
        <title>Login</title>
    </head>
        <header>
        <h1>FlightTicket!</h1>
        </header>
    <body>
                <h1 class="center">Login</h1>
        
        <form action = "loginAction.jsp" method = "post">
            <table class = "tables">
            <tr><td>Email</td><td><input type = "email" name = "email"></td></tr>
            <tr><td>Password</td><td><input type = "password" name = "password"></td></tr>
            <tr><td></td><td><input type = "submit" value = "Login"></td></tr>
            </table>
        </form>
    </body>
            <footer>
            <p>FlightTicket</p>
        </footer>
</html>
