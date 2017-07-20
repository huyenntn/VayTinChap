<%-- 
    Document   : updateProfile
    Created on : 17-Jul-2017, 15:27:58
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
                profileObj profile = new profileObj();
                profile = profileDAO.getProfileById(profileId);
                String profileName = profile.getProfileName();
             %>
            <div class="container">
                <form method="POST">
                    <div class="table-responsive">
                    <table >
                        <tr>
                            <td class="inputtable"><label>Tên loại hồ sơ</label></td>
                            <td class="inputtable"><input type="text" name="profileNameUpdate" class="form-control" value="<%=profileName%>"/></td>
                            <td class="inputtable"><button type="submit" class="btn btn-success btnaddprofile">Cập nhật</button></td>
                        </tr>
                    </table>
                    </div>
                 </form>
              <%
                  
                  String profileNameUpdate = request.getParameter("profileNameUpdate");
                  try{
                      profileDAO.updateProfile(profileId, profileNameUpdate);
                      response.sendRedirect("profile.jsp");
                  }catch(Exception ex){
                      
                  }
              %>
            </div>
         </div>
    </body>
</html>
