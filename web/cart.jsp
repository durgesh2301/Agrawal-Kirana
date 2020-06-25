<%-- 
    Document   : cart
    Created on : 23 Mar, 2019, 2:16:44 PM
    Author     : HP
--%>

<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart Page</title>
        
        <!-- Font Awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
<!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.4/css/mdb.min.css" rel="stylesheet">
<!-- JQuery -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.4/js/mdb.min.js"></script>
<style type="text/css">
body
{
  margin: 0;
  padding: 0;
  background: url(front/.jpg);
  background-size: cover;
  background-position: center;
  font-family: sans-serif;
}

li{
    margin-left: 100%;
}
.mytable
{
margin-left: 4% !important;    
}
</style>
    </head>
    <body>

<!--Navbar-->
<nav class="navbar navbar-expand-lg navbar-dark primary-color">

  
  <!-- Navbar brand -->
  <a class="navbar-brand" href="#" style="color:white">Agrawal Kirana</a>

  <!-- Collapse button -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#basicExampleNav"
    aria-controls="basicExampleNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <!-- Collapsible content -->
  <div class="collapse navbar-collapse" id="basicExampleNav">

   <!-- Links -->
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="fruit.jsp" style="color:white">Home
          <!-- <span class="sr-only">(current)</span> -->
        </a>
      </li>
    </ul>
  </div>
  <!-- Collapsible content -->

</nav>
<!--/.Navbar-->

<br>
<div class="row">
    <div class="col-lg-3">    
        <center> <form action="cart.jsp" method="POST">
                <button type="submit" class="btn btn-info btn-rounded" name="cntn">ContinueShopping</button>
            </form></center>
    </div>
    <div class="col-lg-3"><center>    <form action="cart.jsp" method="POST">
                <button type="submit" class="btn btn-success btn-rounded" name="payment">Payment</button>
            </form></center>
    </div>
    <div class="col-lg-3"><center>    <form action="cart.jsp" method="POST">
                <button type="submit" class="btn btn-purple btn-rounded" name="deletebtn">Delete Item</button>
            </form></center>
    </div>
    <div class="col-lg-3"><center>   
            
            <form action="cart.jsp" method="POST">
                <button type="submit" class="btn btn-danger btn-rounded" name="logout">LogOut</button>
            </form></center>
    </div>    
        
        
</div>   
        
        <%!
        Connection con;
        Statement st;
        ResultSet rs,rs2;
        String query,log,query2;
         %>
        
        <%
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
                    %>
                    <br>
                    
    <center><h2>BILL</h2><center>
                    
                    <%
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
                %>
                <br>
                <div class="row">
                
                                    <div class="col-lg-8">
                                        <table border="1" class="table table-striped mytable">
                                            <tr class="black white-text">
                                                <td>Product Name</td>
                                                <td>Price</td>
                                                  <td>Quantity</td>
                                                  <td>Amount</td>
                                                  
                                            </tr>
                                        
<%
                while(rs.next())
                {
          quantity=rs.getString("total");
          price=rs.getString("price");
          pI=Integer.parseInt(price);
          qI=Integer.parseInt(quantity);
          s=s+(pI*qI);
        %>
        <tr>
            <td><%=rs.getString("productname")%></td>
            <td><%= rs.getString("price") %></td>
            <td><%= rs.getString("total") %></td>
            <td> <%= qI*pI%></td>
       
        
        </tr>       
               <% }
                
                %>
                                        </table>
                </div>
                                        <br>
                
                            <div class="col-lg-4"></div>
                
              </div> 
                                        <br>
                             <center> <h5>TOTAL &nbsp; AMOUNT &nbsp; = &nbsp;&nbsp;&nbsp;<%=s%></h5>   </center>     
                           
                                        <br>
        
                <%}
            
            if(request.getParameter("deletebtn")!=null && log!=null)
                {
                    %>
                    
   
                    
                    <%
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
                %>
                <br>
                <center><h2>DELETE SOME ITEM</h2></center>
                <br>
                <form action="delete.jsp">
                <div class="row">
                
                                    <div class="col-lg-8">
                                        <table border="1" class="table table-striped mytable">
                                            <tr class="black white-text">
                                                <td>Click</td>
                                                <td>Product Name</td>
                                                <td>Price</td>
                                                <td>Quantity</td>
                                                <td>Amount</td>
                                                
                                                  
                                            </tr>
                                        
<%
                while(rs.next())
                {
          quantity=rs.getString("quantity");
          price=rs.getString("price");
          pI=Integer.parseInt(price);
          qI=Integer.parseInt(quantity);
          s=s+(pI*qI);
        %>
        <tr>
 
            <td><input type="checkbox" name="chkbx" value="<%=rs.getString("pid")%>"></td>    
 
            <td><%= rs.getString("productname") %></td>
            <td><%= rs.getString("price") %></td>  
            <td><%= rs.getString("quantity") %></td>          
            <td> <%= qI*pI%></td>        
        </tr>  
        
               <% }       
                %>
<!--                <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
                </tr>
                
                <tr>
                <b><td>Total</td></b>
            <td></td>
            <td></td>
            <td></td>
            <td><%=s%></td>
        </tr>-->
                                        </table>
                       
                                    </div>
                
                            <div class="col-lg-4"></div>
                
              </div>  >
                <center>
                        <input type="submit" class="btn btn-danger btn-rounded" value="DELETE" name="deletecart">
                </center>
                </form>
                                        <br>
        
                <%}
            
            
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
            %>
            
            
<div class="row" style="margin-top:28%; position: fixed; bottom: 0; width: 100%">
  <div class="col-lg-12"><br>
<!-- Footer -->
<footer class="primary-color">

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3" style="color:white">© 2020 Copyright:
    <a href="https://mdbootstrap.com/education/bootstrap/" style="color:white"> TechRiders</a>
  </div>
  <!-- Copyright -->

</footer>
<!-- Footer -->
</div>
</div>
<!-- JQuery -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.2.1/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.3/js/mdb.min.js"></script>
    
            
    </body>
</html>
