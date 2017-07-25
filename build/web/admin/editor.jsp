<%-- 
    Document   : editor
    Created on : 21-Jul-2017, 20:57:55
    Author     : Ngoc
--%>

<%@page import="Modal.employeeObj"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Dao.htmldisplayDAO"%>
<%@page import="Modal.htmldisplayObj"%>
<%@ page language = "java" contentType = "text / html; charset = UTF-8" pageEncoding = "UTF-8"%> 
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
            xmlhttp = new XMLHttpRequest();
            xmlhttp.onreadystatechange = function(){
                if(xmlhttp.readyState==4 && xmlhttp.status==200){
                    document.getElementById("edittxt"+id).innerHTML = xmlhttp.responseText;
                }
            }
            xmlhttp.open("post","gethtmlobj.jsp?id="+id+"&htmlcode="+htmlcode);
            xmlhttp.send();
        }
</script>

  <script>
    function asd(id)
    {
        document.getElementById("form"+id).style.display="block";
        document.getElementById("btnsua"+id).style.display="none";
        document.getElementById("edittxt"+id).style.display="block";
        
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
    <%
        htmldisplayObj htmlObj = new htmldisplayObj();
        htmldisplayDAO htmldisplayDAO = new htmldisplayDAO();
        ArrayList<htmldisplayObj> htmllist = new ArrayList<htmldisplayObj>();
        htmllist = htmldisplayDAO.getAllHtml();
    %>
    <div class="wrapper">
        <div class="container">
            <h3 class="rule-vp-h3-admin">
                <span class="rule-vp-span">Quản lý nội dung trang chủ</span>
            </h3>
        <!------------Mở thẻ------------------------->
<div class="landing-persion" id="landing_opencard">
    <img class="is_web" src="../images/landing_00.jpg">
    <img class="is_wap" src="../images/landing_00_mobile.jpg">
    <p class="landing-home-btn"></p>
</div>
        <!-------------Vay ca nhan--------------------->
<div class="landing-persion" id="landing_persion">
		<img class="is_web" src="../images/landing_02.jpg">
		<img class="is_wap" src="../images/landing_02_mobile.jpg">
		<p class="landing-home-btn">
		</p>
      <div class="container">
        <div class="row">
            <div class="center">
            <div class="boxitem">
                <div class="titlebox">
                    <div class="edttit">
                        <a onclick="asd(1)" id="btnsua1" class="btnedthtmltit" ><i class="glyphicon glyphicon-pencil "></i></a>
                        <span class="titletxt" id="edittxt1"><%=htmldisplayDAO.getHtmlById(1).getHtmlcode()%></span>
                    </div>
                    <div class="edt">
                        <form id="form1" style="display: none;" accept-charset="UTF-8">
                            <textarea name="edt1" id="edt1" formenctype="multipart/form-data"></textarea>
                            <a class="btna btn btn-default" onclick="show(1)">Cập nhật</a>
                        </form>
                    </div>
                </div>
                <div class="contentbox">
                    <div class="describlebox">
                        <div class="edtcont">
                            <a onclick="asd(2)" id="btnsua2" class="btnedthtml" ><i class="glyphicon glyphicon-pencil "></i></a>
                            <span id="edittxt2"><%=htmldisplayDAO.getHtmlById(2).getHtmlcode()%></span>
                        </div>
                        <div class="edt">
                            <form id="form2" style="display: none;">
                                <textarea name="edt2" id="edt2" ></textarea>
                                <a class="btna btn btn-default" onclick="show(2)">Cập nhật</a>
                            </form>
                        </div>
                    </div>
             
                    <div class="profilelisbox">
                        <div class="edtcont">
                            <a onclick="asd(3)" id="btnsua3" class="btnedthtml" ><i class="glyphicon glyphicon-pencil "></i></a>
                            <span id="edittxt3"><%=htmldisplayDAO.getHtmlById(3).getHtmlcode()%></span>
                        </div>
                        <div class="edt">
                            <form id="form3" style="display: none;">
                                <textarea name="edt3" id="edt3" ></textarea>
                                <a class="btna btn btn-default" onclick="show(3)">Cập nhật</a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="boxitem">
                <div class="titlebox">
                    <div class="edttit">
                        <a onclick="asd(4)" id="btnsua4" class="btnedthtmltit" ><i class="glyphicon glyphicon-pencil "></i></a>
                        <span class="titletxt" id="edittxt4"><%=htmldisplayDAO.getHtmlById(4).getHtmlcode()%></span>
                    </div>
                    <div class="edt">
                        <form id="form4" style="display: none;" accept-charset="UTF-8">
                            <textarea name="edt4" id="edt4" formenctype="multipart/form-data"></textarea>
                            <a class="btna btn btn-default" onclick="show(4)">Cập nhật</a>
                        </form>
                    </div>
                </div>
                <div class="contentbox">
                    <div class="describlebox">
                        <div class="edtcont">
                            <a onclick="asd(5)" id="btnsua5" class="btnedthtml" ><i class="glyphicon glyphicon-pencil "></i></a>
                            <span id="edittxt5"><%=htmldisplayDAO.getHtmlById(5).getHtmlcode()%></span>
                        </div>
                        <div class="edt">
                            <form id="form5" style="display: none;">
                                <textarea name="edt5" id="edt5" ></textarea>
                                <a class="btna btn btn-default" onclick="show(5)">Cập nhật</a>
                            </form>
                        </div>
                    </div>
                    <div class="profilelisbox">
                        <div class="edtcont">
                            <a onclick="asd(6)" id="btnsua6" class="btnedthtml" ><i class="glyphicon glyphicon-pencil "></i></a>
                            <span id="edittxt6"><%=htmldisplayDAO.getHtmlById(6).getHtmlcode()%></span>
                        </div>
                        <div class="edt">
                            <form id="form6" style="display: none;">
                                <textarea name="edt6" id="edt6" ></textarea>
                                <a class="btna btn btn-default" onclick="show(6)">Cập nhật</a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="boxitem">
                <div class="titlebox">
                    <div class="edttit">
                        <a onclick="asd(7)" id="btnsua7" class="btnedthtmltit" ><i class="glyphicon glyphicon-pencil "></i></a>
                        <span class="titletxt" id="edittxt7"><%=htmldisplayDAO.getHtmlById(7).getHtmlcode()%></span>
                    </div>
                    <div class="edt">
                        <form id="form7" style="display: none;" accept-charset="UTF-8">
                            <textarea name="edt7" id="edt7" formenctype="multipart/form-data"></textarea>
                            <a class="btna btn btn-default" onclick="show(7)">Cập nhật</a>
                        </form>
                    </div>
                </div>
                <div class="contentbox">
                    <div class="describlebox">
                        <div class="edtcont">
                            <a onclick="asd(8)" id="btnsua8" class="btnedthtml" ><i class="glyphicon glyphicon-pencil "></i></a>
                            <span id="edittxt8"><%=htmldisplayDAO.getHtmlById(8).getHtmlcode()%></span>
                        </div>
                        <div class="edt">
                            <form id="form8" style="display: none;">
                                <textarea name="edt8" id="edt8" ></textarea>
                                <a class="btna btn btn-default" onclick="show(8)">Cập nhật</a>
                            </form>
                        </div>
                    </div>
                    <div class="profilelisbox">
                        <div class="edtcont">
                            <a onclick="asd(9)" id="btnsua9" class="btnedthtml" ><i class="glyphicon glyphicon-pencil "></i></a>
                            <span id="edittxt9"><%=htmldisplayDAO.getHtmlById(9).getHtmlcode()%></span>
                        </div>
                        <div class="edt">
                            <form id="form9" style="display: none;">
                                <textarea name="edt9" id="edt9" ></textarea>
                                <a class="btna btn btn-default" onclick="show(9)">Cập nhật</a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="boxitem">
                <div class="titlebox">
                    <div class="edttit">
                        <a onclick="asd(10)" id="btnsua10" class="btnedthtmltit" ><i class="glyphicon glyphicon-pencil "></i></a>
                        <span class="titletxt" id="edittxt10"><%=htmldisplayDAO.getHtmlById(10).getHtmlcode()%></span>
                    </div>
                    <div class="edt">
                        <form id="form10" style="display: none;" accept-charset="UTF-8">
                            <textarea name="edt10" id="edt10" formenctype="multipart/form-data"></textarea>
                            <a class="btna btn btn-default" onclick="show(10)">Cập nhật</a>
                        </form>
                    </div>
                </div>
                <div class="contentbox">
                    <div class="describlebox">
                        <div class="edtcont">
                            <a onclick="asd(11)" id="btnsua11" class="btnedthtml" ><i class="glyphicon glyphicon-pencil "></i></a>
                            <span id="edittxt11"><%=htmldisplayDAO.getHtmlById(11).getHtmlcode()%></span>
                        </div>
                        <div class="edt">
                            <form id="form11" style="display: none;">
                                <textarea name="edt11" id="edt11" ></textarea>
                                <a class="btna btn btn-default" onclick="show(11)">Cập nhật</a>
                            </form>
                        </div>
                    </div>
                    <div class="profilelisbox">
                        <div class="edtcont">
                            <a onclick="asd(12)" id="btnsua12" class="btnedthtml" ><i class="glyphicon glyphicon-pencil "></i></a>
                            <span id="edittxt12"><%=htmldisplayDAO.getHtmlById(12).getHtmlcode()%></span>
                        </div>
                        <div class="edt">
                            <form id="form12" style="display: none;">
                                <textarea name="edt12" id="edt12" ></textarea>
                                <a class="btna btn btn-default" onclick="show(12)">Cập nhật</a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      </div>            
</div>
    <div class="landing-enterprise" id="landing_enterprise">
    	<img class="is_web" src="../images/landing_04.jpg">
		<img class="is_wap" src="../images/landing_04_mobile.jpg">
			<p class="landing-home-btn"></p>
	<div class="container i-am-centered">
            <div class="row">
                <div class="center">
            <div class="boxitem2">
                <div class="titlebox">
                    <div class="edttit">
                        <a onclick="asd(13)" id="btnsua13" class="btnedthtmltit" ><i class="glyphicon glyphicon-pencil "></i></a>
                        <span class="titletxt" id="edittxt13"><%=htmldisplayDAO.getHtmlById(13).getHtmlcode()%></span>
                    </div>
                    <div class="edt">
                        <form id="form13" style="display: none;">
                            <textarea name="edt13" id="edt13" ></textarea>
                            <a class="btna btn btn-default" onclick="show(13)">Cập nhật</a>
                        </form>
                    </div>
                </div>
                <div class="contentbox">
                    <div class="edtcont">
                            <a onclick="asd(14)" id="btnsua14" class="btnedthtml" ><i class="glyphicon glyphicon-pencil "></i></a>
                            <span id="edittxt14"><%=htmldisplayDAO.getHtmlById(14).getHtmlcode()%></span>
                        </div>
                        <div class="edt">
                            <form id="form14" style="display: none;">
                                <textarea name="edt14" id="edt14" ></textarea>
                                <a class="btna btn btn-default" onclick="show(14)">Cập nhật</a>
                            </form>
                        </div>
                </div>
            </div>
            <div class="boxitem2">
                <div class="titlebox">
                   <div class="edttit">
                        <a onclick="asd(15)" id="btnsua15" class="btnedthtmltit" ><i class="glyphicon glyphicon-pencil "></i></a>
                        <span class="titletxt" id="edittxt15"><%=htmldisplayDAO.getHtmlById(15).getHtmlcode()%></span>
                    </div>
                    <div class="edt">
                        <form id="form15" style="display: none;">
                            <textarea name="edt15" id="edt15" ></textarea>
                            <a class="btna btn btn-default" onclick="show(15)">Cập nhật</a>
                        </form>
                    </div>
                </div>
                <div class="contentbox">
                    <div class="edtcont">
                            <a onclick="asd(16)" id="btnsua16" class="btnedthtml" ><i class="glyphicon glyphicon-pencil "></i></a>
                            <span id="edittxt16"><%=htmldisplayDAO.getHtmlById(16).getHtmlcode()%></span>
                        </div>
                        <div class="edt">
                            <form id="form16" style="display: none;">
                                <textarea name="edt16" id="edt16" ></textarea>
                                <a class="btna btn btn-default" onclick="show(16)">Cập nhật</a>
                            </form>
                        </div>
                </div>
            </div>
            <div class="boxitem2">
                <div class="titlebox">
                   <div class="edttit">
                        <a onclick="asd(17)" id="btnsua17" class="btnedthtmltit" ><i class="glyphicon glyphicon-pencil "></i></a>
                        <span class="titletxt" id="edittxt17"><%=htmldisplayDAO.getHtmlById(17).getHtmlcode()%></span>
                    </div>
                    <div class="edt">
                        <form id="form17" style="display: none;">
                            <textarea name="edt17" id="edt17" ></textarea>
                            <a class="btna btn btn-default" onclick="show(17)">Cập nhật</a>
                        </form>
                    </div>
                </div>
                <div class="contentbox">
                    <div class="edtcont">
                            <a onclick="asd(18)" id="btnsua18" class="btnedthtml" ><i class="glyphicon glyphicon-pencil "></i></a>
                            <span id="edittxt18"><%=htmldisplayDAO.getHtmlById(18).getHtmlcode()%></span>
                        </div>
                        <div class="edt">
                            <form id="form18" style="display: none;">
                                <textarea name="edt18" id="edt18" ></textarea>
                                <a class="btna btn btn-default" onclick="show(18)">Cập nhật</a>
                            </form>
                        </div>
                </div>
            </div>
        </div>
            </div>
      </div> 
    </div>
    <div class="landing-small_business" id="landing_small_business">
    	<img class="is_web" src="../images/landing_06.jpg">
		<img class="is_wap" src="../images/landing_06_mobile.jpg">
		<p class="landing-home-btn">
						
		</p>
		<div class="container i-am-centered">
            <div class="row">
                <div class="center">
            <div class="boxitem3">
                <div class="titlebox">
                    <div class="edttit">
                        <a onclick="asd(19)" id="btnsua19" class="btnedthtmltit" ><i class="glyphicon glyphicon-pencil "></i></a>
                        <span class="titletxt" id="edittxt19"><%=htmldisplayDAO.getHtmlById(19).getHtmlcode()%></span>
                    </div>
                    <div class="edt">
                        <form id="form19" style="display: none;">
                            <textarea name="edt19" id="edt19" ></textarea>
                            <a class="btna btn btn-default" onclick="show(19)">Cập nhật</a>
                        </form>
                    </div>
                </div>
                <div class="contentbox">
                    <div class="describlebox">
                        <div class="edtcont">
                            <a onclick="asd(20)" id="btnsua20" class="btnedthtml" ><i class="glyphicon glyphicon-pencil "></i></a>
                            <span id="edittxt20"><%=htmldisplayDAO.getHtmlById(20).getHtmlcode()%></span>
                        </div>
                        <div class="edt">
                            <form id="form20" style="display: none;">
                                <textarea name="edt20" id="edt20" ></textarea>
                                <a class="btna btn btn-default" onclick="show(20)">Cập nhật</a>
                            </form>
                        </div>
                    </div>
                    <div class="profilelisbox">
                        <div class="edtcont">
                            <a onclick="asd(21)" id="btnsua21" class="btnedthtml" ><i class="glyphicon glyphicon-pencil "></i></a>
                            <span id="edittxt21"><%=htmldisplayDAO.getHtmlById(21).getHtmlcode()%></span>
                        </div>
                        <div class="edt">
                            <form id="form21" style="display: none;">
                                <textarea name="edt21" id="edt21" ></textarea>
                                <a class="btna btn btn-default" onclick="show(21)">Cập nhật</a>
                            </form>
                        </div>
                    </div>
                </div>   
            </div>
            <div class="boxitem3">
                <div class="titlebox">
                    <div class="edttit">
                        <a onclick="asd(22)" id="btnsua22" class="btnedthtmltit" ><i class="glyphicon glyphicon-pencil "></i></a>
                        <span class="titletxt" id="edittxt22"><%=htmldisplayDAO.getHtmlById(22).getHtmlcode()%></span>
                    </div>
                    <div class="edt">
                        <form id="form22" style="display: none;" accept-charset="UTF-8">
                            <textarea name="edt22" id="edt22" formenctype="multipart/form-data"></textarea>
                            <a class="btna btn btn-default" onclick="show(22)">Cập nhật</a>
                        </form>
                    </div>
                </div>
                <div class="contentbox">
                    <div class="describlebox">
                        <div class="edtcont">
                            <a onclick="asd(23)" id="btnsua23" class="btnedthtml" ><i class="glyphicon glyphicon-pencil "></i></a>
                            <span id="edittxt23"><%=htmldisplayDAO.getHtmlById(23).getHtmlcode()%></span>
                        </div>
                        <div class="edt">
                            <form id="form23" style="display: none;">
                                <textarea name="edt23" id="edt23" ></textarea>
                                <a class="btna btn btn-default" onclick="show(23)">Cập nhật</a>
                            </form>
                        </div>
                    </div>
                    <div class="profilelisbox">
                        <div class="edtcont">
                            <a onclick="asd(24)" id="btnsua24" class="btnedthtml" ><i class="glyphicon glyphicon-pencil "></i></a>
                            <span id="edittxt24"><%=htmldisplayDAO.getHtmlById(24).getHtmlcode()%></span>
                        </div>
                        <div class="edt">
                            <form id="form24" style="display: none;">
                                <textarea name="edt24" id="edt24" ></textarea>
                                <a class="btna btn btn-default" onclick="show(24)">Cập nhật</a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="boxitem3">
                <div class="titlebox">
                    <div class="edttit">
                        <a onclick="asd(25)" id="btnsua25" class="btnedthtmltit" ><i class="glyphicon glyphicon-pencil "></i></a>
                        <span class="titletxt" id="edittxt25"><%=htmldisplayDAO.getHtmlById(25).getHtmlcode()%></span>
                    </div>
                    <div class="edt">
                        <form id="form25" style="display: none;" accept-charset="UTF-8">
                            <textarea name="edt25" id="edt25" formenctype="multipart/form-data"></textarea>
                            <a class="btna btn btn-default" onclick="show(25)">Cập nhật</a>
                        </form>
                    </div>
                </div>
                <div class="contentbox">
                    <div class="describlebox">
                        <div class="edtcont">
                            <a onclick="asd(26)" id="btnsua26" class="btnedthtml" ><i class="glyphicon glyphicon-pencil "></i></a>
                            <span id="edittxt26"><%=htmldisplayDAO.getHtmlById(26).getHtmlcode()%></span>
                        </div>
                        <div class="edt">
                            <form id="form26" style="display: none;">
                                <textarea name="edt26" id="edt26" ></textarea>
                                <a class="btna btn btn-default" onclick="show(26)">Cập nhật</a>
                            </form>
                        </div>
                    </div>
                    <div class="profilelisbox">
                        <div class="edtcont">
                            <a onclick="asd(27)" id="btnsua27" class="btnedthtml" ><i class="glyphicon glyphicon-pencil "></i></a>
                            <span id="edittxt27"><%=htmldisplayDAO.getHtmlById(27).getHtmlcode()%></span>
                        </div>
                        <div class="edt">
                            <form id="form27" style="display: none;">
                                <textarea name="edt27" id="edt27" ></textarea>
                                <a class="btna btn btn-default" onclick="show(27)">Cập nhật</a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="boxitem3">
                <div class="titlebox">
                    <div class="edttit">
                        <a onclick="asd(28)" id="btnsua28" class="btnedthtmltit" ><i class="glyphicon glyphicon-pencil "></i></a>
                        <span class="titletxt" id="edittxt28"><%=htmldisplayDAO.getHtmlById(28).getHtmlcode()%></span>
                    </div>
                    <div class="edt">
                        <form id="form28" style="display: none;" accept-charset="UTF-8">
                            <textarea name="edt28" id="edt28" formenctype="multipart/form-data"></textarea>
                            <a class="btna btn btn-default" onclick="show(28)">Cập nhật</a>
                        </form>
                    </div>
                </div>
                <div class="contentbox">
                    <div class="describlebox">
                        <div class="edtcont">
                            <a onclick="asd(29)" id="btnsua29" class="btnedthtml" ><i class="glyphicon glyphicon-pencil "></i></a>
                            <span id="edittxt29"><%=htmldisplayDAO.getHtmlById(29).getHtmlcode()%></span>
                        </div>
                        <div class="edt">
                            <form id="form29" style="display: none;">
                                <textarea name="edt29" id="edt29" ></textarea>
                                <a class="btna btn btn-default" onclick="show(29)">Cập nhật</a>
                            </form>
                        </div>
                    </div>
                    <div class="profilelisbox">
                        <div class="edtcont">
                            <a onclick="asd(30)" id="btnsua30" class="btnedthtml" ><i class="glyphicon glyphicon-pencil "></i></a>
                            <span id="edittxt30"><%=htmldisplayDAO.getHtmlById(30).getHtmlcode()%></span>
                        </div>
                        <div class="edt">
                            <form id="form30" style="display: none;">
                                <textarea name="edt30" id="edt30" ></textarea>
                                <a class="btna btn btn-default" onclick="show(30)">Cập nhật</a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>        
        </div>
            </div>
      </div> 
    </div>
                        <jsp:include page="boxcode.jsp"/>
    </div>
    </div>
</body>
</html>
