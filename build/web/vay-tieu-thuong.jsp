<%-- 
    Document   : vay-tieu-thuong
    Created on : 17-Jul-2017, 12:37:19
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
	Đăng ký vay tiểu thương - Ngân hàng VPBank
</title><link rel="icon" href="images/icon_fav.ico" type="image/x-icon" /><link rel="stylesheet" type="text/css" href="css/reset.css" />

    <!--Plug-in css-->
    <link rel="stylesheet" type="text/css" href="css/owl.carousel.css" />

    <!--Local css-->
    <link rel="stylesheet" type="text/css" href="css/style.css" /><link rel="stylesheet" type="text/css" href="css/font-awesome.css" /><link href="css/coder-update.css" rel="stylesheet" />
    <script src="js/jquery-1.11.2.min.js"></script> 
    <meta content="telephone=no" name="format-detection" />

    <!--<script type="text/javascript">--><!--var myScroll1;--><!--var myScroll2;--><!--var myScroll3;--><!--var myScroll4;--><!--var myScroll5;--><!--function loaded () {--><!--myScroll1 = new IScroll('#box-scroller-1', { eventPassthrough: true, scrollX: true, scrollY: false, preventDefault: false });--><!--myScroll2 = new IScroll('#box-scroller-2', { eventPassthrough: true, scrollX: true, scrollY: false, preventDefault: false });--><!--myScroll3 = new IScroll('#box-scroller-3', { eventPassthrough: true, scrollX: true, scrollY: false, preventDefault: false });--><!--myScroll4 = new IScroll('#box-scroller-4', { eventPassthrough: true, scrollX: true, scrollY: false, preventDefault: false });	--><!--myScroll5 = new IScroll('#box-scroller-5', { eventPassthrough: true, scrollX: true, scrollY: false, preventDefault: false });	--><!--}--><!--</script>--><!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries --><!-- WARNING: Respond.js doesn't work if you view the page via file:// --><!--[if lt IE 9]> <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script> <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script> <![endif]--><meta name="description" content="Đăng ký vay tiểu thương - Ngân hàng VPBank" /><meta name="keywords" content="Ngân hàng VPBank, Đăng ký vay tiểu thương" /><meta name="news_keywords" content="Đăng ký vay tiểu thương - Ngân hàng VPBank" /><meta property="og:description" content="Đăng ký vay tiểu thương - Ngân hàng VPBank" /><meta name="dc.keywords" content="Ngân hàng VPBank, Đăng ký vay tiểu thương" /><meta property="og:title" content="Đăng ký vay tiểu thương - Ngân hàng VPBank" /><meta name="dc.title" content="Đăng ký vay tiểu thương - Ngân hàng VPBank" /><link rel="canonical" href="/vay-tieu-thuong.jsp" /></head>
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
            <div class="item-link active"><a href="vay-tieu-thuong.jsp">Vay tiểu thương</a></div>
            <div class="item-link "><a href="vay-doanh-nghiep.jsp">Vay doanh nghiệp</a></div>  
		</div>
      </div>
      
    </div>
</div>

<!--------------------------------------BANNER---------------------------------------->
<form name="frMain" method="post" action="vay-tieu-thuong.jsp" id="frMain">
    <div class="mdl-body">
	    <div class="container">
	        
<div class="body-left">
	<div class="body-right-img">
    	<img src="images/tieuthuong_01.jpg" style='width:496px;'/>
    </div>
</div>
<div class="body-right">
	<div class="form-register-vp">
    	<h2 class="form-register-h2">
    	    Đăng ký Vay nhanh VPBANK<br/> 
    	    Vay không thế chấp lên tới 300 triệu đồng
    	</h2>
        <p class="form-register-notice" style="text-align:left;">
            * Liên hệ tư vấn trong 48 giờ
        </p>
	<div class="form-group-register">
            <form name="formresign" method="post" id="formresign" >
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
                        <input name="address" type="text" id="ctl12_DiaChi" class="dia_chi" placeholder="Địa chỉ kinh doanh" /><span class="sp-star-input">*</span><p id="ctl12_DiaChi_error"></p>
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
                out.println("location='vay-tieu-thuong.jsp';");
                out.println("</script>");
                }catch(Exception ex){

                }
            %>
        </div>
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
                <h3>THỂ LỆ CHƯƠNG TRÌNH KHUYẾN MẠI</h3>
                
              <strong>  1.	Tên thương nhân thực hiện chương trình khuyến mại:</strong>
