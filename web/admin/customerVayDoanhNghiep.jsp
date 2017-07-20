<%-- 
    Document   : customerVayCaNhan
    Created on : 19-Jul-2017, 01:32:46
    Author     : Ngoc
--%>

<%@page import="Dao.employeeDAO"%>
<%@page import="Modal.customerObj"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Dao.typeDealDAO"%>
<%@page import="Dao.customerDAO"%>
<%@page import="Modal.employeeObj"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script language="javascript">
            function confirmChange(customerId) {
                window.location = 'updateEmployeeSupportVayDoanhNghiep.jsp?customerId='+customerId+'&employeeId='+document.getElementById("dropDownId"+customerId).value;
            }
        </script>
    </head>
    <body>
                <jsp:include page="nav.jsp"/>

        <div class="wrapper">
        <div class="container">
            
            <div class="tblcontent">
                <form action="updateEmployeeSupportVayDoanhNghiep.jsp">
                    <%
                        employeeObj employee = (employeeObj)session.getAttribute("user");
                        String user = employee.getAcc();
                        int employeeId = employee.getEmployeeId();
                        int typedealId = 3;
                    %>
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
                        list = customerDAO.getCustomerByTypeDeal(typedealId);
                    }else{
                        list = customerDAO.getCustomerByTypeDealAndEmployee(employeeId, typedealId);
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
