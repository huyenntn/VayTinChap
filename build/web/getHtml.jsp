<%-- 
    Document   : getHtml
    Created on : 23-Jul-2017, 21:16:12
    Author     : Ngoc
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Modal.htmldisplayObj"%>
<%@page import="Dao.htmldisplayDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            htmldisplayDAO htmldisplayDAO = new htmldisplayDAO();
            htmldisplayObj htmlObj = new htmldisplayObj();
            ArrayList <htmldisplayObj> list = new ArrayList<>();
            htmlObj = htmldisplayDAO.getHtmlById(1);
            request.setAttribute("htmlobj", htmlObj.getHtmlcode());
            response.sendRedirect("editor.jsp");
        %>
    </body>
</html>
