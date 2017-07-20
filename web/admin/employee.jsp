<%-- 
    Document   : employee
    Created on : 17-Jul-2017, 13:49:35
    Author     : Ngoc
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Modal.employeeObj"%>
<%@page import="Dao.employeeDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script language="javascript">
            function confirmComplete(employeeId) {
            var answer=confirm("Bạn muốn xóa nhân viên?");
            if (answer==true)
              {
                window.location = 'deleteEmployee.jsp?employeeId='+employeeId;
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
                            <td class="inputtable"><label>Tên nhân viên</label></td>
                            <td class="inputtable"><input type="text" name="employeeName" class="form-control"/></td>
                        </tr>
                        <tr>
                            <td class="inputtable"><label>Tài khoản đăng nhập</label></td>
                            <td class="inputtable"><input type="text" name="employeeacc" class="form-control"/></td>
                        </tr>
                        <tr>
                            <td class="inputtable"><label>Mật khẩu</label></td>
                            <td class="inputtable"><input type="text" name="employeepass" class="form-control"/></td>
                        </tr>
                        <tr>
                            <td class="inputtable"></td>
                            <td class="inputtable"><button type="submit" class="btn btn-success btnaddprofile">Thêm nhân viên</button></td>
                        </tr>
                    </table>
                    </div>
                </form>
            <%
               request.setCharacterEncoding("UTF-8");
               employeeDAO employeeDAO = new employeeDAO();
                try{ 
                    String employeeName = request.getParameter("employeeName");
                    String acc = request.getParameter("employeeacc");
                    int pass = Integer.parseInt(request.getParameter("employeepass"));
                    employeeDAO.addEmployee(employeeName, acc, pass);
                }
                catch(Exception e){
                }
            %>
            <div class="tblcontent">
                <table class="table table-bordered table-striped table-hover">
               <thead>
                <tr>
                    <th>Mã nhân viên</th>
                    <th>Tên nhân viên</th>
                    <th>Tài khoản đăng nhập</th>
                    <th>Mật khẩu</th>
                    <th>Sửa</th>
                    <th>Xóa</th>
                </tr>
               </thead>
               <tbody>
                <% 
                    ArrayList<employeeObj> list = new ArrayList<employeeObj>();
                    list = employeeDAO.getAllEmployee();
                    for(employeeObj employee : list){ 
                %>
                <tr>
                    <td><%=employee.getEmployeeId() %></td>
                    <td><%=employee.getEmployeeName() %></td>
                    <td><%=employee.getAcc()%></td>
                    <td><%=employee.getPass()%></td>
                    <td>
                        <a href="updateEmployee.jsp?employeeId=<%=employee.getEmployeeId()%>"><button type="submit" class="btn btn-primary">Sửa</button></a>
                    </td>
                    <td>
                        <input type="button" class="btn btn-danger" name="delete" value="Xóa" onclick="return confirmComplete(<%=employee.getEmployeeId()%>)" >
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
