<%-- 
    Document   : vay-ca-nhan
    Created on : 17-Jul-2017, 11:59:25
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
        <meta charset="utf-8" /><meta http-equiv="X-UA-Compatible" content="IE=edge" /><meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=0" />
        <title>Đăng ký vay cá nhân</title>
        <link rel="icon" href="images/icon_fav.ico" type="image/x-icon" /><link rel="stylesheet" type="text/css" href="css/reset.css" />

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
            <div class="item-link "><a href="mo-the.jsp">Đăng ký mở thẻ</a></div>
            <div class="item-link active"><a href="vay-ca-nhan.jsp">Vay cá nhân</a></div>
            <div class="item-link "><a href="vay-tieu-thuong.jsp">Vay tiểu thương</a></div>
            <div class="item-link "><a href="vay-doanh-nghiep.jsp">Vay doanh nghiệp</a></div>  
		</div>
      </div>
      
    </div>
</div>

<!--------------------------------------BANNER---------------------------------------->

<div name="frMain" id="frMain">
    <div class="mdl-body">
	    <div class="container">
	        
<div class="body-left body-left-win">
	<div class="body-right-img">
    	<img src="images/canhan_01.jpg"/>
    </div>
</div>
<div class="body-right">
	<div class="form-register-vp">
        <h2 class="form-register-h2">
    	    Đăng ký Vay Cá Nhân<br/> 
    	    Nhiều ưu đãi hấp dẫn
    	</h2>
            <form name="formresign"  method="post" id="formresign">
                <div class="form-group-register">
                    <p class="form-vp-item">
                        <input name="name" type="text" id="ctl12_hovaten" class="ho_va_ten" placeholder="Họ và tên" /><span class="sp-star-input">*</span><p id="ctl12_hovaten_error"></p>
                    </p>
                    <p class="form-vp-item">
                        <input name="phone" type="text" id="ctl12_sodienthoai" class="so_dien_thoai" placeholder="Số điện thoại" /><span class="sp-star-input">*</span><p id="ctl12_sodienthoai_error"></p>
                    </p>
                    <p class="form-vp-item">
                        <input name="email" type="text" id="ctl12_email" class="email" placeholder="Email" />
                    </p>
                    <p class="form-vp-item">
                        <input name="address" type="text" id="ctl12_DiaChi" class="dia_chi" placeholder="Địa chỉ nơi sinh sống hiện tại" /><span class="sp-star-input">*</span><p id="ctl12_DiaChi_error"></p
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
                    int typedealId = 2;
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
                out.println("location='vay-ca-nhan.jsp';");
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
       <h3> THỂ LỆ CHƯƠNG TRÌNH "VAY NHANH VPBANK" CỦA KH CÁ NHÂN</h3>
