<%-- 
    Document   : index
    Created on : 17-Jul-2017, 11:07:38
    Author     : Ngoc
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Modal.typeDealObj"%>
<%@page import="Dao.typeDealDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=0">
    <title>Ngân hàng VPBank</title>
    <link rel="icon" href="images/icon_fav.ico" type="image/x-icon">
    <link href="css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/reset.css">

    <!--Plug-in css-->
    <link rel="stylesheet" type="text/css" href="css/owl.carousel.css">

    <!--Local css-->
    <link rel="stylesheet" type="text/css" href="css/style.css" >
    <link rel="stylesheet" type="text/css" href="css/font-awesome.css">
    
    <script src="js/jquery-1.11.2.min.js"></script> 
    <meta content="telephone=no" name="format-detection">

    <link href="css/coder-update.css" rel="stylesheet">
   
    <!--<script type="text/javascript">--><!--var myScroll1;--><!--var myScroll2;--><!--var myScroll3;--><!--var myScroll4;--><!--var myScroll5;--><!--function loaded () {--><!--myScroll1 = new IScroll('#box-scroller-1', { eventPassthrough: true, scrollX: true, scrollY: false, preventDefault: false });--><!--myScroll2 = new IScroll('#box-scroller-2', { eventPassthrough: true, scrollX: true, scrollY: false, preventDefault: false });--><!--myScroll3 = new IScroll('#box-scroller-3', { eventPassthrough: true, scrollX: true, scrollY: false, preventDefault: false });--><!--myScroll4 = new IScroll('#box-scroller-4', { eventPassthrough: true, scrollX: true, scrollY: false, preventDefault: false });	--><!--myScroll5 = new IScroll('#box-scroller-5', { eventPassthrough: true, scrollX: true, scrollY: false, preventDefault: false });	--><!--}--><!--</script>--><!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries --><!-- WARNING: Respond.js doesn't work if you view the page via file:// --><!--[if lt IE 9]> <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script> <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script> <![endif]-->
    
    <meta name="description" content="Trang Chủ - Ngân hàng VPBank" />
    <meta name="keywords" content="Ngân hàng VPBank, Trang Chủ" />
    <meta name="news_keywords" content="Trang Chủ - Ngân hàng VPBank" />
    <meta property="og:description" content="Trang Chủ - Ngân hàng VPBank" />
    <meta name="dc.keywords" content="Ngân hàng VPBank, Trang Chủ" />
    <meta property="og:title" content="Trang Chủ - Ngân hàng VPBank" />
    <meta name="dc.title" content="Trang Chủ - Ngân hàng VPBank" />
    <link rel="canonical" href="index.jsp" />
    <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

      ga('create', 'UA-99751051-1', 'auto');
      ga('send', 'pageview');

    </script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <!--------------------------------------HEADER---------------------------------------->
        <div class="mdl-header navbar-fixed-top"> 
                <div class="container">	
                <div id="hamburger"><span></span></div> 
                <a href="index.jsp" class="logo"><img src="images/logo2.png"/></a>
                <div class="menu-top">
                    <div class="navid">
                    <div class="item-link"><a href="#landing_opencard">Đăng ký mở thẻ</a></div>
                    <div class="item-link"><a href="#landing_persion">Vay cá nhân</a></div>
                    <div class="item-link"><a href="#landing_enterprise">Vay doanh nghiệp</a></div>
                    <div class="item-link "><a href="#landing_small_business">Vay tiểu thương</a></div>       
                    </div>
                </div>
              </div>
        </div>
        <!--------------------------------------BANNER---------------------------------------->
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <a href="index.jsp" ><img src="images/vay nhanh VN.JPG" alt="Chania" height="350px"></a>
      <div class="carousel-caption">
        <h3>Khuyến mãi 1</h3>
        <p>Mở thẻ!</p>
      </div>
    </div>

    <div class="item">
      <a href="index.jsp" ><img src="images/vay nhanh VN.JPG" alt="Chania" height="350px"></a>
      <div class="carousel-caption">
        <h3>Khuyến mãi 2</h3>
        <p>Mở thẻ!</p>
      </div>
    </div>

    <div class="item">
      <a href="index.jsp" ><img src="images/vay nhanh VN.JPG" alt="Chania" height="350px"></a>
      <div class="carousel-caption">
        <h3>Khuyến mãi 3</h3>
        <p>Mở thẻ!</p>
      </div>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
        <!------------Mở thẻ------------------------->
<div class="landing-persion" id="landing_opencard">
	<img class="is_web" src="images/landing_00.jpg">
    <img class="is_wap" src="images/landing_00_mobile.jpg">
    <p class="landing-home-btn">
			<a  href='mo-the.jsp'>
				Đăng ký
			</a>
		</p>
</div>
        <!-------------Vay ca nhan--------------------->
