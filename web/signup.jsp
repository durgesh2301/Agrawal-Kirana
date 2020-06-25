<%-- 
    Document   : signup
    Created on : 9 Apr, 2019, 9:06:35 AM
    Author     : HP
--%>

<%@page import="Utility.SqlUtil"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
	<title>Signup</title>
	<!-- Font Awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
<!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.3/css/mdb.min.css" rel="stylesheet">
<style type="text/css">
    li{
        margin-left: 15% !important;
    }
    .mydiv
    {
    margin: 0% 10% 0% 10% !important;
    padding: 2% 0% 2% 5% !important;
    }
</style>
<script>
    function validation()
   {

    var regname=/^[a-zA-Z ]{2,30}$/;
    var regnmbr=/^[0-9]{10}$/;
    var regemail=/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
var regpass=/^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,})/;
    var name=document.getElementById("user");
     var email=document.getElementById("email");
     var number=document.getElementById("nmbr"); 
      var city=document.getElementById("city");
      var pass=document.getElementById("pass");
     
       
    if(!regname.test(name.value))
       {
         document.getElementById("usererr").innerHTML="Name Can Not Contain 1..9 and @";
         return false;
       }
       if(!regname.test(city.value))
       {
         document.getElementById("cityerr").innerHTML="Name Can Not Contain 1..9 and @";
         return false;
       }
       if(!regpass.test(pass.value))
       {
         document.getElementById("passerr").innerHTML="Minimum length 8 1 digit 1 @ 1 a 1A";
         return false;
       }
     

 if(!regemail.test(email.value))
       {
         document.getElementById("emailerr").innerHTML="not valid email";
         return false;
       }  
       

 if(!regnmbr.test(number.value))
       {
         document.getElementById("nmbr1").innerHTML="not valid number";
         return false;
       }
       }
       function validateMobile(){
           val = document.getElementById('mob').value;
//           alert(val)
           reg = /^[6-9]\d{9}$/;
           if(val === ""){
                              document.getElementById('errormobile').innerHTML="";
                              return;
           }
           if(!reg.test(val)){
               document.getElementById('errormobile').innerHTML="Incorrect mobile";
//               alert('h')
            }
            else{
//                               alert('h')

               document.getElementById('errormobile').innerHTML="";
           }
//            if(reg.test(val)){
//                alert('error')
//            }else{
//                alert('rre')
//            }
       }




</script>


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
     
      <li class="nav-item active">
        <a class="nav-link" href="signup.jsp" style="color:white">Signup</a>
      </li>
      
      
       <li class="nav-item">
        <a class="nav-link" href="login.jsp" style="color:white">LOGIN</a>
      </li>
      
       <li class="nav-item">
        <a class="nav-link" href="AdminLogin.jsp" style="color:white">ADMIN</a>
      </li>

     

      <li class="nav-item">
        <a class="nav-link" href="contact.html" style="color:white">Contact</a>
      </li>

      <li class="nav-item">
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
<center><h2>USER REGISTRATION</h2></center>
<br>



<div class="card mydiv">
    <form action="signup.jsp" method="POST" onsubmit="return validation()">
    <div class="row">

    <div class="col-lg-5">
        <!-- Material input -->
<div class="md-form">
    <i class="fas fa-user prefix"></i>
    <input type="text" id="user" name="user" class="form-control" required> 
  <label for="form1">Enter UserName</label>
  <span id="usererr" style="color:red;font-weight: bold;"></span>
</div>
        
    </div>
        <div class="col-lg-1"></div>        
    <div class="col-lg-5">
        <!-- Material input -->
<div class="md-form">
  <i class="fas fa-envelope prefix"></i>
  <input type="text" id="email" name="email" class="form-control" required>
  <label for="inputIconEx1">E-mail address</label>
  <span id="emailerr" style="color:red;font-weight: bold;"></span>

</div>
        
    </div>
    
    
</div>
<div class="row">
    <div class="col-lg-5">
        
        <!-- Material input -->
<div class="md-form">
   <i class="fas fa-mobile prefix"></i>
  
   <input type="text" onkeyup="validateMobile();" id="mob" name="mobile" class="form-control">
  <label for="form1">Enter Mobile Number</label>
    <span id="errormobile" style="color:red;font-weight: bold;"></span>

</div>
        
    </div>
            <div class="col-lg-1"></div> 
    <div class="col-lg-5">
        <!-- Material input -->
<div class="md-form">
     <i class="fas fa-eye prefix"></i>
  
  <input type="password" id="pass" name="password" class="form-control">
  <label for="form1">Enter Password</label>
    <span id="passerr" style="color:red;font-weight: bold;"></span>

</div>
    </div>    
    
</div>
    <div class="row">

    <div class="col-lg-5">
        <div class="md-form">
             <i class="fas fa-map-marker prefix"></i>
  
  <input type="text" name="Address" class="form-control">
  <label for="form1">Enter Address</label>
</div>
        
    </div></div>
    <div class="row" style="margin-left: 43%;">
    
        <button type="submit" name="submitbtn" class="btn btn-success btn-rounded">Submit</button>
   
   
    </div>
    
    </form>
  
</div>

</div>
<div class="row"style="margin-top: 2%">
  <div class="col-lg-12">
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
<%!
String User,pass,email,mobile,addres,query;
Connection cn;
Statement st;



%>
<%
    try{
        
        if(request.getParameter("submitbtn")!=null)
        {
        Utility.SqlUtil.connect();
        User=request.getParameter("user");
        
        pass=request.getParameter("password");
        email=request.getParameter("email");
        mobile=request.getParameter("mobile");
        addres=request.getParameter("Address");
        
        try{
                ResultSet rs=SqlUtil.read("select email from register where email='"+email+"' "); 
                if(rs.next()==true)
                {
                    out.println("<script> alert('Mail-id Already Exist...Please Register with Different id.'); location='signup.jsp' </script>");
                }
                else
                {
                    ResultSet rs1=SqlUtil.read("select email from register where mobile="+mobile+" ");
                    if(rs1.next()==true)
                    {
                     out.println("<script> alert('Mobile number Already Exist...Please Register with Different mobile number'); location='signup.jsp' </script>");   
                    }
                    else
                    {
                    query="insert into register values('"+User+"','"+pass+"','"+email+"','"+mobile+"','"+addres+"')";
                 Utility.SqlUtil.insert(query);
                 out.println("<script> alert('You have been Successfully Registered.'); location='login.jsp'; </script>");
                    }
                }
        }
        catch(Exception e)
                {
                   
           System.out.println("Exception: "+e);
           out.println("<script> alert('Something Went Wrong, Try Again.'); location='signup.jsp' </script>"); 
                }
        
        }
    }catch(Exception ex)
    {
        System.out.println("Ex  "+ex);
        out.println("<script> alert('Something Went Wrong, Try Again.'); location='signup.jsp' </script>"); 
    }
    
    
    %>

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