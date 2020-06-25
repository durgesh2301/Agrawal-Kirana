package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class cart_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


        Connection con;
        Statement st;
        ResultSet rs,rs2;
        String query,log,query2;
         
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        \n");
      out.write("        <!-- Font Awesome -->\n");
      out.write("<link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.7.0/css/all.css\">\n");
      out.write("<!-- Bootstrap core CSS -->\n");
      out.write("<link href=\"https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("<!-- Material Design Bootstrap -->\n");
      out.write("<link href=\"https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.4/css/mdb.min.css\" rel=\"stylesheet\">\n");
      out.write("<!-- JQuery -->\n");
      out.write("<script type=\"text/javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("<!-- Bootstrap tooltips -->\n");
      out.write("<script type=\"text/javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js\"></script>\n");
      out.write("<!-- Bootstrap core JavaScript -->\n");
      out.write("<script type=\"text/javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js\"></script>\n");
      out.write("<!-- MDB core JavaScript -->\n");
      out.write("<script type=\"text/javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.4/js/mdb.min.js\"></script>\n");
      out.write("<style type=\"text/css\">\n");
      out.write("body\n");
      out.write("{\n");
      out.write("  margin: 0;\n");
      out.write("  padding: 0;\n");
      out.write("  background: url(front/.jpg);\n");
      out.write("  background-size: cover;\n");
      out.write("  background-position: center;\n");
      out.write("  font-family: sans-serif;\n");
      out.write("}\n");
      out.write("\n");
      out.write("li{\n");
      out.write("    margin-left: 100%;\n");
      out.write("}\n");
      out.write(".mytable\n");
      out.write("{\n");
      out.write("margin-left: 4% !important;    \n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("<!--Navbar-->\n");
      out.write("<nav class=\"navbar navbar-expand-lg navbar-dark primary-color\">\n");
      out.write("\n");
      out.write("  \n");
      out.write("  <!-- Navbar brand -->\n");
      out.write("  <a class=\"navbar-brand\" href=\"#\" style=\"color:white\">Agrawal Kirana</a>\n");
      out.write("\n");
      out.write("  <!-- Collapse button -->\n");
      out.write("  <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#basicExampleNav\"\n");
      out.write("    aria-controls=\"basicExampleNav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("    <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("  </button>\n");
      out.write("\n");
      out.write("  <!-- Collapsible content -->\n");
      out.write("  <div class=\"collapse navbar-collapse\" id=\"basicExampleNav\">\n");
      out.write("\n");
      out.write("   <!-- Links -->\n");
      out.write("    <ul class=\"navbar-nav mr-auto\">\n");
      out.write("      <li class=\"nav-item active\">\n");
      out.write("        <a class=\"nav-link\" href=\"fruit.jsp\" style=\"color:white\">Home\n");
      out.write("          <!-- <span class=\"sr-only\">(current)</span> -->\n");
      out.write("        </a>\n");
      out.write("      </li>\n");
      out.write("    </ul>\n");
      out.write("  </div>\n");
      out.write("  <!-- Collapsible content -->\n");
      out.write("\n");
      out.write("</nav>\n");
      out.write("<!--/.Navbar-->\n");
      out.write("\n");
      out.write("<br>\n");
      out.write("<div class=\"row\">\n");
      out.write("    <div class=\"col-lg-3\">    \n");
      out.write("        <center> <form action=\"cart.jsp\" method=\"POST\">\n");
      out.write("                <button type=\"submit\" class=\"btn btn-info btn-rounded\" name=\"cntn\">ContinueShopping</button>\n");
      out.write("            </form></center>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"col-lg-3\"><center>    <form action=\"cart.jsp\" method=\"POST\">\n");
      out.write("                <button type=\"submit\" class=\"btn btn-success btn-rounded\" name=\"payment\">Payment</button>\n");
      out.write("            </form></center>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"col-lg-3\"><center>    <form action=\"cart.jsp\" method=\"POST\">\n");
      out.write("                <button type=\"submit\" class=\"btn btn-success btn-rounded\" name=\"deletebtn\">Delete Item</button>\n");
      out.write("            </form></center>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"col-lg-3\"><center>   \n");
      out.write("            \n");
      out.write("            <form action=\"cart.jsp\" method=\"POST\">\n");
      out.write("                <button type=\"submit\" class=\"btn btn-danger btn-rounded\" name=\"logout\">LogOut</button>\n");
      out.write("            </form></center>\n");
      out.write("    </div>    \n");
      out.write("        \n");
      out.write("        \n");
      out.write("</div>   \n");
      out.write("        \n");
      out.write("        ");
      out.write("\n");
      out.write("        \n");
      out.write("        ");

            try
            {
                  
            String log=(String)session.getAttribute("uname");
            if(request.getParameter("cntn")!=null && log!=null)
            {
             //  response.sendRedirect("fruit.jsp");
               out.println("<script>document.location.href='fruit.jsp';</script>");
            }
              
            if(request.getParameter("payment")!=null && log!=null)
                {
                    
      out.write("\n");
      out.write("                    <br>\n");
      out.write("                    \n");
      out.write("    <center><h2>BILL</h2><center>\n");
      out.write("                    \n");
      out.write("                    ");

                    int s=0;
                    int tprice=0,pI,qI;
                    String quantity,price;
                     System.out.println("HEllo hh");
                 DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
	LocalDate localDate = LocalDate.now();
	//System.out.println(dtf.format(localDate)); //2016/11/16
       String date= dtf.format(localDate);
                    log=(String)session.getAttribute("uname");
                    query="select *,sum(c.quantity) as total from products p INNER JOIN cart c ON p.pid=c.pid where userID='"+log+"' && data='"+date+"' group by c.pid";
           //query2="select * from cart where userID='"+log+"'";
                rs=Utility.SqlUtil.read(query);
                rs2=Utility.SqlUtil.read(query2);
                
      out.write("\n");
      out.write("                <br>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                \n");
      out.write("                                    <div class=\"col-lg-8\">\n");
      out.write("                                        <table border=\"1\" class=\"table table-striped mytable\">\n");
      out.write("                                            <tr class=\"black white-text\">\n");
      out.write("                                                <td>Product Name</td>\n");
      out.write("                                                <td>Price</td>\n");
      out.write("                                                  <td>Quantity</td>\n");
      out.write("                                                  <td>Amount</td>\n");
      out.write("                                                  \n");
      out.write("                                            </tr>\n");
      out.write("                                        \n");

                while(rs.next())
                {
          quantity=rs.getString("total");
          price=rs.getString("price");
          pI=Integer.parseInt(price);
          qI=Integer.parseInt(quantity);
          s=s+(pI*qI);
        
      out.write("\n");
      out.write("        <tr>\n");
      out.write("            <td>");
      out.print(rs.getString("productname"));
      out.write("</td>\n");
      out.write("            <td>");
      out.print( rs.getString("price") );
      out.write("</td>\n");
      out.write("            <td>");
      out.print( rs.getString("total") );
      out.write("</td>\n");
      out.write("            <td> ");
      out.print( qI*pI);
      out.write("</td>\n");
      out.write("       \n");
      out.write("        \n");
      out.write("        </tr>       \n");
      out.write("               ");
 }
                
                
      out.write("\n");
      out.write("                                        </table>\n");
      out.write("                </div>\n");
      out.write("                                        <br>\n");
      out.write("                \n");
      out.write("                            <div class=\"col-lg-4\"></div>\n");
      out.write("                \n");
      out.write("              </div> \n");
      out.write("                                        <br>\n");
      out.write("                             <center> <h5>TOTAL &nbsp; AMOUNT &nbsp; = &nbsp;&nbsp;&nbsp;");
      out.print(s);
      out.write("</h5>   </center>     \n");
      out.write("                           \n");
      out.write("                                        <br>\n");
      out.write("        \n");
      out.write("                ");
}
            
            if(request.getParameter("deletebtn")!=null && log!=null)
                {
                    
      out.write("\n");
      out.write("                    \n");
      out.write("   \n");
      out.write("                    \n");
      out.write("                    ");

                    int s=0;
                    int tprice=0,pI,qI;
                    String quantity,price;
                     System.out.println("HEllo hh");
                DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
	LocalDate localDate = LocalDate.now();
	//System.out.println(dtf.format(localDate)); //2016/11/16
       String date= dtf.format(localDate);
                    log=(String)session.getAttribute("uname");
                    query="select p.productname,p.price,c.pid, sum(c.quantity) as quantity from products p INNER JOIN cart c where c.pid=p.pid && userID='"+log+"' && data='"+date+"' group by p.pid ";
           //query2="select * from cart where userID='"+log+"'";
                rs=Utility.SqlUtil.read(query);
//                rs2=Utility.SqlUtil.read(query2);
                
      out.write("\n");
      out.write("                <br>\n");
      out.write("                <center><h2>DELETE SOME ITEM</h2></center>\n");
      out.write("                <br>\n");
      out.write("                <form action=\"delete.jsp\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                \n");
      out.write("                                    <div class=\"col-lg-10\">\n");
      out.write("                                        <table border=\"1\" class=\"table table-striped mytable\">\n");
      out.write("                                            <tr class=\"black white-text\">\n");
      out.write("                                                <td>Click</td>\n");
      out.write("                                                <td>Product Name</td>\n");
      out.write("                                                <td>Product ID</td>\n");
      out.write("                                                <td>Price</td>\n");
      out.write("                                                <td>Quantity</td>\n");
      out.write("                                                <td>Amount</td>\n");
      out.write("                                                \n");
      out.write("                                                  \n");
      out.write("                                            </tr>\n");
      out.write("                                        \n");

                while(rs.next())
                {
          quantity=rs.getString("quantity");
          price=rs.getString("price");
          pI=Integer.parseInt(price);
          qI=Integer.parseInt(quantity);
          s=s+(pI*qI);
        
      out.write("\n");
      out.write("        <tr>\n");
      out.write(" \n");
      out.write("            <td><input type=\"checkbox\" name=\"chkbx\" value=\"");
      out.print(rs.getString("pid"));
      out.write("\"></td>    \n");
      out.write(" \n");
      out.write("            <td>");
      out.print( rs.getString("productname") );
      out.write("</td>\n");
      out.write("            <td>");
      out.print( rs.getString("pid") );
      out.write("</td>\n");
      out.write("            <td>");
      out.print( rs.getString("price") );
      out.write("</td>  \n");
      out.write("            <td>");
      out.print( rs.getString("quantity") );
      out.write("</td>          \n");
      out.write("            <td> ");
      out.print( qI*pI);
      out.write("</td>        \n");
      out.write("        </tr>       \n");
      out.write("               ");
 }
                
                
                
      out.write("\n");
      out.write("                                        </table>\n");
      out.write("                       \n");
      out.write("                                    </div>\n");
      out.write("                \n");
      out.write("                            <div class=\"col-lg-4\"></div>\n");
      out.write("                \n");
      out.write("              </div>  >\n");
      out.write("                <center>\n");
      out.write("                        <input type=\"submit\" class=\"btn btn-danger btn-rounded\" value=\"DELETE\" name=\"deletecart\">\n");
      out.write("                </center>\n");
      out.write("                </form>\n");
      out.write("                                        <br>\n");
      out.write("        \n");
      out.write("                ");
}
            
            
            if(request.getParameter("logout")!=null)
            {
                session.invalidate();
                       out.println("<script>alert('login to continue');document.location.href='login.jsp';</script>");
         
            }
                
            }
            
            
            
            
           catch(Exception ex)
           {
               System.out.println("Exception in "+ex);
           }
            
      out.write("\n");
      out.write("            \n");
      out.write("            \n");
      out.write("<div class=\"row\" style=\"margin-top:28%; position: fixed; bottom: 0; width: 100%\">\n");
      out.write("  <div class=\"col-lg-12\"><br>\n");
      out.write("<!-- Footer -->\n");
      out.write("<footer class=\"primary-color\">\n");
      out.write("\n");
      out.write("  <!-- Copyright -->\n");
      out.write("  <div class=\"footer-copyright text-center py-3\" style=\"color:white\">© 2020 Copyright:\n");
      out.write("    <a href=\"https://mdbootstrap.com/education/bootstrap/\" style=\"color:white\"> TechRiders</a>\n");
      out.write("  </div>\n");
      out.write("  <!-- Copyright -->\n");
      out.write("\n");
      out.write("</footer>\n");
      out.write("<!-- Footer -->\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("<!-- JQuery -->\n");
      out.write("<script type=\"text/javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("<!-- Bootstrap tooltips -->\n");
      out.write("<script type=\"text/javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js\"></script>\n");
      out.write("<!-- Bootstrap core JavaScript -->\n");
      out.write("<script type=\"text/javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.2.1/js/bootstrap.min.js\"></script>\n");
      out.write("<!-- MDB core JavaScript -->\n");
      out.write("<script type=\"text/javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.3/js/mdb.min.js\"></script>\n");
      out.write("    \n");
      out.write("            \n");
      out.write("    </body>\n");
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