<div class="landing-persion" id="landing_persion">
		<img class="is_web" src="images/landing_02.jpg">
		<img class="is_wap" src="images/landing_02_mobile.jpg">
		<p class="landing-home-btn">
			<a  href='vay-ca-nhan.jsp'>
				Đăng ký
			</a>
		</p>
      <div class="container">
        <div class="row">
            <div class="center">
                            <div class="boxitem">
                <div class="titlebox"><span class="titletxt">KH là CBNV có thu nhập từ lương</span></div>
                <div class="contentbox">
                    <div class="describlebox"><span>Khách hàng đang công tác tại các doanh nghiệp, nhận lương bằng tiền mặt hoặc chuyển khoản</span></div>
                    <div class="profilelisbox">
                        <span style="font-weight: bold">Hồ sơ yêu cầu:</span>
                        <ul>
                            <li><span>Bản sao CMND/Hộ chiếu/Thẻ căn cước</span></li>
                            <li><span>Chứng từ chứng minh nơi ở hiện tại</span></li>
                            <li><span>Hồ sơ chứng minh thu nhập và công việc</span></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="boxitem">
                <div class="titlebox"><span class="titletxt">KH nhận lương qua VPBank</span></div>
                <div class="contentbox">
                    <div class="describlebox"><span>Khách hàng đã nhận lương qua tài khoản mở tại VPBank tối thiểu 1 tháng</span></div>
                    <div class="profilelisbox">
                        <span style="font-weight: bold">Hồ sơ yêu cầu:</span>
                        <ul>
                            <li><span>Bản sao CMND/Hộ chiếu/Thẻ căn cước</span></li>
                            <li><span>Chứng từ chứng minh nơi ở hiện tại</span></li>
                            <li><span>Bản sao hợp đồng lao động</span></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="boxitem">
                <div class="titlebox"><span class="titletxt">KH là CBNV có thu nhập từ lương chuyển khoản</span></div>
                <div class="contentbox">
                    <div class="describlebox"><span>Khách hàng là CBNV nhận lương chuyển khoản từ 15 triệu/tháng</span>
                        <ul  style="font-style: italic; font-size: 12px; list-style: none; margin-top: 10px;">
                            <li><span>*Lãi xuất ưu đãi</span></li>
                            <li><span>*Phê duyệt trong 2h</span></li>
                        </ul>
                    </div>
                    <div class="profilelisbox">
                        <span style="font-weight: bold">Hồ sơ yêu cầu:</span>
                        <ul>
                            <li><span>Bản sao CMND/Hộ chiếu/Thẻ căn cước</span></li>
                            <li><span>Chứng từ chứng minh nơi ở hiện tại</span></li>
                            <li><span>Hồ sơ chứng minh thu nhập và công việc</span></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="boxitem">
                <div class="titlebox"><span class="titletxt">KH là giáo viên</span></div>
                <div class="contentbox">
                    <div class="describlebox"><span>Khách hàng là giáo viên đang công tác tại tất cả các trường, từ mầm non đến đại học</span></div>
                    <div class="profilelisbox">
                        <span style="font-weight: bold">Hồ sơ yêu cầu:</span>
                        <ul>
                            <li><span>Bản sao CMND/Hộ chiếu/Thẻ căn cước</span></li>
                            <li><span>Hồ sơ chứng minh thu nhập và môn học giảng dạy</span></li>
                        </ul>
                    </div>
                </div>
            </div>
            </div>
        </div>
      </div>            