<strong>1.	Tên chương trình:</strong> "Vay nhanh VPBank"<br>
<strong>2.	Thời gian triển khai:</strong> Chương trình áp dụng từ 24/5/2017 đến 24/8/2017.<br>
<strong>3.	Phạm vi triển khai:</strong><br>
Chương trình triển khai tại các đơn vị kinh doanh gồm Phòng giao dịch, Chi nhánh, các Trung tâm bán hàng trực tiếp của VPBank và các Đơn vị, cá nhân liên quan trên toàn hệ thống VPBank.<br>
<strong>4.	Đối tượng áp dụng:</strong> <br>
Chương trình này áp dụng cho khách hàng cá nhân đăng ký vay không TSBĐ tại VPBank theo các chương trình cho vay không tài sản bảo đảm hiện hành.<br>
<strong>5.	Hình thức khuyến mãi:</strong> tiền mặt<br>
<strong>6.	Nội dung chương trình:</strong><br>
<strong>a.	Nội dung ưu đãi</strong><br>
- Khách hàng có cơ hội nhận được 1 voucher trị giá 6 triệu đồng nếu thực hiện đầy đủ quy trình nêu ở mục (d) Thể lệ này, và đáp ứng được các điều kiện nêu ở mục (b) Thể lệ này.<br>
Cơ cấu giải thưởng: <br>
+	Tổng số voucher của chương trình: 560.<br>
+	Tổng giá trị giải thưởng: 3.360.000.000 vnd (ba tỷ ba trăm sáu mươi triệu đồng chẵn).<br>
<strong>b.	Điều kiện ưu đãi</strong><br>
-	Giá trị khoản vay giải ngân: từ 70.000.000 vnd.<br>
-	Thời gian vay: từ 36 tháng.<br>
<strong>c.	Hoàn trả voucher</strong><br>
Trường hợp Khách hàng trả nợ trước hạn trong vòng 24 tháng kể từ ngày nhận nợ khoản vay, khách hàng phải hoàn trả toàn bộ giá trị voucher ưu đãi (trị giá 6 triệu đồng) và phí trả nợ trước hạn (theo quy định hiện hành của VPBank).<br>
<strong>d.	Quy định khác</strong><br>
-	Khách hàng tham gia chương trình này không được đồng thời tham gia các chương trình ưu đãi/ khuyến mãi khác của sản phẩm cho vay không TSBĐ và ngược lại.<br>
-	Chương trình có thể dừng mà không cần thông báo trước nếu như số voucher khuyến mãi được sử dụng hết trước thời gian kết thúc chương trình.<br>
-	Mỗi khách hàng chỉ được nhận một voucher của chương trình.<br>
-	Khách hàng không được chuyển nhượng voucher trúng thưởng.<br>
<strong>e.	Quy trình thực hiện</strong><br>
-	<strong>Bước 1. Nhận mã số khuyến mãi</strong><br>
+	Khách hàng vào website khuyến mãi của chương trình tại địa chỉ Vaynhanhvpbank.vn, cung cấp đầy đủ thông tin mà ngân hàng yêu cầu để nhận mã số khuyến mãi. Mỗi khách hàng chỉ được nhận một mã số khuyến mãi/lần.<br>
+	Hàng ngày vào lúc 8h sáng, trên website: vaynhanhvpbank.vn sẽ có thông báo cho khách hàng về số lượng voucher sẽ có trong mỗi ngày. Vào các giờ cố định trong ngày lúc 12h trưa hàng ngày, khách hàng vào website trên, nhập mã số khuyến mãi và số CMND để xếp hàng theo hướng dẫn trên website. Sau đó, hệ thống của VPBank sẽ lựa chọn các khách hàng nhận voucher trên cơ sở khách hàng nào nhấn nút xếp hàng trước thì sẽ được nhận trước. Việc nhận voucher này sẽ dừng lại khi số lượng voucher hết.<br>
+	Trường hợp khách hàng được nhận voucher: khách hàng nhận được tin nhắn thông báo từ VPBank.<br>
+	Trường hợp khách hàng không được nhận voucher: khách hàng nhận được thông báo cám ơn từ VPBank qua website. Khách hàng tham gia xếp hàng chưa được nhận voucher có thể tham gia xếp hàng vào các ngày khác của chương trình. <br>
-	<strong>Bước 2. Nộp hồ sơ vay, giải ngân khoản vay, nhận thưởng từ VPBank</strong><br>
+	Trong vòng 07 ngày làm việc kể từ khi nhận được tin nhắn thông báo nhận voucher từ VPBank, VPBank phải nhận được xác nhận tham gia chương trình từ khách hàng. Chi tiết hình thức xác nhận sẽ được VPBank thông báo đến khách hàng bằng tin nhắn qua số điện thoại khách hàng đăng ký tại website Vaynhanhvpbank.vn, hoặc hình thức thông báo khác mà VPBank cho là phù hợp.<br>
+	Trường hợp VPBank nhận được xác nhận tham gia chương trình từ khách hàng trong thời gian voucher còn hiệu lực, trong vòng 30 ngày làm việc kể từ khi VPBank nhận được xác nhận tham gia chương trình từ khách hàng, hồ sơ vay của khách hàng phải giải ngân. Quá thời hạn này hoặc hồ sơ của khách hàng được thông báo là không đủ điều kiện vay thì voucher không còn hiệu lực, voucher của khách hàng được đưa vào xếp hàng trên hệ thống để chuyển tiếp cho khách hàng khác.<br>
+	Trong vòng tối đa 30 ngày làm việc kể từ ngày khoản vay được giải ngân, VPBank sẽ tiến hành trao thưởng cho các khách hàng đủ điều kiện nhận thưởng.
Hình thức trao thưởng: chuyển khoản vào tài khoản thanh toán của khách hàng mở tại VPBank.
<br>
Hình thức trao thưởng: chuyển khoản vào tài khoản thanh toán của khách hàng mở tại VPBank.<br>
<strong>*	Lưu ý: </strong>ngoại lệ về điều kiện tham gia chương trình (bao gồm nhưng không giới hạn thời gian xác nhận tham gia chương trình, thời gian giải ngân) sẽ được phê duyệt bởi Trưởng phòng Sản phẩm cho vay tín chấp – Khối Khách hàng cá nhân<br>
<strong>7.	Trách nhiệm thông báo:</strong><br>
Nội dung Thể lệ chương trình khuyến mãi của Chương trình sẽ được VPBank thông báo đến Khách hàng qua các kênh sau:<br>
a)	Trang web chính thức của VPBank: www.vpbank.com.vn và/hoặc; vaynhanhvpbank.vn<br>
b)	Các phương tiện truyền thông đại chúng như: Báo, tạp chí…<br>
c)	Email và/hoặc tin nhắn hoặc qua điện thoại.<br>
<strong>8.	Các quy định khác:</strong><br>
•	Bằng việc tham gia chương trình khuyến mại này, Khách hàng chấp nhận tất cả các Điều khoản và Điều kiện được liệt kê trong Thể lệ và các nội dung thay đổi liên quan đến Thể lệ này (nếu có);<br>
•	VPBank sẽ không chịu trách nhiệm đối với bất cứ khiếu nại nào liên quan đến việc VPBank không thể liên lạc được với Khách hàng theo số điện thoại/ email Khách hàng đăng ký trên website vaynhanhvpbank.com.vn để thông báo ưu đãi hoặc Khách hàng không biết đến Chương trình;<br>
•	VPBank được toàn quyền sử dụng hình ảnh, danh tính của Khách hàng nhận được khuyến mại trong các hoạt động quảng bá của VPBank;<br>
•	VPBank là người quyết định cuối cùng trong việc xét duyệt các giao dịch hợp lệ và thực hiện trao thưởng;<br>
•	Các khách hàng nhận thưởng phải chịu các khoản thuế, phí phát sinh liên quan (nếu có);<br>
•	Các nội dung khác không được quy định trong Thể lệ này sẽ áp dụng theo các Quy định và Quy chế hiện hành có liên quan của VPBank;<br>
•	Khi có sự thay đổi liên quan đến chương trình, VPBank sẽ thông báo tại website www.vpbank.com.vn và tại www.vaynhanhvpbank.vn.
Chúng tôi cam kết thực hiện đúng và hoàn toàn chịu trách nhiệm về chương trình khuyến mại trên theo các quy định của pháp luật hiện hành.  <br>




        </div>
    </div>
    
    <div class="rule-vp-row infor-vp-row">
    	<h3 class="rule-vp-h3">
        	<span class="rule-vp-span">Chi tiết các gói vay Cá nhân</span>
            <a class="rule-sp-more">Xem chi tiết</a>	
        </h3>
        <div class="rule-vp-content" style="display: block;">
            <strong style="color:red">KH là CBNV có thu nhập từ lương</strong><br>
            Khách hàng đang công tác tại các doanh nghiệp, nhận lương bằng tiền mặt hoặc chuyển khoản. <br>
            <strong>	Hồ sơ yêu cầu:</strong><br>
            •	Bản sao CMND/ Hộ chiếu/Thẻ căn cước<br>
            •	Chứng từ chứng minh nơi ở hiện tại<br>
            •	Hồ sơ chứng minh thu nhập và công việc<br>
            <strong style="color:red">KH đang nhận lương qua VPBank</strong><br>
            Khách hàng đã nhận lương qua tài khoản mở tại VPBank tối thiểu 1 tháng<br>

            <strong>	Hồ sơ yêu cầu:</strong><br>
            •	Bản sao CMND/ hộ chiếu/Thẻ căn cước<br>
            •	Chứng từ chứng minh nơi ở hiện tại<br>
            •	Bản sao hợp đồng lao động<br>
            <strong style="color:red">KH là CBNV có thu nhập từ lương chuyển khoản</strong><br>
            Khách hàng là CBNV nhận lương chuyển khoản từ 15 triệu/tháng.<br>
            <i>*Lãi suất ưu đãi</i><br>
            <i>*Phê duyệt trong 2h</i><br>
            <strong>Hồ sơ yêu cầu:</strong><br>
            •	Bản sao CMND/Hộ chiếu/Thẻ căn cước<br>
            •	Chứng từ chứng minh nơi ở hiện tại<br>
            •	HS chứng minh thu nhập & công việc <br>
            <strong style="color:red">KH giáo viên</strong><br>

            Khách hàng là giáo viên đang công tác tại tất cả các trường, từ mầm non đến đại học<br>
            <strong>	Hồ sơ yêu cầu:</strong><br>
            •	Bản sao CMND/Hộ chiếu/Thẻ căn cước<br>
            •	Hồ sơ chứng minh thu nhập và môn học giảng dạy.<br>

            <strong>Lãi suất vay tối thiểu từ 15.99%, để tìm hiểu thêm, vui lòng xem tại đây:</strong><br>
            <a href='https://vaytinchap.vpbank.com.vn/LOSWebDE/'>https://vaytinchap.vpbank.com.vn/LOSWebDE/</a><br>
        </div>
    </div>
    
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
