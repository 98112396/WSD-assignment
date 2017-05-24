<%-- 
    Document   : registered
    Created on : 2017. 5. 11, 오후 2:32:23
    Author     : user
--%>

<%@page import="uts.wsd.*" import="java.util.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="style.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome!</title>
    </head>
    <header>
        <h1>FlightTicket!</h1>
    </header>
    <body>
            <% String filePath = application.getRealPath("WEB-INF/users.xml");%>
            
            <%
                int id = (new Random()).nextInt(999);
                String name = request.getParameter("name");
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                String dob = request.getParameter("dob");
                String type = "user";
            %>
            <jsp:useBean id="userApp" class="uts.wsd.UserApplication" scope="application">
            <jsp:setProperty name="userApp" property="filePath" value="<%=filePath%>"/>
            </jsp:useBean>
            <% 
                Users users = userApp.getUsers();
            
                if(users.getEmail(email) == null)
                {
            %>
            <div class="center">
            <h1>You are successfully registered!</h1>
            <p>Welcome, <%= name %> !</p> 
            <p>Your email is <%= email%></p>
            <p>Your password is <%= password%></p>       
            <%
                User user = new User(id, name, email,password,dob, type);
                session.setAttribute("user",user);
                users.addUser(user);
                userApp.updateXML(users, filePath);
            %>
            <p>Click <a href="main.jsp"> here </a> to proceed to the main page.</p>
            </div>
            <%
                }
                else{
            %>
            <div class="center">
            <p>Sorry, you already registered by current email</p>
            <p>Click<a href="register.jsp"> here</a> to go back</p>
            </div>
            <%}%>
    </body>
      <footer>
            <p>FlightTicket</p>
      </footer>
</html>
