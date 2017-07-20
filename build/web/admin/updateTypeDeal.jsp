<%-- 
    Document   : updateTypeDeal
    Created on : 17-Jul-2017, 22:33:56
    Author     : Ngoc
--%>

<%@page import="Dao.typeDealDAO"%>
<%@page import="Modal.typeDealObj"%>
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
                typeDealObj typedeal = new typeDealObj();
                typedeal = typeDealDAO.getTypeDealById(typedealId);
                String typedealName = typedeal.getTypedealName();
             %>
            <div class="container">
                <form method="POST">
                    <div class="table-responsive">
                    <table >
                        <tr>
                            <td class="inputtable"><label>Tên loại giao dịch</label></td>
                            <td class="inputtable"><input type="text" name="typedealNameUpdate" class="form-control" value="<%=typedealName%>"/></td>
                            <td class="inputtable"><button type="submit" class="btn btn-success btnaddprofile">Cập nhật</button></td>
                        </tr>
                    </table>
                    </div>
                 </form>
              <%
                  
                  String typedealNameUpdate = request.getParameter("typedealNameUpdate");
                  try{
                      typeDealDAO.updateTypeDeal(typedealId, typedealNameUpdate);
                      response.sendRedirect("typedeal.jsp");
                  }catch(Exception ex){
                      
                  }
              %>
            </div>
         </div>
    </body>
</html>
