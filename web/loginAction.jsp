<%-- 
    Document   : loginAction
    Created on : 2017. 5. 12, 오후 3:32:21
    Author     : user
--%>

<%@page import="uts.wsd.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="style.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Action</title>
    </head>
       <header>
        <h1>FlightTicket!</h1>
    </header>
  <body>
        <% 
            String filePath = application.getRealPath("WEB-INF/users.xml"); 
            UserApplication userApp = new UserApplication();
            userApp.setFilePath(filePath);
            
        //<jsp:useBean id="userApp" class="uts.wsd.UserApplication" scope="application">
        //<jsp:setProperty name="userApp" property="filePath" value="<%=filePath%
        //</jsp:useBean>
        
             String email = request.getParameter("email");
            String password = request.getParameter("password");      
            Users users = userApp.getUsers();
            User user = users.login(email, password);
            
            if(user != null)
            {
               session.setAttribute("user", user);
          
        %>
        <p class = "center">Login successful. Click <a href = "main.jsp">here</a> to return to the main page.</p>
        <%  
            }

        else 
        {
        %>
        <div class = "center">
        <p>Password incorrect. Click here <a href = "login.jsp">here</a>to try again</p>
        <p>Or go back to <a href="main.jsp">main</a> page</p>
        </div>
        <%}%>
            
    </body>
    <footer>
    <p>FlightTicket</p>
    </footer>
</html>
