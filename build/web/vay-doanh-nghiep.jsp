<%-- 
    Document   : vay-doanh-nghiep
    Created on : 17-Jul-2017, 12:40:33
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
        <meta charset="utf-8" /><meta http-equiv="X-UA-Compatible" content="IE=edge" /><meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=0" /><title>
	Đăng ký vay doanh nghiệp - Ngân hàng VPBank
</title><link rel="icon" href="images/icon_fav.ico" type="image/x-icon" /><link rel="stylesheet" type="text/css" href="css/reset.css" />

    <!--Plug-in css-->
    <link rel="stylesheet" type="text/css" href="css/owl.carousel.css" />

    <!--Local css-->
    <link rel="stylesheet" type="text/css" href="css/style.css" /><link rel="stylesheet" type="text/css" href="css/font-awesome.css" /><link href="css/coder-update.css" rel="stylesheet" />
    <script src="js/jquery-1.11.2.min.js"></script> 
    <meta content="telephone=no" name="format-detection" />

    <!--<script type="text/javascript">--><!--var myScroll1;--><!--var myScroll2;--><!--var myScroll3;--><!--var myScroll4;--><!--var myScroll5;--><!--function loaded () {--><!--myScroll1 = new IScroll('#box-scroller-1', { eventPassthrough: true, scrollX: true, scrollY: false, preventDefault: false });--><!--myScroll2 = new IScroll('#box-scroller-2', { eventPassthrough: true, scrollX: true, scrollY: false, preventDefault: false });--><!--myScroll3 = new IScroll('#box-scroller-3', { eventPassthrough: true, scrollX: true, scrollY: false, preventDefault: false });--><!--myScroll4 = new IScroll('#box-scroller-4', { eventPassthrough: true, scrollX: true, scrollY: false, preventDefault: false });	--><!--myScroll5 = new IScroll('#box-scroller-5', { eventPassthrough: true, scrollX: true, scrollY: false, preventDefault: false });	--><!--}--><!--</script>--><!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries --><!-- WARNING: Respond.js doesn't work if you view the page via file:// --><!--[if lt IE 9]> <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script> <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script> <![endif]-->
    <meta name="description" content="Đăng ký vay doanh nghiệp - Ngân hàng VPBank" />
    <meta name="keywords" content="Ngân hàng VPBank, Đăng ký vay doanh nghiệp" />
    <meta name="news_keywords" content="Đăng ký vay doanh nghiệp - Ngân hàng VPBank" />
    <meta property="og:description" content="Đăng ký vay doanh nghiệp - Ngân hàng VPBank" />
    <meta name="dc.keywords" content="Ngân hàng VPBank, Đăng ký vay doanh nghiệp" />
    <meta property="og:title" content="Đăng ký vay doanh nghiệp - Ngân hàng VPBank" />
    <meta name="dc.title" content="Đăng ký vay doanh nghiệp - Ngân hàng VPBank" />
    <link rel="canonical" href="/vay-doanh-nghiep.jsp" /></head>
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
            <div class="item-link "><a href="mo-the.jsp">Đăng ký mở thẻ</a></div>
            <div class="item-link "><a href="vay-ca-nhan.jsp">Vay cá nhân</a></div>
            <div class="item-link "><a href="vay-tieu-thuong.jsp">Vay tiểu thương</a></div>
            <div class="item-link active"><a href="vay-doanh-nghiep.jsp">Vay doanh nghiệp</a></div>  
		</div>
      </div>
      
    </div>
</div>

<!--------------------------------------BANNER---------------------------------------->
<form name="frMain" method="post" action="vay-doanh-nghiep.jsp" id="frMain">
    <div class="mdl-body">
	    <div class="container">
	        
<div class="body-left">
	<div class="body-right-img">
    	<img src="images/doanhnghiep_01.jpg"/>
    </div>
