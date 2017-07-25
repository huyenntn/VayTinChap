<%-- 
    Document   : qlMoThe
    Created on : 24-Jul-2017, 05:54:59
    Author     : Ngoc
--%>

<%@page import="Modal.employeeObj"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Dao.htmldisplayDAO"%>
<%@page import="Modal.htmldisplayObj"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
        <title>JSP Page</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=0">
        <link href="../css/bootstrap.css" rel="stylesheet">
        <link href="../css/style.css" rel="stylesheet">
        <link href="../css/font-awesome.css" rel="stylesheet">
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <link rel="stylesheet"href="../css/bs_leftnavi.css">
        <script src="../js/bs_leftnavi.js"></script>
        <script src="ckeditor/ckeditor.js"></script>
        <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=0">
    <link rel="icon" href="images/icon_fav.ico" type="image/x-icon">
    <link href="css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/reset.css">

    <!--Plug-in css-->
    <link rel="stylesheet" type="text/css" href="css/owl.carousel.css">
    
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
    <style type="text/css">
        .clear {
            clear: both;
        }
    </style>
    <script>
        function show(id){
            document.getElementById("btnsua"+id).style.display="block";
            document.getElementById("form"+id).style.display="none";
            document.getElementById("edittxt"+id).style.display="block";
            var htmlcode = document.getElementById('edt'+id).value.replace(/&nbsp;/g,'').replace(/&/g,'và').replace(/vànbsp;/g,'').replace(/%/g,'%25');
            var params = "id="+id+"&htmlcode="+htmlcode;
            xmlhttp = new XMLHttpRequest();
            xmlhttp.onreadystatechange = function(){
                if(xmlhttp.readyState==4 && xmlhttp.status==200){
                    document.getElementById("edittxt"+id).innerHTML = xmlhttp.responseText;
                }
            }
            xmlhttp.open("post","gethtmlobj.jsp", true);
            xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            xmlhttp.send(params);
        }
    </script>

  <script>
    function asd(id)
    {
        document.getElementById("form"+id).style.display="block";
        document.getElementById("btnsua"+id).style.display="none";
        document.getElementById("edittxt"+id).style.display="none";
        
    }
  </script> 
      
                  
        
    </head>
    <body>
        <%
            employeeObj employee1 = (employeeObj)session.getAttribute("user");
            String user = employee1.getAcc();
        %>
        <!--navigation-->
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
        <%
            htmldisplayObj htmlObj = new htmldisplayObj();
            htmldisplayDAO htmldisplayDAO = new htmldisplayDAO();
            ArrayList<htmldisplayObj> htmllist = new ArrayList<htmldisplayObj>();
            htmllist = htmldisplayDAO.getAllHtml();
        %>
        <div class="wrapper">
            <div class="container">
                <h3 class="rule-vp-h3-admin">
                    <span class="rule-vp-span">Quản lý nội dung trang Vay doanh nghiệp</span>
                </h3>
                <div class="titlesubpage">
                    <div class="rule-vp-h3-admin">
                                <span class="rule-vp-span" id="edittxt50"><%=htmldisplayDAO.getHtmlById(50).getHtmlcode()%></span>
                                <div class="edtcont2">
                                    <a onclick="asd(50)" id="btnsua50" class="btnedthtmltitcon" ><i class="glyphicon glyphicon-pencil " style="font-size: 15px"></i></a>
                                </div>
                                <div class="edt11">
                                    <form id="form50" style="display: none; ">
                                        <textarea name="edt50" id="edt50" ></textarea>
                                        <a class="btna btn btn-default" onclick="show(50)">Cập nhật</a>
                                    </form>
                                </div>
                    </div>
                </div>
                    <div class="rule-vp-row">
                        <h3 class="rule-vp-h3-admin">
                                <span class="rule-vp-span" id="edittxt39"><%=htmldisplayDAO.getHtmlById(39).getHtmlcode()%></span>
                                <div class="edtcont2">
                                    <a onclick="asd(39)" id="btnsua39" class="btnedthtmltitcon" ><i class="glyphicon glyphicon-pencil " style="font-size: 15px"></i></a>
                                </div>
                                <div class="edt11">
                                    <form id="form39" style="display: none; ">
                                        <textarea name="edt39" id="edt39" ></textarea>
                                        <a class="btna btn btn-default" onclick="show(39)">Cập nhật</a>
                                    </form>
                                </div>
                        </h3>     
                        <div class="rule-vp-content-admin">
                            <span id="edittxt40"><%=htmldisplayDAO.getHtmlById(40).getHtmlcode()%></span>
                            <div class="edtcont2">
                                    <a onclick="asd(40)" id="btnsua40" class="btnedthtmltitcon" ><i class="glyphicon glyphicon-pencil "></i></a>
                                </div>
                                <div class="edt11">
                                    <form id="form40" style="display: none; ">
                                        <textarea name="edt40" id="edt40" ></textarea>
                                        <a class="btna btn btn-default" onclick="show(40)">Cập nhật</a>
                                    </form>
                                </div>
                        </div>
                    </div>

                    <div class="rule-vp-row infor-vp-row">
                        <h3 class="rule-vp-h3-admin">
                                <span class="rule-vp-span" id="edittxt41"><%=htmldisplayDAO.getHtmlById(41).getHtmlcode()%></span>
                                <div class="edtcont2">
                                    <a onclick="asd(41)" id="btnsua41" class="btnedthtmltitcon" ><i class="glyphicon glyphicon-pencil " style="font-size: 15px"></i></a>
                                </div>
                                <div class="edt11">
                                    <form id="form41" style="display: none; ">
                                        <textarea name="edt41" id="edt41" ></textarea>
                                        <a class="btna btn btn-default" onclick="show(41)">Cập nhật</a>
                                    </form>
                                </div>
                        </h3>  
                        <div class="rule-vp-content-admin" style="display: block;">
                            <span id="edittxt42"><%=htmldisplayDAO.getHtmlById(42).getHtmlcode()%></span>
                            <div class="edtcont2">
                                    <a onclick="asd(42)" id="btnsua42" class="btnedthtmltitcon" ><i class="glyphicon glyphicon-pencil "></i></a>
                                </div>
                                <div class="edt11">
                                    <form id="form42" style="display: none; ">
                                        <textarea name="edt42" id="edt42" ></textarea>
                                        <a class="btna btn btn-default" onclick="show(42)">Cập nhật</a>
                                    </form>
                                </div>
                        </div>
                    </div>
                    <jsp:include page="boxcode.jsp"/>
                </div>
            </div>

        <script src="js/jquery-ui.js"></script> 
<script src="js/owl.carousel.min.js"></script> 

<!--Local js-->
<script src="js/5dtv.js"></script>
<script>
    $(document).ready(function() {
    $(".rule-vp-h3").click(function() {
            $(this).parent().find(".rule-vp-content-admin").toggle();
        })
    })
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
