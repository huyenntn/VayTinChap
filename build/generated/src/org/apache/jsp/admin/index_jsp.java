package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Modal.employeeObj;
import Dao.employeeDAO;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("<meta charset=\"utf-8\">\n");
      out.write("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<title>Admin</title>\n");
      out.write("<meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=0\">\n");
      out.write("        <link href=\"../css/bootstrap.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"../css/style.css\" rel=\"stylesheet\">\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div class=\"container\">\n");
      out.write("  <div class=\"row\">\n");
      out.write("    <div class=\"Absolute-Center is-Responsive\">\n");
      out.write("      <div id=\"logo-container\"></div>\n");
      out.write("      <div class=\"col-sm-12 col-md-10 col-md-offset-1\">\n");
      out.write("          <form id=\"loginForm\" method=\"post\" >\n");
      out.write("          <div class=\"form-group input-group\">\n");
      out.write("            <span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-user\"></i></span>\n");
      out.write("            <input class=\"form-control\" type=\"text\" name='username' placeholder=\"username\"/><p id=\"username_error\"></p>          \n");
      out.write("          </div>\n");
      out.write("          <div class=\"form-group input-group\">\n");
      out.write("            <span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-lock\"></i></span>\n");
      out.write("            <input class=\"form-control\" type=\"password\" name='password' placeholder=\"password\"/><p id=\"password_error\"></p>     \n");
      out.write("          </div>\n");
      out.write("          <div class=\"form-group\">\n");
      out.write("              <button type=\"submit\" class=\"btn btn-def btn-block btn-success\">Đăng nhập</button>\n");
      out.write("          </div>\n");
      out.write("        </form> \n");
      out.write("          ");

              String acc = request.getParameter("username");
              String pwd = request.getParameter("password");
                employeeDAO employeeDAO = new employeeDAO();
                employeeObj employee = new employeeObj();
              try{
                  int pass = Integer.parseInt(pwd);
                  int result = employeeDAO.checkLogin("admin", 123);
                  employee = employeeDAO.getEmployeeById(result);
                  if(result!=-1){
                      session.setAttribute("user",employee);
                      response.sendRedirect("customer.jsp");
                  }else{
                  out.print("Thông tin sai!");}
              }catch(Exception ex){
                  
              }
          
      out.write("\n");
      out.write("      </div>  \n");
      out.write("    </div>    \n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> \n");
      out.write("<script src=\"js/myjs.js\"></script>\n");
      out.write("<script src=\"../js/jquery-1.11.3.min.js\"></script>\n");
      out.write("<!-- Include all compiled plugins (below), or include individual files as needed --> \n");
      out.write("<script src=\"../js/bootstrap.js\"></script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
