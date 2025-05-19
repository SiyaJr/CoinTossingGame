<%-- 
    Document   : summary
    Created on : Mar 3, 2025, 9:03:47 PM
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
        <h1>Summary</h1>
        
        <%
        
              int cnt = (Integer)session.getAttribute("cnt");
              int numCorrectGuesses = (Integer)session.getAttribute("numCorrectGuesses");
              String computerNAme = pageContext.getServletContext().getInitParameter("computer_name");
              String userName = (String) session.getAttribute("name");
              
        %>
        <table border="0">
          
                <tr>
                    <td>Number of tosses made by <b><%=computerNAme%></b></td>
                    <td><%=cnt%></td>
                </tr>
                
                <tr>
                    <td>Number of correct guesses by you:</td>
                    <td><%=numCorrectGuesses%></td>
                </tr>
         
        </table>

        
        
        
        
        
        <p>
            Please click <a href="EndSessionServlet.do">here</a> to end the session.
        </p>
    </body>
</html>
