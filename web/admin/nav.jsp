<%-- 
    Document   : nav
    Created on : 17-Jul-2017, 16:15:04
    Author     : Ngoc
--%>

<%@page import="Modal.employeeObj"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=0">
        <link href="../css/bootstrap.css" rel="stylesheet">
        <link href="../css/style.css" rel="stylesheet">
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <link rel="stylesheet"href="../css/bs_leftnavi.css">
        <script src="../js/bs_leftnavi.js"></script>
    </head>
    <body>
        <!--navigation-->
        <%
            employeeObj employee = (employeeObj)session.getAttribute("user");
            String user = employee.getAcc();
        %>

        
          
        <div class="gw-sidebar">
          <div id="gw-sidebar" class="gw-sidebar">
            <div class="nano-content">
              <ul class="gw-nav gw-nav-list">
                <li> 
                    <form method="link" action="logout.jsp" style="text-align: center">
                        <button type="submit" name="submit" class="submitbtn "><span style="margin-right: 10px; font-weight: bold;"><%=employee.getEmployeeName() %></span><i class="glyphicon glyphicon-log-out"></i></button>
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

              </ul>
            </div>
          </div>
        </div>
        <!--end navigation-->
    </body>
</html>