</div>
    <div class="landing-enterprise" id="landing_enterprise">
    	<img class="is_web" src="images/landing_04.jpg">
		<img class="is_wap" src="images/landing_04_mobile.jpg">
			<p class="landing-home-btn">
			<a href='vay-doanh-nghiep.jsp'>
				Đăng ký
			</a>			
		</p>
	<div class="container i-am-centered">
            <div class="row">
                <div class="center">
            <div class="boxitem2">
                <div class="titlebox"><span class="titletxt">Ưu điểm sản phẩm</span></div>
                <div class="contentbox">
                    <ul>
                            <li><span>Không giới hạn số năm hoạt động</span></li>
                            <li><span>Không ràng buộc doanh thu tối thiểu</span></li>
                            <li><span>Không yêu cầu tài sản thế chấp</span></li>
                            <li><span>Hồ sơ chứng minh mục đích vay đơn giản</span></li>
                            <li><span>Lãi suất cạnh tranh</span></li>
                            <li><span>Hạn mức cho vay lên đến 5 tỷ đồng</span></li>
                            <li><span>Thời gian vay: 36 tháng</span></li>
                        </ul>
                </div>
            </div>
            <div class="boxitem2">
                <div class="titlebox"><span class="titletxt">Hồ sơ yêu cầu</span></div>
                <div class="contentbox">
                    <ul>
                        <li><span>Báo cáo tài chính</span></li>
                        <li><span>Hồ sơ chứng minh mục đích sử dụng vốn</span></li>
                    </ul>
                </div>
            </div>
            <div class="boxitem2">
                <div class="titlebox"><span class="titletxt">Đối tượng khách hàng</span></div>
                <div class="contentbox">
                    <ul>
                        <li><span>Khách hàng Doanh nghiệp vừa và nhỏ</span></li>
                    </ul>
                </div>
            </div>
        </div>
            </div>
      </div> 
    </div>
    <div class="landing-small_business" id="landing_small_business">
    	<img class="is_web" src="images/landing_06.jpg">
		<img class="is_wap" src="images/landing_06_mobile.jpg">
		<p class="landing-home-btn">
			<a href='vay-tieu-thuong.jsp'>
				Đăng ký
			</a>			
		</p>
		<div class="container i-am-centered">
            <div class="row">
                <div class="center">
            <div class="boxitem3">
                <div class="titlebox"><span class="titletxt">Vay trả góp theo ngày</span></div>
                <div class="contentbox">
                    <div class="describlebox">
                        <span style="font-weight: bold">Ưu điểm sản phẩm</span>
                        <ul>
                            <li><span>Vay từ 10 triệu đến 50 triệu trong tối đa 6 tháng</span></li>
                            <li><span>Không thế chấp, không chứng minh thu nhập</span></li>
                            <li><span>Nhân viên thu tiền tận nơi mỗi ngày</span></li>
                        </ul>
                    </div>
                    <div class="profilelisbox">
                        <ul style="list-style: none">
                            <li><span style="font-weight: bold">Dành cho: </span><span>Khách hàng tiểu thương, Hộ kinh doanh tại các chợ</span></li>
                            <li><span style="font-weight: bold">Hồ sơ yêu cầu: </span><span>Bản sao CMND, Chứng từ chứng minh nơi ở hiện tại</span></li>
                        </ul>
                        
                    </div>
                </div>
            </div>
            <div class="boxitem3">
                <div class="titlebox"><span class="titletxt">Vay trả góp theo tháng</span></div>
                <div class="contentbox">
                    <div class="describlebox">
                        <span style="font-weight: bold">Ưu điểm sản phẩm</span>
                        <ul>
                            <li><span>Vay từ 20 triệu đến 300 triệu trong tối đa 3 năm</span></li>
                            <li><span>Trả góp tiện lợi hàng tháng</span></li>
                        </ul>
                    </div>
                    <div class="profilelisbox">
                        <ul style="list-style: none">
                            <li><span style="font-weight: bold">Dành cho: </span><span>Khách hàng tiểu thương, Hộ kinh doanh tại các chợ hoặc các tuyến phố</span></li>
                            <li><span style="font-weight: bold">Hồ sơ yêu cầu: </span><span>Bản sao CMND, Chứng từ chứng minh nơi ở hiện tại</span></li>
                        </ul>
                        
                    </div>
                </div>
            </div>
            <div class="boxitem3">
                <div class="titlebox"><span class="titletxt">Vay siêu tốc</span></div>
                <div class="contentbox">
                    <div class="describlebox">
                        <span style="font-weight: bold">Ưu điểm sản phẩm</span>
                        <ul>
                            <li><span>Vay đến 10 triệu trong tối đa 3 năm</span></li>
                            <li><span>Thời gian xử lý hồ sơ và giải ngân siêu nhanh</span></li>
                            <li><span>Không thế chấp, không chứng minh thu nhập</span></li>
                            <li><span>Khách hàng được chủ động quyết định 1 trong 4 gói vay hấp dẫn</span></li>
                        </ul>
                    </div>
                    <div class="profilelisbox">
                        <ul style="list-style: none">
                            <li><span style="font-weight: bold">Dành cho: </span><span>Khách hàng tiểu thương, Hộ kinh doanh tại các chợ/tuyến phố và có quyền sử dụng sạp chợ hoặc quyền sở hữu địa điểm kinh doanh</span></li>
                            <li><span style="font-weight: bold">Hồ sơ yêu cầu: </span><span>Bản sao CMND, Chứng từ chứng minh nơi ở hiện tại, Chứng từ chứng minh quyền sử dụng sạp chợ hoặc quyền sở hữu địa điểm kinh doanh</span></li>
                        </ul>
                        
                    </div>
                </div>
            </div>
            <div class="boxitem3">
                <div class="titlebox"><span class="titletxt">Vay Thuế+</span></div>
                <div class="contentbox">
                    <div class="describlebox">
                        <span style="font-weight: bold">Ưu điểm sản phẩm</span>
                        <ul>
                            <li><span>Vay đến 175 triệu trong tối đa 4 năm</span></li>
                            <li><span>Thủ tục cực kỳ đơn giản: 01 biên lai nộp Thuế khoán kỳ gần nhất</span></li>
                            <li><span>Không thế chấp, không chứng minh thu nhập</span></li>
                        </ul>
                    </div>
                    <div class="profilelisbox">
                        <ul style="list-style: none">
                            <li><span style="font-weight: bold">Hồ sơ yêu cầu:</span><span>Bản sao CMND, Chứng từ chứng minh nơi ở hiện tại, 01 biên lai nộp Thuế khoán</span></li>
                        </ul>
                        
                    </div>
                </div>
            </div>        
        </div>
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
