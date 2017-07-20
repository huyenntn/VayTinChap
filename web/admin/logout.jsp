<%-- 
    Document   : logout
    Created on : 19-Jul-2017, 16:17:50
    Author     : Ngoc
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
            session.invalidate();
            response.sendRedirect("index.jsp");
        %>
    </body>
</html>
