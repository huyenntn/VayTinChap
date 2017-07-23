<%-- 
    Document   : mo-the
    Created on : 17-Jul-2017, 12:45:12
    Author     : Ngoc
--%>

<%@page import="Dao.employeeDAO"%>
<%@page import="Modal.employeeObj"%>
<%@page import="Modal.customerObj"%>
<%@page import="Dao.customerDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta charset="utf-8" /><meta http-equiv="X-UA-Compatible" content="IE=edge" /><meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=0" /><title>
	Đăng ký mở thẻ
</title><link rel="icon" href="images/icon_fav.ico" type="image/x-icon" /><link rel="stylesheet" type="text/css" href="css/reset.css" />

    <!--Plug-in css-->
    <link rel="stylesheet" type="text/css" href="css/owl.carousel.css" />

    <!--Local css-->
    <link rel="stylesheet" type="text/css" href="css/style.css" /><link rel="stylesheet" type="text/css" href="css/font-awesome.css" /><link href="css/coder-update.css" rel="stylesheet" />
    <script src="js/jquery-1.11.2.min.js"></script> 
    <meta content="telephone=no" name="format-detection" />

    <!--<script type="text/javascript">--><!--var myScroll1;--><!--var myScroll2;--><!--var myScroll3;--><!--var myScroll4;--><!--var myScroll5;--><!--function loaded () {--><!--myScroll1 = new IScroll('#box-scroller-1', { eventPassthrough: true, scrollX: true, scrollY: false, preventDefault: false });--><!--myScroll2 = new IScroll('#box-scroller-2', { eventPassthrough: true, scrollX: true, scrollY: false, preventDefault: false });--><!--myScroll3 = new IScroll('#box-scroller-3', { eventPassthrough: true, scrollX: true, scrollY: false, preventDefault: false });--><!--myScroll4 = new IScroll('#box-scroller-4', { eventPassthrough: true, scrollX: true, scrollY: false, preventDefault: false });	--><!--myScroll5 = new IScroll('#box-scroller-5', { eventPassthrough: true, scrollX: true, scrollY: false, preventDefault: false });	--><!--}--><!--</script>--><!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries --><!-- WARNING: Respond.js doesn't work if you view the page via file:// --><!--[if lt IE 9]> <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script> <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script> <![endif]--><meta name="description" content="Đăng ký vay cá nhân - Ngân hàng VPBank" /><meta name="keywords" content="Ngân hàng VPBank, Đăng ký vay cá nhân" /><meta name="news_keywords" content="Đăng ký vay cá nhân - Ngân hàng VPBank" /><meta property="og:description" content="Đăng ký vay cá nhân - Ngân hàng VPBank" /><meta name="dc.keywords" content="Ngân hàng VPBank, Đăng ký vay cá nhân" /><meta property="og:title" content="Đăng ký vay cá nhân - Ngân hàng VPBank" /><meta name="dc.title" content="Đăng ký vay cá nhân - Ngân hàng VPBank" /><link rel="canonical" href="vay-ca-nhan.html" /></head>
    <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

      ga('create', 'UA-99751051-1', 'auto');
      ga('send', 'pageview');

    </script>
    
    </head>
    <body>
         <div class="mdl-header navbar-fixed-top"> 
	<div class="container">	
      <div id="hamburger"><span></span></div> 
      <a href="index.jsp" class="logo"><img src="images/logo2.png"/></a>
      <div class="menu-top">
	    <div class="navid">
            <div class="item-link active"><a href="mo-the.jsp">Đăng ký mở thẻ</a></div>
            <div class="item-link"><a href="vay-ca-nhan.jsp">Vay cá nhân</a></div>
            <div class="item-link "><a href="vay-tieu-thuong.jsp">Vay tiểu thương</a></div>
            <div class="item-link "><a href="vay-doanh-nghiep.jsp">Vay doanh nghiệp</a></div>  
		</div>
      </div>
      
    </div>
</div>

<!--------------------------------------BANNER---------------------------------------->
<form name="frMain" method="post" id="frMain">
    <div class="mdl-body">
	    <div class="container">
	        
<div class="body-left body-left-win">
	<div class="body-right-img">
            <img src="images/mo-the.jpg"/>
    </div>