<p style="text-align:center"><strong>Ngân hàng Thương mại Cổ phần Việt Nam Thịnh Vượng (VPBank)</strong><br>
Số 89 Láng Hạ, Quận Đống Đa, Hà Nội<br>
Điện thoại: 0473056600</p>
<strong>2.	Tên chương trình khuyến mại: Vay nhanh VPBank:</strong>
<strong>3.	Hàng hóa, dịch vụ khuyến mại: </strong> sản phẩm cho vay tín chấp của Khối Tín dụng Tiểu thương do Ngân hàng Thương mại Cổ phần Việt Nam Thịnh Vượng cung cấp. Bao gồm các sản phẩm:<br>
•	Vay tín chấp thu ngày <br>
•	Vay tín chấp thu tháng <br>
•	Vay Tín chấp siêu tốc<br>
•	Vay Tín chấp Thuế Cộng<br>
<strong>4.	Thời gian khuyến mại:</strong> từ 24/5/2017 đến 11/7/2017.<br>
<strong>5.	Địa bàn (phạm vi) khuyến mại:</strong> Toàn quốc<br>
<strong>6.	Hình thức khuyến mại:</strong> Quay số xác định trúng thưởng.<br>
<strong>7.	Khách hàng của chương trình khuyến mại:</strong> Tất cả khách hàng cá nhân có hoạt động kinh doanh buôn bán trên toàn quốc. Đối tượng cá nhân có hoạt động kinh doanh tức là:<br>
•   Có giấy tờ chứng minh hoạt động kinh doanh mà khách hàng có thể cung cấp như: Đăng ký kinh doanh, Xác nhận kinh doanh, Giấy tờ chứng minh quyền sử dụng sạp chợ, Biên lai nộp thuế...<br>
•   Theo thẩm định thực tế của VPBank tại cơ sở kinh doanh của Khách hàng như: Phỏng vấn trực tiếp, chụp ảnh cơ sở kinh doanh...<br>
•   VPBank kiểm tra chéo đối với một số đối tượng như nhà cung cấp hàng hóa cho khách hàng, bạn hàng của khách hàng...<br>
<strong>8.	Cơ cấu giải thưởng:</strong>

                  <table border="1" cellspacing="0" cellpadding="0" width="100%">
                    <tr>
                      <td width="187" valign="top"><p align="center"><strong>Cơ cấu giải thưởng</strong></p></td>
                      <td width="123" valign="top"><p align="center"><strong>Nội dung giải thưởng</strong></p></td>
                      <td width="88" valign="top"><p align="center"><strong>Trị giá giải thưởng(VNĐ)</strong></p></td>
                      <td width="146" valign="top"><p align="center"><strong>Số giải</strong></p></td>
                      <td width="99" valign="top"><p align="center"><strong>Thành tiền (VND)</strong></p></td>
                    </tr>
                    <tr>
                      <td width="187" valign="top"><p>Giải thưởng</p></td>
                      <td width="123" valign="top"><p align="center">Tiền chuyển khoản 6.000.000 đồng</p></td>
                      <td width="88" valign="top"><p align="center">6.000.000</p></td>
                      <td width="146" valign="top"><p align="center">150</p></td>
                      <td width="99" valign="top"><p align="center">900.000.000</p></td>                      
                    </tr>
                    <tr>
                        <td colspan='4' valign="top"><strong>Tổng cộng</strong></td>
                        <td><strong valign="top"><p align="center">900.000.000</p></strong></td>
                    </tr>
                  </table>
                  -	Tổng giá trị giải thưởng trong chương trình khuyến mại là 900.000.000 đồng (Bằng chữ: Chín trăm triệu đồng chẵn).<br>
