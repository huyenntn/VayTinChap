<%-- 
    Document   : index
    Created on : 17-Jul-2017, 11:07:38
    Author     : Ngoc
--%>

<%@page import="Dao.htmldisplayDAO"%>
<%@page import="Modal.htmldisplayObj"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modal.typeDealObj"%>
<%@page import="Dao.typeDealDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vay Tín Chấp</title>
        <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=0">
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
        <%
        htmldisplayObj htmlObj = new htmldisplayObj();
        htmldisplayDAO htmldisplayDAO = new htmldisplayDAO();
        ArrayList<htmldisplayObj> htmllist = new ArrayList<htmldisplayObj>();
        htmllist = htmldisplayDAO.getAllHtml();
    %>
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
                                <div class="titlebox"><span class="titletxt"><%=htmldisplayDAO.getHtmlById(1).getHtmlcode()%></span></div>
                <div class="contentbox">
                    <div class="describlebox"><span><%=htmldisplayDAO.getHtmlById(2).getHtmlcode()%></span></div>
                    <div class="profilelisbox">
                        <%=htmldisplayDAO.getHtmlById(3).getHtmlcode() %>
                    </div>
                </div>
            </div>
            <div class="boxitem">
                <div class="titlebox"><span class="titletxt"><%=htmldisplayDAO.getHtmlById(4).getHtmlcode()%></span></div>
                <div class="contentbox">
                    <div class="describlebox"><span><%=htmldisplayDAO.getHtmlById(5).getHtmlcode()%></span></div>
                    <div class="profilelisbox">
                        <%=htmldisplayDAO.getHtmlById(6).getHtmlcode()%>
                    </div>
                </div>
            </div>
            <div class="boxitem">
                <div class="titlebox"><span class="titletxt"><%=htmldisplayDAO.getHtmlById(7).getHtmlcode()%></span></div>
                <div class="contentbox">
                    <div class="describlebox"><span><%=htmldisplayDAO.getHtmlById(8).getHtmlcode()%></span>
                    </div>
                    <div class="profilelisbox">
                        <%=htmldisplayDAO.getHtmlById(9).getHtmlcode()%>
                    </div>
                </div>
            </div>
            <div class="boxitem">
                <div class="titlebox"><span class="titletxt"><%=htmldisplayDAO.getHtmlById(10).getHtmlcode()%></span></div>
                <div class="contentbox">
                    <div class="describlebox"><span><%=htmldisplayDAO.getHtmlById(11).getHtmlcode()%></span></div>
                    <div class="profilelisbox">
                        <%=htmldisplayDAO.getHtmlById(12).getHtmlcode()%>
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
                <div class="titlebox"><span class="titletxt"><%=htmldisplayDAO.getHtmlById(13).getHtmlcode()%></span></div>
                <div class="contentbox">
                    <%=htmldisplayDAO.getHtmlById(14).getHtmlcode()%>
                </div>
            </div>
            <div class="boxitem2">
                <div class="titlebox"><span class="titletxt"><%=htmldisplayDAO.getHtmlById(15).getHtmlcode()%></span></div>
                <div class="contentbox">
                    <%=htmldisplayDAO.getHtmlById(16).getHtmlcode()%>
                </div>
            </div>
            <div class="boxitem2">
                <div class="titlebox"><span class="titletxt"><%=htmldisplayDAO.getHtmlById(17).getHtmlcode()%></span></div>
                <div class="contentbox">
                    <%=htmldisplayDAO.getHtmlById(18).getHtmlcode()%>
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
                <div class="titlebox"><span class="titletxt"><%=htmldisplayDAO.getHtmlById(19).getHtmlcode()%></span></div>
                <div class="contentbox">
                    <div class="describlebox">
                        <%=htmldisplayDAO.getHtmlById(20).getHtmlcode()%>
                    </div>
                    <div class="profilelisbox">
                        <%=htmldisplayDAO.getHtmlById(21).getHtmlcode()%>
                        
                    </div>
                </div>
            </div>
            <div class="boxitem3">
                <div class="titlebox"><span class="titletxt"><%=htmldisplayDAO.getHtmlById(22).getHtmlcode()%></span></div>
                <div class="contentbox">
                    <div class="describlebox">
                        <%=htmldisplayDAO.getHtmlById(23).getHtmlcode()%>
                    </div>
                    <div class="profilelisbox">
                        <%=htmldisplayDAO.getHtmlById(24).getHtmlcode()%>
                    </div>
                </div>
            </div>
            <div class="boxitem3">
                <div class="titlebox"><span class="titletxt"><%=htmldisplayDAO.getHtmlById(25).getHtmlcode()%></span></div>
                <div class="contentbox">
                    <div class="describlebox">
                        <%=htmldisplayDAO.getHtmlById(26).getHtmlcode()%>
                    </div>
                    <div class="profilelisbox">
                        <%=htmldisplayDAO.getHtmlById(27).getHtmlcode()%>
                    </div>
                </div>
            </div>
            <div class="boxitem3">
                <div class="titlebox"><span class="titletxt"><%=htmldisplayDAO.getHtmlById(28).getHtmlcode()%></span></div>
                <div class="contentbox">
                    <div class="describlebox">
                        <%=htmldisplayDAO.getHtmlById(29).getHtmlcode()%>
                    </div>
                    <div class="profilelisbox">
                        <%=htmldisplayDAO.getHtmlById(30).getHtmlcode()%>
                        
                    </div>
                        
                    </div>
                </div>
            </div>        
        </div>
            </div>
      </div> 
    </div>
	<p class="landing-vp-phone-index"><a onclick='confirmcall()'>19001234</a></p>

      
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
