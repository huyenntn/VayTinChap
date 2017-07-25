<%-- 
    Document   : customer
    Created on : 18-Jul-2017, 01:06:27
    Author     : Ngoc
--%>

<%@page import="Modal.typeDealObj"%>
<%@page import="Dao.typeDealDAO"%>
<%@page import="Dao.employeeDAO"%>
<%@page import="Modal.employeeObj"%>
<%@page import="Dao.customerDAO"%>
<%@page import="Modal.customerObj"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            function confirmChange(customerId) {
                window.location = 'updateEmployeeSupport.jsp?customerId='+customerId+'&employeeId='+document.getElementById("dropDownId"+customerId).value;
                
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
                <span class="rule-vp-span">Quản lý khách hàng</span>
            </h3>
            <div class="tblcontent table-responsive" >
                <form action="updateEmployeeSupport.jsp">

                <table class="table table-bordered table-striped table-hover">
               <thead>
                <tr>
                    <th>Tên khách hàng</th>
                    <th>Email</th>
                    <th>Điện thoại</th>
                    <th>Địa chỉ</th>
                    <th>Người giới thiệu</th>
                    <th>Tên công ty</th>
                    <th>Ngành nghề</th>
                    <th>Số đăng ký KD</th>
                    <th>Loại giao dịch</th>
                    <th style="visibility: <%=user.equals("admin")?"visible":"hidden"%>">Nhân viên</th>
                </tr>
               </thead>
               <tbody>
                <% 
                    
                    customerDAO customerDAO = new customerDAO();
                    typeDealDAO typeDealDAO = new typeDealDAO();
                    ArrayList<customerObj> list = new ArrayList<customerObj>();
                    if(user.equals("admin")){
                        list = customerDAO.getAllCustomer();
                    }else{
                        int employeeId = employee1.getEmployeeId();
                        list = customerDAO.getCustomerByEmployeeId(employeeId);
                    }
                    
                    for(customerObj customer : list){ 
                %>
                <tr>
                    <td><%=customer.getCustomerName() %></td>
                    <td><%=customer.getEmail() %></td>
                    <td><%=customer.getPhone() %></td>
                    <td><%=customer.getAddress() %></td>
                    <td><%=customer.getEmployeesupport() %></td>
                    <td><%=customer.getCompany() %></td>
                    <td><%=customer.getCareer() %></td>
                    <td><%=customer.getCompanyNum() %></td>
                    <td><%=(typeDealDAO.getTypeDealById(customer.getTypedealId())).getTypedealName() %></td>
                    <td style="visibility: <%=user.equals("admin")?"visible":"hidden"%>">
                        <select id="dropDownId<%=customer.getCustomerId() %>" class="form-control" name="choose" onchange="confirmChange(<%=customer.getCustomerId() %>)">
                            <% 
                                employeeDAO employeeDAO = new employeeDAO();
                                ArrayList<employeeObj> employeeList = new ArrayList<employeeObj>();
                                employeeList = employeeDAO.getAllEmployee();
                                int employeeIdOld = customer.getEmployeeId();
                                for(employeeObj employeeObj : employeeList){
                            %>
                            <option value="<%=employeeObj.getEmployeeId()%>" <%=(employeeObj.getEmployeeId() == employeeIdOld?"selected":"")%>><%=employeeObj.getEmployeeName() %></option>
                            <%}%>
                            </select>
                    </td>
                </tr>
                <%  
                 } %>
               </tbody>
            </table>  
               </form>
        </div>
        </div>

        </div>
    </body>
</html>
