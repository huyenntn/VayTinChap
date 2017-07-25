<%-- 
    Document   : employee
    Created on : 17-Jul-2017, 13:49:35
    Author     : Ngoc
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modal.employeeObj"%>
<%@page import="Dao.employeeDAO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <title>JSP Page</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=0">
        <link href="../css/bootstrap.css" rel="stylesheet">
        <link href="../css/style.css" rel="stylesheet">
        <link href="../css/font-awesome.css" rel="stylesheet">
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <link rel="stylesheet"href="../css/bs_leftnavi.css">
        <script src="../js/bs_leftnavi.js"></script>
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
                <li style="visibility: <%=user.equals("admin")?"visible":"hidden"%>" class="init-arrow-down"> <a href="javascript:void(0)"> <span class="gw-menu-text">Quản lý nội dung</span> <b class="gw-arrow"></b> </a>
                  <ul class="gw-submenu">
                    <li> <a href="editor.jsp">Trang chủ</a> </li>
                    <li> <a href="qlMoThe.jsp">Mở thẻ</a> </li>
                    <li> <a href="qlVayCaNhan.jsp">Vay cá nhân</a> </li>
                    <li> <a href="qlVayTieuThuong.jsp">Vay tiểu thương</a> </li>
                    <li> <a href="qlVayDoanhNghiep.jsp">Vay doanh nghiệp</a> </li>
                  </ul>
                </li>
                <li style="visibility: <%=user.equals("admin")?"visible":"hidden"%>"> <a href="hotline.jsp" > <span class="gw-menu-text">Số điện thoại</span> </a></li>
              </ul>
            </div>
          </div>
        </div>
        <!--end navigation-->
        <div class="wrapper">
        <div class="container">
            <h3 class="rule-vp-h3-admin">
                <span class="rule-vp-span">Quản lý nhân viên</span>
            </h3>
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