-	Giải thưởng được quy đổi thành tiền mặt.<br>
<strong>9.	Nội dung và thể lệ chi tiết chương trình khuyến mại:</strong><br>
<strong>9.1. Cách thức tham dự chương trình khuyến mại</strong><br>
-	Trong thời gian diễn ra chương trình, VPBank sẽ thực hiện truyền thông về chương trình “Vay nhanh VPBank” trên các phương tiện truyền thông đại chúng và trên website cua VPBank www.vaynhanhvpbank.vn để khách hàng được biết và tham dự.<br>
-	Khách hàng đăng ký vay và hoàn thành vay vốn tại Khối tín dụng Tiểu thương VPBank trong thời gian khuyến mại sẽ nhận được tin nhắn thông báo mã số dự thưởng từ VPBank đến số điện thoại khách hàng đăng ký với nội dung “Chúc mừng hồ sơ vay của quý khách đã chấp thuận. Quý Khách có cơ hội nhận ngay 6 triệu tiền mặt với mã số dự thưởng VAYxxxxxxx. Chúc bạn may mắn! LH 190045415 (1.000đ/phút) hoặc https://vaynhanhvpbank.vn”.<br>
-	VPBank có trách nhiệm thông báo trực tiếp đến khách hàng về chương trình khuyến mại, cách thức tham dự, mã dự thưởng, cách thức xác định trúng thưởng sau khi khách hàng hoàn tất đăng ký tham dự chương tình.<br>
<strong>9.2. Quy định về bằng chứng xác định trúng thưởng:</strong><br>
-	Mã số tham dự hợp lệ là mã số bắt đầu bằng chữ VAY và 8 chữ số đằng sau, phát hành ngẫu nhiên không trùng lặp.<br>
-	Tổng số mã dự thưởng là 4.000 mã.<br>
-	Việc cấp mã dự thưởng được xem là thành công khi khách hàng nhận được mã số dự thưởng qua tin nhắn gửi đến số điện thoại di động cá nhân đã đăng ký tham gia chương trình khuyến mại.<br>
<strong>9.3. Thời gian, địa điểm, cách thức xác định trúng thưởng:</strong><br>
-	Lễ quay số xác định trúng thưởng sẽ tổ chức vào các ngày 10/06, 27/06 và 13/07/2017 tại trụ sở của VPBank: số 89 Láng Hạ, quận Đống Đa, Hà Nội. VPBank sẽ tổ chức quay số ngẫu nhiên trên hệ thống dưới sự giám sát của đại diện khách hàng tham dự chương trình khuyến mại, Ban lãnh đạo và nhân viên VPBank, đại diện Sở Ban ngành:<br>
-	Mỗi đợt quay số sẽ thực hiện xác định 50 khách hàng trúng thưởng.<br>
-	Kết quả của lễ rút thăm xác định trúng thưởng sẽ được lập thành văn bản và có xác nhận của các bên chứng kiến.<br>
<strong>9.4. Quy trình, cách thức, thủ tục nhận thưởng:</strong><br>
-	Trong vòng tối đa 02 (hai) ngày kể từ ngày VPBank xác định khách hàng trúng thưởng của mỗi kỳ quay số, VPbank sẽ liên hệ với khách hàng trúng thưởng để hướng dẫn về thời gian, địa điểm và thủ tục nhận thưởng.<br>
-	Quá trình nhận thưởng như sau:Trong vòng 07 (bảy) ngày kể từ ngày được thông báo, khách hàng đến địa điểm được hướng dẫn và cung cấp cho VPBank tin nhắn có mã số dự thưởng và bản gốc CMND, hợp đồng vay tại Khối tín dụng Tiểu thương VPBank. Nếu khách hàng không cung cấp đủ hồ sơ, mã số trúng thưởng sẽ không được nhận thưởng.<br>
-	Giải thưởng sẽ được chuyển khoản trực tiếp vào tài khoản của khách hàng trúng thưởng mở tại VPBank.<br>
-	Thời gian chuyển khoản: trong vòng 30 ngày làm việc kể từ ngày kết thúc chương trình khuyến mại.<br>
-	Trong trường hợp khách hàng tất toán khoản vay trước kỳ hạn sau khi đã nhận thưởng, khách hàng phải bồi hoàn ngay lập tức cho VPBank giá trị giải thưởng đã được nhận và chịu trách nhiệm thanh toán các khoản chi phí phát sinh được quy định tại Hợp đồng Tín dụng (quy định tất toán trước hạn sẽ được ghi rõ trong hợp đồng tín dụng).<br>
<strong>9.5. Quy định về đầu mối giải đáp thắc mắc của khách hàng:</strong><br>
-	Mọi thắc mắc về thủ tục đổi giải thưởng hoặc chương trình, vui lòng liên hệ số theo thông tin sau để được hướng dẫn, giải đáp:<br>
Phòng Marketing – Khối Tín dụng Tiểu thương – VPBank<br>
Chị Hoàng Thúy Phương Quỳnh<br>
Phó Giám đốc Marketing<br>
Số điện thoại: 0939.734.257<br>
Email: quynhhtp@vpbank.com.vn<br>
<strong>10.	Trách nhiệm thông báo:</strong><br>
-	VPBank có trách nhiệm thông báo đầy đủ chi tiết nội dung của thể lệ chương trình khuyến mại, danh sách khách hàng trúng thưởng trên website chính thức của VPBank và tại Trụ sở, các chi nhánh, Phòng Giao dịch của VPBank trên toàn quốc.<br>

