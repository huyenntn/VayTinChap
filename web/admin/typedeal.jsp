<%-- 
    Document   : dealtype
    Created on : 17-Jul-2017, 13:48:18
    Author     : Ngoc
--%>

<%@page import="Modal.employeeObj"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modal.typeDealObj"%>
<%@page import="Dao.typeDealDAO"%>
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
                    <span class="rule-vp-span">Quản lý loại giao dịch</span>
                </h3>
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
