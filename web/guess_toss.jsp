<%-- 
    Document   : guess_toss
    Created on : Mar 3, 2025, 8:37:10 PM
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
        <h1>Toss guess</h1>
        
         <%
               String computerName = pageContext.getServletContext().getInitParameter("computer_name");
               String username = (String) session.getAttribute("name");
        %>
        
        <p>
               Hi <b><%=username%></b>. I'm <b><%=computerName%></b> has tossed the coin. Please guess the  toss.
            
        </p>
        <form action="GuessServlet.do" method="POST">
          
                
                    <tr>
                        <td>Your guess</td>
                        <td>
                            <select name="guess">
                                <option value = "Heads">Heads</option>
                                <option value="Tails">Tails</option>
                            </select>
                            
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="GUESS" /></td>
                    </tr>
               
            </table>

            
        </form>
        
    </body>
</html>
