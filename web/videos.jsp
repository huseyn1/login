<%-- 
    Document   : videos
    Created on : Oct 10, 2017, 10:30:04 PM
    Author     : HUSEYN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
         
        response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
    
            
        if (session.getAttribute("username")==null){
        response.sendRedirect("index.jsp");
        }   
        
        %>
        
        <iframe width="560" height="315" src="https://www.youtube.com/embed/tmwfRBbkCIo" frameborder="0" allowfullscreen></iframe>
        
        <iframe width="560" height="315" src="https://www.youtube.com/embed/JCzQlITdBcs" frameborder="0" allowfullscreen></iframe>
    </body>
</html>