</div>
<div class="body-right">
	<div class="form-register-vp">
    	<h2 class="form-register-h2">
    	    ĐĂNG KÝ VAY NHẬN NGAY KHUYẾN MẠI<br/>
           <span style="font-size:20px;"> DÀNH CHO 190 KHÁCH HÀNG GIẢI NGÂN NHANH NHẤT</span>
    	</h2>
        <form method="post">
            <div class="form-group-register">
                <p class="form-vp-item">
                    <input name="name" type="text" id="ctl12_hovaten" class="ho_va_ten" placeholder="Họ và tên" /><span class="sp-star-input">*</span>
                </p>
                <p class="form-vp-item">
                    <input name="phone" type="text" id="ctl12_sodienthoai" class="so_dien_thoai" placeholder="Số điện thoại" /><span class="sp-star-input">*</span>
                </p>
                <p class="form-vp-item">
                    <input name="email" type="text" id="ctl12_email" class="email" placeholder="Email" />
                </p>
                <p class="form-vp-item">
                    <input name="company" type="text" id="ctl12_TenDoanhNghiep" class="ten_doanh_nghiep" placeholder="Tên doanh nghiệp" /><span class="sp-star-input">*</span>
                </p>
                <p class="form-vp-item">
                    <input name="career" type="text" id="ctl12_NganhNgheKinhDoanh" class="nganh_nghe_kinh_doanh" placeholder="Ngành nghề kinh doanh" /><span class="sp-star-input">*</span>
                </p>
                <p class="form-vp-item">
                    <input name="companyNum" type="text" id="ctl12_SoDangKyKinhDoanh" class="so_dang_ky_kinh_doanh" placeholder="Số đăng ký kinh doanh" /><span class="sp-star-input">*</span>
                </p>
                <p class="form-vp-item" style="margin-bottom:10px;">
                    <input name="employeesupport" type="text" id="ctl12_MaNhanVien" class="ma_nhan_vien" placeholder="Mã nhân viên VPBank" />
                </p>
                <p class="form-register-notice" style="text-align:left;color:#9e9e9e;font-size:14px;">
                    Nhập mã nhân viên VPBank đang tư vấn hồ sơ vay của Quý khách (nếu có)
                </p>
                <p class="form-btn-vp">
                    <button type="submit" value="Đăng ký" class="btn btn-success " >Đăng ký</button>
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
                    String address = "";
                    int employeesupport = Integer.parseInt(request.getParameter("employeesupport"));
                    String company = request.getParameter("company");
                    String career = request.getParameter("career");
                    int companyNum = Integer.parseInt(request.getParameter("companyNum"));
                    int typedealId = 3;
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
                out.println("location='vay-doanh-nghiep.jsp';");
                out.println("</script>");
                }catch(Exception ex){

                }
            %>
    </div>
</div>
<div style="clear:both"></div>
<div class="body-center">
  
    <div class="rule-vp-row">
    	<h3 class="rule-vp-h3">
        	<span class="rule-vp-span">Thể lệ chương trình khuyến mại</span>
            <a class="rule-sp-more">Xem chi tiết</a>	
        </h3>
        <div class="rule-vp-content">
        <h3>THỂ LỆ CHƯƠNG TRÌNH “VAY NHANH VPBANK” CỦA KHỐI DOANH NGHIỆP</h3>
        

