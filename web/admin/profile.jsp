<%-- 
    Document   : profile
    Created on : 17-Jul-2017, 13:49:58
    Author     : Ngoc
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Modal.profileObj"%>
<%@page import="Dao.profileDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script language="javascript">
            function confirmComplete(profileId) {
            var answer=confirm("Bạn muốn xóa hồ sơ");
            if (answer==true)
              {
                window.location = 'deleteProfile.jsp?profileId='+profileId;
                return true;
              }
            else
              {
                return false;
              }
            }
        </script>
    </head>
    <body>
        <jsp:include page="nav.jsp"/>

        <div class="wrapper">
        <div class="container">
                <form method="POST">
                    <div class="table-responsive">
                    <table >
                        <tr>
                            <td class="inputtable"><label>Tên loại hồ sơ</label></td>
                            <td class="inputtable"><input type="text" name="profileName" class="form-control"/></td>
                            <td class="inputtable"><button type="submit" class="btn btn-success btnaddprofile ">Thêm loại hồ sơ</button></td>
                        </tr>
                    </table>
                    </div>
                </form>
            <%
                request.setCharacterEncoding("UTF-8");
                String profileName = request.getParameter("profileName");
                profileDAO profileDAO = new profileDAO();
                try{
                    profileDAO.addProfile(profileName);
                }
                catch(Exception e){
                }
            %>
            <div class="tblcontent">
                <table class="table table-bordered table-striped table-hover">
               <thead>
                <tr>
                    <th>Mã hồ sơ</th>
                    <th>Tên hồ sơ</th>
                    <th>Sửa</th>
                    <th>Xóa</th>
                </tr>
               </thead>
               <tbody>
                <% 
                    ArrayList<profileObj> list = new ArrayList<profileObj>();
                    list = profileDAO.getAllProfile();
                    for(profileObj profile : list){ 
                %>
                <tr>
                    <td><%=profile.getProfileId() %></td>
                    <td><%=profile.getProfileName() %></td>
                    <td>
                        <a href="updateProfile.jsp?profileId=<%=profile.getProfileId()%>"><button type="submit" class="btn btn-primary">Sửa</button></a>
                    </td>
                    <td>
                        <input type="button" class="btn btn-danger" name="delete" value="Xóa" onclick="return confirmComplete(<%=profile.getProfileId()%>)" >
                    </td>
                </tr>
                <% } %>
               </tbody>
            </table>
        </div>
        </div>

        </div>
    </body>
</html>
