<%-- 
    Document   : dealtype
    Created on : 17-Jul-2017, 13:48:18
    Author     : Ngoc
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Modal.typeDealObj"%>
<%@page import="Dao.typeDealDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script language="javascript">
            function confirmComplete(typedealId) {
            var answer=confirm("Bạn muốn xóa loại giao dịch?");
            if (answer==true)
              {
                window.location = 'deleteTypeDeal.jsp?typedealId='+typedealId;
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
                            <td class="inputtable"><label>Tên loại giao dịch</label></td>
                            <td class="inputtable"><input type="text" name="typedealName" class="form-control"/></td>
                            <td class="inputtable"><button type="submit" class="btn btn-success btnaddprofile">Thêm loại giao dịch</button></td>
                        </tr>
                    </table>
                    </div>
                </form>
                <%
                    request.setCharacterEncoding("UTF-8");
                    String typedealName = request.getParameter("typedealName");
                    typeDealDAO typedealDAO = new typeDealDAO();
                    try{
                        typedealDAO.addTypeDeal(typedealName);
                    }
                    catch(Exception e){
                    }
                %>
                <div class="tblcontent">
                <table class="table table-bordered table-striped table-hover">
               <thead>
                <tr>
                    <th>Mã loại giao dịch</th>
                    <th>Tên loại giao dịch</th>
                    <th>Sửa</th>
<!--                    <th>Xóa</th>-->
                </tr>
               </thead>
               <tbody>
                <% 
                    ArrayList<typeDealObj> list = new ArrayList<typeDealObj>();
                    list = typedealDAO.getAllTypeDeal();
                    for(typeDealObj typedeal : list){ 
                %>
                <tr>
                    <td><%=typedeal.getTypedealId()%></td>
                    <td><%=typedeal.getTypedealName()%></td>
                    <td>
                        <a href="updateTypeDeal.jsp?typedealId=<%=typedeal.getTypedealId()%>"><button type="submit" class="btn btn-primary">Sửa</button></a>
                    </td>
<!--                    <td>
                        <input type="button" class="btn btn-danger" name="delete" value="Xóa" onclick="return confirmComplete(<%=typedeal.getTypedealId()%>)" >
                    </td>-->
                </tr>
                <% } %>
               </tbody>
            </table>
        </div>
            </div
        </div>
    </body>
</html>
