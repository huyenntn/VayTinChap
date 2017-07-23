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
         <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=0">
        <link href="../css/bootstrap.css" rel="stylesheet">
        <link href="../css/style.css" rel="stylesheet">
        <link href="../css/font-awesome.css" rel="stylesheet">
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <link rel="stylesheet"href="../css/bs_leftnavi.css">
        <script src="../js/bs_leftnavi.js"></script>
    </head>
    <body>
        <!--navigation-->
        <%
            employeeObj employee1 = (employeeObj)session.getAttribute("user");
            String user = employee1.getAcc();
        %>

        
          
        <div class="gw-sidebar">
          <div id="gw-sidebar" class="gw-sidebar">
            <div class="nano-content">
              <ul class="gw-nav gw-nav-list">
                <li> 
                    <form method="link" action="logout.jsp" style="text-align: center">
                        <button type="submit" name="submit" class="submitbtn "><span style="margin-right: 10px; font-weight: bold;"><%=employee1.getEmployeeName() %></span><i class="glyphicon glyphicon-log-out"></i></button>
                    </form>
                    
                </li>
                <li class="init-arrow-down"> <a href="javascript:void(0)"> <span class="gw-menu-text">Quản lý khách hàng</span> <b class="gw-arrow"></b> </a>
                  <ul class="gw-submenu">
                    <li> <a href="customer.jsp">Tất cả</a> </li>
                    <li> <a href="customerMothe.jsp">Mở thẻ</a> </li>
                    <li> <a href="customerVayCaNhan.jsp">Vay cá nhân</a> </li>
                    <li> <a href="customerVayTieuThuong.jsp">Vay tiểu thương</a> </li>
                    <li> <a href="customerVayDoanhNghiep.jsp">Vay doanh nghiệp</a> </li>
                  </ul>
                </li>
                <li style="visibility: <%=user.equals("admin")?"visible":"hidden"%>"> <a href="typedeal.jsp" > <span class="gw-menu-text">Quản lý loại giao dịch</span> </a></li>
                <li style="visibility: <%=user.equals("admin")?"visible":"hidden"%>"> <a href="employee.jsp" > <span class="gw-menu-text">Quản lý nhân viên</span> </a></li>
                <li class="init-arrow-down"> <a href="javascript:void(0)"> <span class="gw-menu-text">Quản lý nội dung</span> <b class="gw-arrow"></b> </a>
                  <ul class="gw-submenu">
                    <li> <a href="editor.jsp">Trang chủ</a> </li>
                    <li> <a href="qlMoThe.jsp">Mở thẻ</a> </li>
                    <li> <a href="qlVayCaNhan.jsp">Vay cá nhân</a> </li>
                    <li> <a href="qlVayTieuThuong.jsp">Vay tiểu thương</a> </li>
                    <li> <a href="qlVayDoanhNghiep.jsp">Vay doanh nghiệp</a> </li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <!--end navigation-->
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
