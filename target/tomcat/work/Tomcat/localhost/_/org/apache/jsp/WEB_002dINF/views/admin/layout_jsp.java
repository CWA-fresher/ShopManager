/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2020-02-25 08:58:03 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class layout_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<base href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.servletContext.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/\">\r\n");
      out.write("<meta charset=\"utf-8\" />\r\n");
      out.write("<link rel=\"icon\" type=\"image/png\" href=\"assets/img/favicon.ico\">\r\n");
      out.write("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\" />\r\n");
      out.write("<title>Admin</title>\r\n");
      out.write("<meta\r\n");
      out.write("\tcontent='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'\r\n");
      out.write("\tname='viewport' />\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width\" />\r\n");
      out.write("\r\n");
      out.write("<!-- Bootstrap core CSS     -->\r\n");
      out.write("<link href=\"../../../assets/css/bootstrap.min.css\" rel=\"stylesheet\" />\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!--  Light Bootstrap Table core CSS    -->\r\n");
      out.write("<link href=\"../../../assets/css/light-bootstrap-dashboard.css\" rel=\"stylesheet\" />\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!--  CSS for Demo Purpose, don't include it in your project     -->\r\n");
      out.write("<link href=\"../../../assets/css/demo.css\" rel=\"stylesheet\" />\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!--     Fonts and icons     -->\r\n");
      out.write("<link\r\n");
      out.write("\thref=\"http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css\"\r\n");
      out.write("\trel=\"stylesheet\">\r\n");
      out.write("<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300'\r\n");
      out.write("\trel='stylesheet' type='text/css'>\r\n");
      out.write("<link href=\"../../../assets/css/pe-icon-7-stroke.css\" rel=\"stylesheet\" />\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\t<div id=\"wrapper\">\r\n");
      out.write("\t\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "menu.jsp", out, false);
      out.write("\r\n");
      out.write("\t\t<div class=\"main-panel\">\r\n");
      out.write("\t\t\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\r\n");
      out.write("\t\t\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, (java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${param.view}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false), out, false);
      out.write("\r\n");
      out.write("\t\t\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("<!--   Core JS Files   -->\r\n");
      out.write("<script src=\"../../../assets/js/jquery-1.10.2.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<script src=\"../../../assets/js/bootstrap.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("\r\n");
      out.write("<!--  Checkbox, Radio & Switch Plugins -->\r\n");
      out.write("<script src=\"../../../assets/js/bootstrap-checkbox-radio-switch.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<!--  Notifications Plugin    -->\r\n");
      out.write("<script src=\"../../../assets/js/bootstrap-notify.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->\r\n");
      out.write("<script src=\"../../../assets/js/light-bootstrap-dashboard.js\"></script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}