<strong>1.	Tên chương trình khuyến mại:</strong> “Vay nhanh VPBank”<br>
<strong>2.	Hàng hóa dịch vụ khuyến mại:</strong> tiền được chuyển vào thẻ tín dụng Doanh nghiệp VPBiz.<br>
<strong>3.	Thời gian khuyến mại:</strong> 24/05/2017-24/08/2017<br>
<strong>4.	Phạm vi khuyến mại:</strong> Trên toàn quốc<br>
<strong>5.	Hình thức khuyến mại:</strong> tiền mặt <br>
<strong>6.	Khách hàng của chương trình khuyến mại:</strong> Là Doanh nghiệp thuộc phân khúc vừa, nhỏ, siêu nhỏ có nhu cầu sử dụng sản phẩm Vay tín chấp của VPBank. Bao gồm cả khách hàng mới và khách hàng đang nộp hồ sơ vay ở VPBank.<br>
<strong>7.	Nội dung chi tiết chương trình:</strong><br>
<strong>a.	Điều kiện chương trình:</strong><br>
Doanh nghiệp đăng ký sử dụng sản phẩm Vay không tài sản thế chấp tại VPBank thỏa 3 điều kiện:<br>
*	Mã khuyến mại được đăng ký và phê duyệt sử dụng trong thời gian diễn ra chương trình<br>
*	Khoản vay giải ngân tối thiểu từ 200.000.000 VNĐ<br>
*	Doanh nghiệp đồng ý phát hành thẻ tín dụng Doanh nghiệp VPBIZ với hạn mức tối thiểu 50 triệu.<br>
<strong>b.	Nội dung ưu đãi</strong><br>
*	Tặng voucher có trị giá là 6.000.000 VNĐ (6 triệu đồng) <br>
*	Tổng số voucher là 190 voucher.<br>
*	<strong>Lưu ý:</strong><br>
-	Mỗi Doanh nghiệp chỉ được tham gia chương trình duy nhất 01 lần trong suốt thời gian chương trình diễn ra.<br>
-	Tổng chi phí quà tặng thực hiện chương trình là 1.140.000.000 VNĐ (Một tỷ một trăm bốn mươi triệu đồng).<br>
-	Chương trình có thể dừng mà không cần thông báo trước nếu như ngân sách khuyến mại sử dụng hết trước thời gian kết thúc chương trình.<br>
-	Không áp dụng đồng thời cùng các chương trình khuyến mãi khác <br>
<strong>c.	Cách thức nhận quà </strong><br>
•	6.000.000 VNĐ sẽ được chuyển vào thẻ VPBIZ Credit của Doanh nghiệp ngay khi khoản vay được giải ngân trong thời gian 30 ngày làm việc.<br>
•	Trong trường hợp khách hàng trúng voucher khuyến mãi không có nhu cầu vay trong 15 ngày làm việc thì voucher tự động hết hạn.<br>
•	Trường hợp khách hàng trúng voucher khuyến mãi không hoàn thiện hồ sơ vay trong vòng 15 ngày làm việc thì voucher sẽ tự động hết hạn. Voucher của khách hàng sẽ được áp dụng cho khách hàng đăng ký tiếp theo.<br>
•	Quy định về việc chuyển nhượng voucher<br>
*	Nếu trong điều kiện Doanh nghiệp không có nhu cầu hoặc không đủ điều kiện vay thì Doanh nghiệp có thể tặng mã Voucher đó cho 01 doanh nghiệp khác trong vòng 15 ngày làm việc kể từ ngày nhận Voucher khuyến mãi.<br>
*	Doanh nghiệp email đến Ban tổ chức theo địa chỉ: marketing-sme@vpbank.com.vn để thông báo việc tặng mã cho Doanh nghiệp khác với các trường thông tin sau: <br>
-	Tên Doanh nghiệp<br>
-	Mã số thuế<br>
-	Người liên hệ<br>
-	Số điện thoại liên hệ<br>
-	Số năm hoạt động<br>
-	Ngành nghề hoạt động<br>
-	Nhu cầu vay bao nhiêu tiền<br>
*	Ban tổ chức sẽ chủ động liên hệ với Doanh nghiệp được giới thiệu theo thông tin trong email được cung cấp.<br>
*	Voucher khuyến mãi chỉ được chuyển nhận một lần. Sau 05 ngày làm việc nếu VPBank không liên hệ được với Doanh nghiệp được chuyển nhượng voucher, voucher sẽ tự động hết hạn.<br>
<strong>8.	Trách nhiệm thông báo:</strong><br>
Nội dung Thể lệ chương trình ưu đãi của Chương trình sẽ được VPBank thông báo đến Khách hàng qua các kênh sau:<br>
a)	Trang web chính thức của VPBank: www.vpbank.com.vn và/hoặc; vaynhanhvpbank.vn<br>
b)	Các phương tiện truyền thông đại chúng như: Báo, tạp chí<br>
c)	Email và/hoặc sms qua điện thoại.<br>
<strong>9.	Các quy định khác:</strong><br>
a)	Bằng việc tham gia chương trình khuyến mại này, Khách hàng chấp nhận tất cả các Điều khoản và Điều kiện được liệt kê trong Thể lệ và các nội dung thay đổi liên quan đến Thể lệ này (nếu có);<br>
b)	VPBank sẽ không chịu trách nhiệm đối với bất cứ khiếu nại nào liên quan đến việc VPBank không thể liên lạc được với Khách hàng để thông báo ưu đãi hoặc Khách hàng không biết đến Chương trình;<br>
c)	VPBank được toàn quyền sử dụng hình ảnh, danh tính của Khách hàng nhận được khuyến mại trong các hoạt động quảng bá của VPBank;
d)	VPBank là người quyết định cuối cùng trong việc xét duyệt các giao dịch hợp lệ và thực hiện trao thưởng;<br>
e)	Các khách hàng nhận thưởng chịu các khoản thuế, phí phát sinh liên quan (nếu có);<br>
f)	Các nội dung khác không được quy định trong Thể lệ này sẽ áp dụng theo các Quy định và Quy chế hiện hành có liên quan của VPBank;<br>
g)	Khi có sự thay đổi liên quan đến chương trình, VPBank sẽ thông báo tại website www.vpbank.com.vn và tại www.vaynhanhvpbank.vn.<br>
Chúng tôi cam kết thực hiện đúng và hoàn toàn chịu trách nhiệm về chương trình khuyến mại trên theo các quy định của pháp luật hiện hành. <br> 



        </div>
    </div>
    
    <div class="rule-vp-row infor-vp-row">
    	<h3 class="rule-vp-h3">
        	<span class="rule-vp-span">Chi tiết các gói vay Doanh nghiệp</span>
            <a class="rule-sp-more">Xem chi tiết</a>	
        </h3>
        <div class="rule-vp-content" style="display: block;">
        	<h3>VAY NHANH DOANH NGHIỆP – VAY KHÔNG THẾ CHẤP</h3>
