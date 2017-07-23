<%-- 
    Document   : deleteEmployee
    Created on : 17-Jul-2017, 23:17:24
    Author     : Ngoc
--%>

<%@page import="Dao.employeeDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="nav.jsp"/>
        <%
            int id = Integer.parseInt(request.getParameter("employeeId"));
            employeeDAO employeeDAO = new employeeDAO();
            employeeDAO.deleteEmployeeById(id);
            response.sendRedirect("employee.jsp");
        %>
    </body>
</html>
