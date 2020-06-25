<%-- 
    Document   : adminresponse.jsp
    Created on : 10 Apr, 2019, 8:04:57 AM
    Author     : HP
--%>
<%-- 
    Document   : cart
    Created on : 23 Mar, 2019, 2:16:44 PM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Response</title>
        
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
/*  margin: 0;
  padding: 0;*/
  background: url(front/.jpg);
  background-size: cover;
  background-position: center;
  font-family: sans-serif;
}

li
{
    margin-left: 15% !important;
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
        <a class="nav-link" href="#" style="color:white">Home
          <!-- <span class="sr-only">(current)</span> -->
        </a>
      </li>
  </div>
  <!-- Collapsible content -->

</nav>
<!--/.Navbar-->

<br>
<div class="row">
    <div class="col-lg-3">    
        <center> <form action="adminresponse.jsp" method="POST">
                <button type="submit" class="btn btn-info btn-rounded" name="GRU">Get Registered User</button>
            </form></center>
    </div>
    <div class="col-lg-3"><center>    <form action="adminresponse.jsp" method="POST">
                <button type="submit" class="btn btn-success btn-rounded" name="cartdtl">Cart Details</button>
            </form></center>
    </div>
    
    <div class="col-lg-3"><center>   
            
            <form action="adminresponse.jsp" method="POST">
                <button type="submit" class="btn btn-secondary btn-rounded" name="feed">Feedback</button>
            </form></center>
    </div> 
    
    <div class="col-lg-3"><center>   
            
            <form action="adminresponse.jsp" method="POST">
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
                Utility.SqlUtil.connect();
                  
            String log=(String)session.getAttribute("uname");
            
            if(request.getParameter("GRU")!=null && log!=null)
            {
                %>
                <br>
                                      <center> <h3>REGISTERED USERS</h3></center>
                <div class="row">
                  <div class="col-lg-11">
                      <br>
                      <table border="1" class="table table-striped mytable">
                              <tr class="black white-text">
                                                <td>Name</td>
                                                <td>Email</td>
                                                <td>Mobile</td>
                                                  <td>Address</td>
                                                  
                                            </tr>
                                        <%
               
                query="select * from register";
               rs=Utility.SqlUtil.read(query);
               while(rs.next())
               {
                   %>
                                        
                         <tr>
            <td><%=rs.getString("username")%></td>
            <td><%=rs.getString("email")%></td>
            <td><%= rs.getString("mobile") %></td>
            <td><%= rs.getString("address") %></td>
           
        
        </tr>       
                           
                                            
                                            <%
               }
                
          %>
                          </table>
                  </div>
                
              </div>  
                                        <%
            
            }
              
            if(request.getParameter("cartdtl")!=null && log!=null)
                {
                    log=(String)session.getAttribute("uname");
                   // query="select userID,count(quantity) from cart group by userID";
query="select r.username,r.email,c.userID,p.productname,sum(quantity) as total from register r,cart c,products p where r.mobile=c.userID and c.pid=p.pid group by c.pid;";
rs=Utility.SqlUtil.read(query);
     %>
    <br>
    <center> <h3>PURCHASE ITEM'S USERS</h3></center>
       <div class="row">
                  <div class="col-lg-11">

                      <br>
                      <table border="1" class="table table-striped mytable">
    
                          <tr class="black white-text">
                                                <td>User Name</td>
                                                <td>Email</td>
                                                <td>Mobile</td>
                                                <td>Product Name</td>
                                                <td>Quantity</td>
                                                  
                                            </tr>
                                        
<%
                while(rs.next())
                {
           %>
        <tr>
            <td><%=rs.getString("username")%></td>
            <td><%=rs.getString("email")%></td>
            <td><%=rs.getString("userID")%></td>
            <td><%=rs.getString("productname")%></td>
            <td><%=rs.getString("total")%></td>            
        </tr>       
               <% }
                
                %>
                          </table>
                </div>
                
              </div>  
                <%
                }
            if(request.getParameter("logout")!=null)
            {
                session.invalidate();
                       out.println("<script>alert('login to continue');document.location.href='AdminLogin.jsp';</script>");
         
            }

if(request.getParameter("feed")!=null && log!=null)
                {
                    log=(String)session.getAttribute("uname");
                   // query="select userID,count(quantity) from cart group by userID";
query=" select * from feedback;";
rs=Utility.SqlUtil.read(query);
     %>
    <br>
    <center> <h3>USERS FEEDBACK</h3></center>
       <div class="row">
                  <div class="col-lg-11">

                      <br>
                      <table border="1" class="table table-striped mytable">
    
                          <tr class="black white-text">
                                                <td>Email</td>
                                                <td>Subject</td>
                                                <td>Feedback</td>
                                                  
                                            </tr>
                                        
<%
                while(rs.next())
                {
           %>
        <tr>
            <td><%=rs.getString("mail")%></td>
            <td><%=rs.getString("subject")%></td>
            <td><%=rs.getString("feedback_d")%></td>            
        </tr>       
               <% }
                
                %>
                          </table>
                </div>
                
              </div>  
                <%
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
  <div class="footer-copyright text-center py-3" style="color:white;">© 2020 Copyright:
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