<strong>1.	Ưu điểm sản phẩm: </strong><br>
-	Không giới hạn số năm hoạt động<br>
-	Không ràng buộc doanh thu tối thiểu<br>
-	Không yêu cầu tài sản thế chấp<br>
-	Hồ sơ chứng minh mục đích vay đơn giản<br>
-	Lãi suất cạnh tranh<br>
-	Hạn mức cho vay lên đến 5 tỷ đồng<br>
-	Thời gian vay: 36 tháng<br>

<strong>2.	Đối tượng Khách hàng:</strong> Khách hàng Doanh nghiệp vừa và nhỏ<br>

<strong>3.	Hồ sơ yêu cầu:</strong> <br>
-	Báo cáo tài chính<br>
-	Hồ sơ chứng minh mục đích sử dụng vốn<br>
-	Hồ sơ khác theo quy định của VPBank theo từng thời kỳ<br>

<strong>4.	Để tìm hiểu thêm, vui lòng xem tại đây:</strong><br>
<a href="http://sme.vpbank.com.vn/san-pham/san-pham-tien-vay/cho-vay-tin-chap">http://sme.vpbank.com.vn/san-pham/san-pham-tien-vay/cho-vay-tin-chap</a> 


        </div>
    </div>
    
    <div class="rule-vp-row list-vp-row">
    	<h3 class="rule-vp-h3">
        	<span class="rule-vp-span">Danh sách các Doanh nghiệp đã đăng ký nhận voucher</span>
            <a class="rule-sp-more">Xem chi tiết</a>	
        </h3>
        <div class="rule-vp-content" style="text-align:center;">
            <p>
                Danh sách sẽ được cập nhật trong thời gian sớm nhất.
            </p>            
        </div>
    </div>
    
</div>
<p class="landing-vp-phone"><a onclick='confirmcall()'>19001234</a></p>
	</div>
<a href="#" class="vp-gotop">
    	<img src="images/vp_gotop.png"><br>
        Lên đầu trang
    </a>

<div class="mdl-footer">
	<div class="container">
    	<div class="footer-content">
		<p><a href='index.jsp'><img src="images/vp_logo_footer.png"/></a></p>
        <p><strong>Ngân hàng TMCP Việt Nam Thịnh Vượng VPBank</strong> © 2017<br>
        89 Láng Hạ, Đống Đa, Hà Nội<br>
        Email: customercare@vpbank.com.vn<br></p>
        </div>
		
		<p class="footer-social">
		<a href='https://www.facebook.com/VPBankOnline/'><img src="images/vp_06.png"/></a>
		<a href='http://www.youtube.com/playlist?list=PLqmPfVuc7VoNHUOBiAi3mgsRgp6DAv590'><img src="images/vp_07.png"/></a></p>
    </div>
</div> 
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
