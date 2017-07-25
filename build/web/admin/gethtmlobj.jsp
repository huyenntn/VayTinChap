<%@page import="Modal.htmldisplayObj"%>
<%@page import="Dao.htmldisplayDAO"%>
<%@ page language = "java" contentType = "text / html; charset = UTF-8" pageEncoding = "UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
        <meta charset="utf-8">
    </head>
    <body>
        <%
            request.setCharacterEncoding("UTF-8");
            htmldisplayDAO htmlDAO = new htmldisplayDAO();
            htmldisplayObj htmlObj = new htmldisplayObj();
            int id = Integer.parseInt(request.getParameter("id"));
            String htmlcode = request.getParameter("htmlcode");
             try {
                    if(!htmlcode.equals("")){
                        htmlDAO.updateHtml(id, htmlcode);
                    }
                  } catch (Exception e) {
                    }
            htmlObj = htmlDAO.getHtmlById(id);
            String code = htmlObj.getHtmlcode();
            out.print(code);
        %>
    </body>
</html>