<%-- 
    Document   : login
    Created on : 23 Mar, 2019, 1:03:51 PM
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
        <title>Login User</title>
        
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

<style>
    li
    {
        margin-left: 15% !important;
    }
</style>
    </head>
    <body>
         <div class="row">
  <div class="col-lg-12">

<nav class="navbar navbar-expand-lg navbar-dark primary-color">

  
  
  <a class="navbar-brand" href="#" style="color:white">Agrawal Kirana</a>

  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#basicExampleNav"
    aria-controls="basicExampleNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="basicExampleNav">

    <ul class="navbar-nav mr-auto">
      <li class="nav-item ">
        <a class="nav-link" href="index.html" style="color:white">Home
        </a>
      </li>
     
      <li class="nav-item ">
        <a class="nav-link" href="signup.jsp" style="color:white">Signup</a>
      </li>


       <li class="nav-item active">
        <a class="nav-link" href="login.jsp" style="color:white">LOGIN</a>
      </li>
      
       <li class="nav-item">
        <a class="nav-link" href="AdminLogin.jsp" style="color:white">ADMIN</a>
      </li>
     

      <li class="nav-item ">
        <a class="nav-link" href="contact.html" style="color:white">Contact</a>
      </li>

      <li class="nav-item ">
        <a class="nav-link" href="about.html" style="color:white">About</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="feedback.jsp" style="color:white">Feedback</a>
      </li>     
      
    </ul>
  </div>

</nav>
</div>
</div>
        <br>
        <center><h2>USER LOGIN</h2></center>
<br>
        <form action="login.jsp" method="POST">

<div class="row">
    <div class="col-lg-2"></div>
     
    <div class="col-lg-4">
    <div class="md-form">
    <i class="fas fa-user prefix"></i>
    <input type="tel" name="user" class="form-control" required > 
  <label for="form1">Enter Mobile no</label>
</div>     
    
    </div>
    <div class="col-lg-4">
    
       <div class="md-form">
     <i class="fas fa-eye prefix"></i>
  
  <input type="password" name="password" class="form-control">
  <label for="form1">Enter Password</label>
</div>
    </div>
    <div class="col-lg-2"></div>
</div>

    
   
    <div class="row">
    <div class="col-lg-4"></div>
     
   
    <div class="col-lg-4">
    
        <center> <input type="submit" class="btn btn-success btn-rounded" name="btn" value="LOGIN"></center>
    </div>
    
    </div>
    
</form>

    <!--</div>-->
    
    <%!
          String name,pass,query;
          Connection con;
          Statement st;
          ResultSet rs;
          
          %>
          <%
                try{
              if(request.getParameter("btn")!=null)
              {
            
              Utility.SqlUtil.connect();
              name=request.getParameter("user");
              pass=request.getParameter("password");
              
              query="select * from register where mobile='"+name+"' && password='"+pass+"'";
              rs=Utility.SqlUtil.read(query);
              if(rs.next())
              {
              session.setAttribute("uname",name);
               out.println("<script>alert('succes');document.location.href='fruit.jsp';</script>");
              System.out.println(name);
             
              }
              else
              {
                  out.println("<script>alert('plz enter correct');document.location.href='login.jsp';</script>");
                        
              }
              }
                }
              catch(Exception ex)
              {
                   System.out.println("Error in login jsp =" +ex);
              }
          
              %>
       <div class="row" style="margin-top: 17%">
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