</div>
<div class="body-right">
    <div class="form-register-vp">
        <h2 class="form-register-h2">
    	    Đăng ký Mở thẻ
    	</h2>
        <form name="formresign" id="formresign" method="post" onsubmit="return validateForm()" >
            <div class="form-group-register"/>
                    <p class="form-vp-item">
                        <input name="name" type="text" id="ctl12_hovaten" class="ho_va_ten" placeholder="Họ và tên" required /><span class="sp-star-input" >*</span><p id="ctl12_hovaten_error"></p>
                    </p>
                    <p class="form-vp-item">
                        <input name="phone" type="text" id="ctl12_sodienthoai" class="so_dien_thoai" placeholder="Số điện thoại" required/><span class="sp-star-input">*</span><p id="ctl12_sodienthoai_error"></p>
                    </p>
                    <p class="form-vp-item">
                        <input name="email" type="text" id="ctl12_email" class="email" placeholder="Email" />
                    </p>
                    <p class="form-vp-item">
                        <input name="address" type="text" id="ctl12_DiaChi" class="dia_chi" placeholder="Địa chỉ nơi sinh sống hiện tại" required/><span class="sp-star-input">*</span><p id="ctl12_DiaChi_error"></p>
                    </p>

                     <p class="form-vp-item" style="margin-bottom:10px;">
                        <input name="employeesupport" type="text" id="ctl12_MaNhanVien" class="ma_nhan_vien" placeholder="Mã nhân viên VPBank" />
                    </p>
                    <p class="form-register-notice" style="text-align:left;color:#9e9e9e;font-size:14px;">
                        Nhập mã nhân viên VPBank đang tư vấn hồ sơ vay của Quý khách (nếu có)
                    </p>
                    <p class="form-btn-vp">
                        <button type="submit" value="Đăng ký" class="btn btn-success btnresignclient" >Đăng ký</button>
                    </p>
                     <p class="form-register-notice">Lưu ý: Bằng việc đăng ký, Quý khách đã đọc và đồng ý với thể lệ chương trình dưới đây</p>
        
            </div>
        </form>
            
            <%
                try{
                    request.setCharacterEncoding("UTF-8");
                    customerDAO customerDAO = new customerDAO();
                    customerObj customer = new customerObj();
                    String customerName = request.getParameter("name");
                    String email = request.getParameter("email");
                    int phone = Integer.parseInt(request.getParameter("phone"));
                    String address = request.getParameter("address");
                    int employeesupport = 0;
                    if(!(request.getParameter("employeesupport")).equals("")){
                        employeesupport = Integer.parseInt(request.getParameter("employeesupport"));
                    }
                    String company = "";
                    String career = "";
                    int companyNum = 0;
                    int typedealId = 1;
                    int employeeId = 0;
                    
                    
                    employeeObj employee = new employeeObj();
                    employeeDAO employeeDAO = new employeeDAO();
                    employee = employeeDAO.getEmployeeIdByAcc("admin");
                    employeeId = employee.getEmployeeId();
                String alerttxt;   
                int result = customerDAO.addCustom(customerName, email, phone, address, employeesupport, company, career, companyNum, typedealId, employeeId);
                if(result!=-1){
                    alerttxt = "Đăng ký thành công";
                    
                }else{
                    alerttxt = "Có lỗi xảy ra";
                }
                out.println("<script type=\"text/javascript\">");
                out.println("alert('"+alerttxt+"');");
                out.println("location='mo-the.jsp';");
                out.println("</script>");
                }catch(Exception ex){

                }
            %>
    </div>
</div>
<div style="clear:both"></div>
<div class="body-center">
    
</div>
<p class="landing-vp-phone"><a onclick='confirmcall()'>19001234</a></p>
	</div>
<a href="#" class="vp-gotop">
    	<img src="images/vp_gotop.png"><br>
        Lên đầu trang
    </a>

<jsp:include page="footer.jsp"/>
        <script src="js/jquery-ui.js"></script> 
<script src="js/owl.carousel.min.js"></script> 

<!--Local js-->
<script src="js/5dtv.js"></script>
<script>
    $(document).ready(function() {
    $(".rule-vp-h3").click(function() {
            $(this).parent().find(".rule-vp-content").toggle();
        })
    })
</script>
<script>
    function confirmcall() {
        if (confirm("Vui lòng gọi tới tổng đài 19001234. Trân trọng!")) {
            window.location = "tel:19001234";
        };
    }
</script>

<script src="js/jquery.nav.js"></script> 
<script src="js/myjs.js"></script>
<script>
				$(document).ready(function(){
	//one page selection page
	$('.navid').onePageNav({
		currentClass: 'active',
		changeHash: true,
		scrollSpeed: 1000,
		scrollThreshold: 0.5,
		filter: ':not(.external)',
		easing: 'swing',
		begin: function() {
			//I get fired when the animation is starting
		},
		end: function() {
			//I get fired when the animation is ending
		},
		scrollChange: function(jQuerycurrentListItem) {
			//I get fired when you enter a section and I pass the list item of the section
		}
	});	

				})
			</script>
    </body>
</html>
