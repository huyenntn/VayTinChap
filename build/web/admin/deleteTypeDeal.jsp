<%-- 
    Document   : deleteTypeDeal
    Created on : 17-Jul-2017, 22:35:05
    Author     : Ngoc
--%>

<%@page import="Dao.typeDealDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="nav.jsp"/>
        <div class="wrapper">
             <%
                 request.setCharacterEncoding("UTF-8");
                 int typedealId = Integer.parseInt(request.getParameter("typedealId"));
                typeDealDAO typeDealDAO = new typeDealDAO();
                typeDealDAO.deleteTypeDealById(typedealId);
                response.sendRedirect("typedeal.jsp");
             %>
        </div>
    </body>
</html>
