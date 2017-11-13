<%-- 
    Document   : welcome
    Created on : Oct 10, 2017, 10:28:39 PM
    Author     : HUSEYN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>welcome Page</title>
    </head>
    <body>

        <%
            
        response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
            
        if (session.getAttribute("username")==null){
        
        response.sendRedirect("index.jsp");
        }  
  
        String name=(String)session.getAttribute("username");
        
        %>
        
        welcome <%= name %>
        
        <a href="videos.jsp"> Videolara bax</a>
        <a href="aboutus.jsp"> Haqqimizda</a>

        
        <form action="logout" method="GET">
          <input type="submit" value="logout">  
        </form>

    </body>
</html>
