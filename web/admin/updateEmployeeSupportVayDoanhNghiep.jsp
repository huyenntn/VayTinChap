<%-- 
    Document   : updateEmployeeSupportVayDoanhNghiep
    Created on : 19-Jul-2017, 01:49:46
    Author     : Ngoc
--%>

<%@page import="Dao.customerDAO"%>
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
            <div class="container">
                <%
                   request.setCharacterEncoding("UTF-8");
                   int customerId = Integer.parseInt(request.getParameter("customerId"));
                   int employeeId = Integer.parseInt(request.getParameter("employeeId"));
                   customerDAO customerDAO = new customerDAO();
                   int result = customerDAO.updateCustomerByEmployee(employeeId, customerId);
                   response.sendRedirect("customerVayDoanhNghiep.jsp");
               %>
            </div>
        </div>
    </body>
</html>
