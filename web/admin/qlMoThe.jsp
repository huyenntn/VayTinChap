<%-- 
    Document   : qlMoThe
    Created on : 24-Jul-2017, 05:54:59
    Author     : Ngoc
--%>

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
        var htmlcode = document.getElementById('edt'+id).value.replace(/&nbsp;/g,'');
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
        <h1>Hello World!</h1>
    </body>
</html>
