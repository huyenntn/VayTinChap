<%-- 
    Document   : deleteProfile
    Created on : 17-Jul-2017, 15:34:23
    Author     : Ngoc
--%>

<%@page import="Modal.profileObj"%>
<%@page import="Dao.profileDAO"%>
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
                 int profileId = Integer.parseInt(request.getParameter("profileId"));
                profileDAO profileDAO = new profileDAO();
                profileDAO.deleteProfileById(profileId);
                response.sendRedirect("profile.jsp");
             %>
        </div>
           
    </body>
</html>
