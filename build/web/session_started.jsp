<%-- 
    Document   : session_started
    Created on : Mar 3, 2025, 7:52:52 PM
    Author     : Zanele
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Session started!</h1>
        
        <%
               String computerName = pageContext.getServletContext().getInitParameter("computer_name");
               String username = (String) session.getAttribute("name");
        %>
        
        <p>
            Hi <b><%=username%></b>. I'm <b><%=computerName%></b>. Your session has started.
            
            <br>
            
            Please click <a href="CoinTossingServlet.do">here</a> to start the coin tossing game.
        </p>
    </body>
</html>
