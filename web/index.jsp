<%-- 
    Document   : index
    Created on : Oct 10, 2017, 10:30:41 PM
    Author     : HUSEYN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login Page</title>
    </head>
    <body>
        
        
          <%
            
        response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
            
        if (session.getAttribute("username")!=null){
        
        response.sendRedirect("welcome.jsp");
        }  
  
        String name=(String)session.getAttribute("username");
        
        %>
        
        
        <form action="login" method="POST">
            insert username <input type="text" name="uname"><br>
            insert password <input type="password" name="pass"><br>
            <input type="submit" value="login">
        </form>

    </body>
</html>
