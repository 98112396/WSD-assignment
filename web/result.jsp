<%-- 
    Document   : result
    Created on : 2017. 5. 11, 오후 2:17:33
    Author     : user
--%>

<%@page import="uts.wsd.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="style.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result</title>
    </head>
    <header>
        <h1>FlightTicket!</h1>
    </header>
    <body>
        <h1 class = "center">Result</h1>
        <%
            User user =(User) session.getAttribute("user");
            if(user != null){
                String name = user.getName();
        %>
        <p class="right"><%=name%> | <a href="main.jsp">Back</a> | <a href="logout.jsp">Logout</a></p>
        <%
            }
            else{
        %>
        <p class="right"><a href="login.jsp">Login</a> | <a href="register.jsp">Registers</a> |<a href="main.jsp">Back</a></p>
        <%
            }
        %>
        <div class="result">
        <jsp:include page="search.jsp" flush="true" />
        </div>
    </body>
    <footer>
    <p>FlightTicket</p>
    </footer>
</html>
