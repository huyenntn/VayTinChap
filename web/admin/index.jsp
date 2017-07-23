<%-- 
    Document   : index
    Created on : 29-Apr-2017, 10:12:58
    Author     : Ngoc
--%>

<%@page import="Modal.employeeObj"%>
<%@page import="Dao.employeeDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Admin</title>
<meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=0">
        <link href="../css/bootstrap.css" rel="stylesheet">
        <link href="../css/style.css" rel="stylesheet">
</head>
<body>
<div class="container">
  <div class="row">
    <div class="Absolute-Center is-Responsive">
      <div id="logo-container"></div>
      <div class="col-sm-12 col-md-10 col-md-offset-1">
          <form id="loginForm" method="post" >
          <div class="form-group input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <input class="form-control" type="text" name='username' placeholder="username"/><p id="username_error"></p>          
          </div>
          <div class="form-group input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
            <input class="form-control" type="password" name='password' placeholder="password"/><p id="password_error"></p>     
          </div>
          <div class="form-group">
              <button type="submit" class="btn btn-def btn-block btn-success">Đăng nhập</button>
          </div>
        </form> 
          <%
              String acc = request.getParameter("username");
              String pwd = request.getParameter("password");
                employeeDAO employeeDAO = new employeeDAO();
                employeeObj employee = new employeeObj();
              try{
                  int pass = Integer.parseInt(pwd);
                  int result = employeeDAO.checkLogin("admin", 123);
                  employee = employeeDAO.getEmployeeById(result);
                  if(result!=-1){
                      session.setAttribute("user",employee);
                      response.sendRedirect("customer.jsp");
                  }else{
                  out.print("Thông tin sai!");}
              }catch(Exception ex){
                  
              }
          %>
      </div>  
    </div>    
  </div>
</div>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="js/myjs.js"></script>
<script src="../js/jquery-1.11.3.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="../js/bootstrap.js"></script>
</body>
</html>
