
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
	<title>Fruits</title>
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

<script>
//$("document").ready(function(){
//   $("button").click(function(){
//       $(this).text($(this).text()=='ADDED'? 'ADD TO CART' : 'ADDED');
//       
//   });
//    
//});
//var x;


</script>
<style>
    li
    {
        margin-left: 50% !important;
    }
    
    .mybtn
    {
        font-size: 20px !important;
        padding: 3% 15% 3% 15%;
       box-shadow: 1px 1px 1px 1px;
        color: white !important;       
       background-color: transparent;
    }
    .mybtn:hover
    {
            box-shadow: 1px 1px 1px 1px red !important;
        opacity: 1.0;
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
      <li class="nav-item">
        <a class="nav-link" href="#" style="color:white">Home
        </a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="cart.jsp" style="color:white">MyCart
        </a>
      </li>
    </ul>
      
  </div>
  <div class="col-lg-1">
            <form action="fruit.jsp" method="POST">
                <button type="submit" class="mybtn" name="logout">LogOut</button>
            </form></div>
</nav>
</div>
</div>

<br>
<br>

<div class="row">
  <!-- <div class="col-lg-2"></div> -->
  <div class="col-lg-2">
    
<div class="card">
<div class="list-group" style=" ">
              <a href="#!" class="list-group-item list-group-item-action " >CATEGORIES</a>
               <a href="fruit.jsp" class="list-group-item list-group-item-action active">Fruits</a>
               <a href="veg.jsp" class="list-group-item list-group-item-action">Vegetables</a>
               <a href="dairy.jsp" class="list-group-item list-group-item-action">Dairy Items</a>
               <a href="spices.jsp" class="list-group-item list-group-item-action">Spices</a>
               
            </div>

</div>




  </div>
   

      <div class="col-lg-1">
      </div>
        
          <!-- Card -->
         <div class="col-lg-2">
           <div class="card" >
         <br>
         <img src="fruits/banana1.jpg" style="margin-top:-22%;">
             <center><h3 style="color:red">Banana</h3>
          <p class="card-text">Price : Rs.30/KG.</p> </center> 
          <center>
              <form action="fruit.jsp">
                  <input type="number" min="0" value="1" name="quantity" placeholder="Enter Quantity"style="text-align: center;">
        
                  <button type="submit" class="btn btn-success" value="1" name="btna"style="border: 5px solid black"><i class="fas fa-plus" aria-hidden="true"style="border: 1px solid"></i>ADD TO CART</button>
          
            </form>
          </center>
        
           </div>
        </div>
      
  <!-- Card -->

         <div class="col-lg-2">
           <div class="card">
          <img src="fruits/pomegranate.jpg"style="margin-top:-11%;">
          <!--<input type="number" name="quantity" placeholder="Enter Quantity">-->
             <center><h3 style="color:red">Pomogranate</h3>
          <p class="card-text">Price : Rs.50/KG.</p> </center> 
          
          <center>
                <form action="fruit.jsp">
                  <input type="number" min="0" value="1" name="quantity" placeholder="Enter Quantity"style="text-align: center;">
                    <button type="submit" class="btn btn-success" value="2" name="btna"style="border: 5px solid black">
                        <i class="fas fa-plus" aria-hidden="true"style="border: 1px solid"></i> Add To Cart</button>
              
           </form>
          </center>
          </div>
        </div>
 
  <!-- Card -->
         <div class="col-lg-2">
           <div class="card">
          <img src="fruits/kivi.jpg"style="margin-top:-11%;">
             <center><h3 style="color:red">Kiwi</h3>
          <p class="card-text">Price : Rs.60/KG.</p> </center> 
          <center>
              <form action="fruit.jsp">
                  <input type="number" min="0" value="1" name="quantity" placeholder="Enter Quantity"style="text-align: center;">
              <button type="submit" class="btn btn-success" value="3" name="btna"style="border: 5px solid black"><i class="fas fa-plus" aria-hidden="true" style="border: 1px solid"></i> Add To Cart</button>
              </form>
          </center>
          </div>
        </div>
          <!-- Card -->
         <div class="col-lg-2">
           <div class="card">
          <img src="fruits/g.jpg">
             <center><h3 style="color:red">Guava</h3>
          <p class="card-text">Price : Rs.30/KG.</p> </center> 
          <center>
              <form action="fruit.jsp">
                  <input type="number" min="0" value="1" name="quantity" placeholder="Enter Quantity"style="text-align: center;">
              <button type="submit" class="btn btn-success" value="4" name="btna"style="border: 5px solid black"><i class="fas fa-plus" aria-hidden="true"style="border: 1px solid"></i> Add To Cart</button>
              </form>
          </center>
          </div>
        </div>
    
   <!--3rd row-->
    <br>
    <div class="row">

      <div class="col-lg-3">
      </div>
      
          <!-- Card -->
         <div class="col-lg-2">
           <div class="card">
          <img src="fruits/lichi.jpg">
             <center><h3 style="color:red">Lichi</h3>
          <p class="card-text">Price : Rs.60/KG.</p> </center> 
          <center>
              <form action="fruit.jsp">
                  <input type="number" min="0" value="1" name="quantity" placeholder="Enter Quantity"style="text-align: center;">
              <button type="submit" class="btn btn-success" value="5" name="btna"style="border: 5px solid black"><i class="fas fa-plus" aria-hidden="true"style="border: 1px solid"></i> Add To Cart</button>
              </form>
          </center>
          </div>
        </div>
  <!-- Card -->
         <div class="col-lg-2">
           <div class="card">
          <img src="fruits/oranges.jpg">
             <center><h3 style="color:red">Orange </h3>
          <p class="card-text">Price : Rs.40/KG.</p> </center> 
          <center>
              <form action="fruit.jsp">
                  <input type="number" min="0" value="1" name="quantity" placeholder="Enter Quantity"style="text-align: center;">
              <button type="submit" class="btn btn-success" value="6" name="btna"style="border: 5px solid black"><i class="fas fa-plus" aria-hidden="true"style="border: 1px solid"></i> Add To Cart</button>
              </form>
          </center>
          </div>
        </div>
  <!-- Card -->
         <div class="col-lg-2">
           <div class="card">
          <img src="fruits/pine2.jpg">
             <center><h3 style="color:red">Pineapple</h3>
          <p class="card-text">Price : Rs.50/Pcs</p> </center> 
          <center>
          <form action="fruit.jsp">
                  <input type="number" min="0" value="1" name="quantity" placeholder="Enter Quantity"style="text-align: center;">
              <button type="submit" class="btn btn-success" value="7" name="btna"style="border: 5px solid black"><i class="fas fa-plus" aria-hidden="true"style="border: 1px solid"></i> Add To Cart</button>
          
          </form>
          
          
          </center>
          </div>
        </div>
          <!-- Card -->
         <div class="col-lg-2">
           <div class="card">
          <img src="fruits/strawberry.jpg">
             <center><h3 style="color:red">Strawberry</h3>
          <p class="card-text">Price : Rs.150/KG.</p> </center> 
          <center>
              <form action="fruit.jsp">
                  <input type="number" min="0" value="1" name="quantity" placeholder="Enter Quantity"style="text-align: center;">
              <button type="submit" class="btn btn-success" value="8" name="btna"style="border: 5px solid black"><i class="fas fa-plus" aria-hidden="true"style="border: 1px solid"></i> Add To Cart</button>
              </form>
          </center>
          </div>
        </div>
    </div>

    <!--4th row-->
     <br>
    <div class="row">

      <div class="col-lg-3">
      </div>
      
          <!-- Card -->
         <div class="col-lg-2">
           <div class="card">
          <img src="fruits/huskmelon.jpg">
             <center><h3 style="color:red">Huskmelon</h3>
   <p class="card-text">Price : Rs.60/KG.</p> </center> 
          <center>
              <form action="fruit.jsp">
                  <input type="number" min="0" value="1" name="quantity" placeholder="Enter Quantity"style="text-align: center;">
              <button type="submit" class="btn btn-success" value="9" name="btna"style="border: 5px solid black"><i class="fas fa-plus" aria-hidden="true"style="border: 1px solid"></i> Add To Cart</button>
              </form>
          </center>
          </div>
        </div>
  <!-- Card -->
         <div class="col-lg-2">
           <div class="card">
          <img src="fruits/peach.jpg">
             <center><h3 style="color:red">Peach</h3>
  <p class="card-text">Price : Rs.100/KG.</p> </center> 
          <center>
              <form action="fruit.jsp">
                  <input type="number" min="0" value="1" name="quantity" placeholder="Enter Quantity"style="text-align: center;">
              <button type="submit" class="btn btn-success" value="10" name="btna"style="border: 5px solid black"><i class="fas fa-plus" aria-hidden="true"style="border: 1px solid"></i> Add To Cart</button>
              </form>
          </center>
          </div>
        </div>
  <!-- Card -->
         <div class="col-lg-2">
           <div class="card">
          <img src="fruits/watermelon.jpg">
             <center><h3 style="color:red">Watermelon</h3>
   <p class="card-text">Price : Rs.120/KG.</p> </center> 
          <center>
              <form action="fruit.jsp">
                  <input type="number" min="0" value="1" name="quantity" placeholder="Enter Quantity"style="text-align: center;">
              <button type="submit" class="btn btn-success" value="11" name="btna"style="border: 5px solid black"><i class="fas fa-plus" aria-hidden="true"style="border: 1px solid"></i> Add To Cart</button>
          
              </form>
          </center>
          </div>
        </div>
          <!-- Card -->
         <div class="col-lg-2">
           <div class="card">
          <img src="fruits/mango.jpg">
             <center><h3 style="color:red">Mango</h3>
       <p class="card-text">Price : Rs.150/KG.</p> </center> 
          <center>
              <form action="fruit.jsp">
                  <input type="number" min="0" value="1" name="quantity" placeholder="Enter Quantity" style="text-align: center;">
              <button type="submit" class="btn btn-success" value="12" name="btna"style="border: 5px solid black"><i class="fas fa-plus" aria-hidden="true"style="border: 1px solid"></i> Add To Cart</button>
              </form>
          
          </center>
          </div>
        </div>
    </div>
     
     <br>
            

  <!-- Grid column -->
  
	
<!--           <div class="col-lg-10 ">

           <center> <img src="front/img21.jpg" class="img-fluid z-depth-1" alt="Responsive image " style="height: 75%"> </center>
            </div>-->
    </div>
    <br>    
    <div class="row">
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
    <!--</form>-->
    <%!
    String logged_user,itemid,query,quantity;
    Connection cn;
    Statement st;
    ResultSet rs;
    %>
<%
    logged_user=(String)session.getAttribute("uname");
  // System.out.println(logged_user);
    if(logged_user!=null)
    {
        System.out.println("login user is "+logged_user);
   
        try{
            
            Utility.SqlUtil.connect();
     if(request.getParameter("btna")!=null){
         DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
	LocalDate localDate = LocalDate.now();
	//System.out.println(dtf.format(localDate)); //2016/11/16
       String date= dtf.format(localDate);
            itemid=request.getParameter("btna");
            quantity=request.getParameter("quantity");
               System.out.println("IdABAHY "+itemid);
        query="insert into cart values('"+logged_user+"','"+itemid+"','"+quantity+"','"+date+"')";
               System.out.println(query);
        Utility.SqlUtil.insert(query);
       
                    out.println("<script>document.location.href='cart.jsp';</script>");

        
        }
        }
        catch(Exception ex)
        {
            System.out.println("exception in  fruit "+ex);
        }
     }
       
            if(request.getParameter("logout")!=null)
            {
                session.invalidate();
                       out.println("<script>alert('login to continue');document.location.href='login.jsp';</script>");
         
            }
    
    %>
    

</body>
</html>