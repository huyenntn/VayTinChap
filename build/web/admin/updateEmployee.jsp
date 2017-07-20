<%-- 
    Document   : updateEmployee
    Created on : 17-Jul-2017, 23:23:13
    Author     : Ngoc
--%>

<%@page import="Modal.employeeObj"%>
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
        <div class="wrapper">
             <%
                 request.setCharacterEncoding("UTF-8");
                 int employeeId = Integer.parseInt(request.getParameter("employeeId"));
                employeeDAO employeeDAO = new employeeDAO();
                employeeObj employee = new employeeObj();
                employee = employeeDAO.getEmployeeById(employeeId);
                String employeeName = employee.getEmployeeName();
                String employeeacc = employee.getAcc();
                int employeepass = employee.getPass();
             %>
            <div class="container">
                <form method="POST">
                    <div class="table-responsive">
                    <table >
                        <tr>
                            <td class="inputtable"><label>Tên nhân viên</label></td>
                            <td class="inputtable"><input type="text" name="employeeNameUpdate" class="form-control" value="<%=employeeName%>"/></td>
                        </tr>
                        <tr>
                            <td class="inputtable"><label>Tài khoản đăng nhập</label></td>
                            <td class="inputtable"><input type="text" name="employeeaccUpdate" class="form-control" value="<%=employeeacc%>"/></td>
                        </tr>
                        <tr>
                            <td class="inputtable"><label>Mật khẩu</label></td>
                            <td class="inputtable"><input type="text" name="employeepassUpdate" class="form-control" value="<%=employeepass%>"/></td>
                        </tr>
                        <tr>
                            <td class="inputtable"></td>
                            <td class="inputtable"><button type="submit" class="btn btn-success btnaddprofile">Cập nhật</button></td>
                        </tr>
                    </table>
                    </div>
                 </form>
              <%
                  String employeeNameUpdate = request.getParameter("employeeNameUpdate");
                  String employeeaccUpdate = request.getParameter("employeeaccUpdate");
                  String passUpdate = request.getParameter("employeepassUpdate");
                  try{
                        int employeepassUpdate = Integer.parseInt(passUpdate);
                        employeeDAO.updateEmployee(employeeId, employeeNameUpdate, employeeaccUpdate, employeepassUpdate);
                        response.sendRedirect("employee.jsp");
                  }catch(Exception ex){
                      
                  }
                  
              %>
            </div>
    </body>
</html>