<strong>11.	Các quy định khác:</strong><br>
-	Khách hàng trúng thưởng phải chịu chi phí đi lại cho việc nhận thưởng của mình và thuế thu nhập không thường xuyên (nếu có) theo quy định của pháp luật hiện hành.<br>
-	VPBank hoàn toàn chịu trách nhiệm trong việc quản lý khâu in ấn, tính chính xác của bằng chứng xác định trúng thưởng và đưa bằng chứng xác định trúng thưởng vào lưu thông trong chương trình khuyến mại.<br>
-	Việc tổ chức chương trình khuyến mại phải đảm bảo tính ngẫu nhiên, khách quan và công khai.<br>
-	Nếu được khách hàng trúng thưởng đồng ý, Ngân hàng Thương mại Cổ phần Việt Nam Thịnh Vượng sẽ sử dụng tên và hình ảnh của khách hàng trúng thưởng cho mục đích quảng cáo thương mại.<br>
-	Trong trường hợp xảy ra tranh chấp liên quan đến chương trình khuyến mại này, Ngân hàng Thương mại Cổ phần Việt Nam Thịnh Vượng có trách nhiệm trực tiếp giải quyết, nếu không thỏa thuận được tranh chấp sẽ được xử lý theo quy định của pháp luật.<br>
-	Đối với những giải thưởng không có người trúng thưởng Ngân hàng Thương mại Cổ phần Việt Nam Thịnh Vượng phải có trách nhiệm trích nộp 50% giá trị đã công bố của giải thưởng đó vào ngân sách nhà nước theo quy định tại khoản 4 Điều 96 Luật Thương mại.<br>

                </div>
            </div>
            
          <div class="rule-vp-row infor-vp-row">
            	<h3 class="rule-vp-h3">
                	<span class="rule-vp-span">Chi tiết các gói vay Tiểu thương</span>
                    <a class="rule-sp-more">Xem chi tiết</a>	
                </h3>
                <div class="rule-vp-content" style="display: block;">
				<h3>CÁC GÓI VAY TÍN CHẤP DÀNH CHO KHÁCH HÀNG TIỂU THƯƠNG, HỘ KINH DOANH CÁ THỂ</h3>
<p style="border:2px solid #cccccc;padding:10px;">
Cam kết của CommCredit đối với tất cả các gói vay dành cho Khách hàng Tiểu thương& Hộ Kinh doanh<br>
•	Giải ngân nhanh trong 24h làm việc<br>
•	Đáp ứng đa dạng nhu cầu: vay mua hàng, mở rộng kinh doanh, mua sắm, chữa bệnh…<br>
•	100% phục vụ tận nơi (tại chợ, cửa hàng…)<br>
</p>
<strong>Vay trả góp theo ngày</strong><br>
Ưu điểm sản phẩm<br>
-	Vay từ 10 triệu đến 50 triệu trong tối đa 6 tháng<br>
-	Không thế chấp, không chứng minh thu nhập<br>
-	Nhân viên thu tiền tận nơi mỗi ngày<br>

Dành cho: Khách hàng Tiểu thương, Hộ Kinh doanh tại các chợ<br>
Hồ sơ yêu cầu: Bản sao CMND, Chứng từ chứng minh nơi ở hiện tại<br>

<strong>Vay trả góp theo tháng</strong><br>
Ưu điểm sản phẩm<br>
-	Vay từ 20 triệu đến 300 triệu trong tối đa 3 năm<br>
-	Không thế chấp, không chứng minh thu nhập<br>
-	Trả góp tiện lợi hàng tháng<br>
Dành cho: Khách hàng Tiểu thương, Hộ Kinh doanh tại các chợ hoặc các tuyến phố<br>
Hồ sơ yêu cầu: Bản sao CMND, Chứng từ chứng minh nơi ở hiện tại<br>


<strong>Vay Siêu tốc </strong><br>
Ưu điểm sản phẩm<br>
-	Vay đến 150 triệu trong tối đa 3 năm<br>
-	Thời gian xử lý hồ sơ và giải ngân siêu nhanh<br>
-	Không thế chấp, không chứng minh thu nhập
-	Khách hàng được chủ động quyết định 1 trong 4 gói vay hấp dẫn<br>
Dành cho: Khách hàng Tiểu thương, Hộ Kinh doanh tại các chợ/tuyến phố và có quyền sử dụng sạp chợ hoặc quyền sở hữu địa điểm kinh doanh
Hồ sơ yêu cầu: Bản sao CMND, Chứng từ chứng minh nơi ở hiện tại, Chứng từ chứng minh quyền sử dụng sạp chợ hoặc quyền sở hữu địa điểm kinh doanh<br>


<strong>Vay Thuế+</strong><br>
Ưu điểm sản phẩm:<br>
-	Vay đến 175 triệu trong tối đa 4 năm<br>
-	Thủ tục cực kỳ đơn giản: 01 biên lai nộp Thuế khoán kỳ gần nhất<br>
-	Không thế chấp, không chứng minh thu nhập<br>
Hồ sơ yêu cầu: Bản sao CMND, Chứng từ chứng minh nơi ở hiện tại, 01 biên lại nộp Thuế khoán<br>
<br>
<strong>Để tìm hiểu thêm, vui lòng xem tại đây:</strong><br>
<a href='http://www.vpbank.com.vn/commcredit'>http://www.vpbank.com.vn/commcredit</a><br>
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
