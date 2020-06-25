<html>
<head>
	<title> Vegitables Product</title>
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
		
			<div class="col-lg-2">
    
<div class="card">
<div class="list-group" style=" ">
              <a href="#!" class="list-group-item list-group-item-action " >CATEGORIES</a>
               <a href="fruit.jsp" class="list-group-item list-group-item-action ">Fruits</a>
               <a href="veg.jsp" class="list-group-item list-group-item-action active">Vegetables</a>
               <a href="dairy.jsp" class="list-group-item list-group-item-action">Dairy Items</a>
               <a href="spices.jsp" class="list-group-item list-group-item-action">Spices</a>
               
            </div>

</div>




  </div>
            

  <!-- Grid column -->
           
   
    <br>
    

      <div class="col-lg-1">
      </div>
      
          <!-- Card -->
         <div class="col-lg-2">
           <div class="card" >
          <img src="vege/lady finger.jpg">
             <center><h3 style="color:red">Lady Finger</h3>
          <p class="card-text">Price : Rs.60/KG.</p> </center> 
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
          <img src="vege/ginger.jpg">
             <center><h3 style="color:red">Ginger</h3>
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
          <img src="vege/gilki.jpg">
             <center><h3 style="color:red">Ridge guard</h3>
          <p class="card-text">Price : Rs.120/KG.</p> </center> 
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
          <img src="vege/methi.jpg">
             <center><h3 style="color:red">Methi</h3>
          <p class="card-text">Price : Rs.150/KG.</p> </center> 
          <center>
                            <form action="fruit.jsp">
 <input type="number" min="0" value="1" name="quantity" placeholder="Enter Quantity"style="text-align: center;">
              <button type="submit" class="btn btn-success" value="10" name="btna"style="border: 5px solid black"><i class="fas fa-plus" aria-hidden="true"style="border: 1px solid"></i> Add To Cart</button>
                            </form>
          </center>
          </div>
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
          <img src="vege/broccolli.jpg">
            <center><h3 style="color:red"> Brocolli</h3>
          <p class="card-text">Price : Rs.60/Pcs.</p> </center> 
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
          <img src="vege/onions.JPG">
             <center><h3 style="color:red">Onion </h3>
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
          <img src=" vege/peas.jpg">
             <center><h3 style="color:red">Peas</h3>
          <p class="card-text">Price : Rs.120/KG.</p> </center> 
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
          <img src="vege/bitter melon.jpg">
             <center><h3 style="color:red">Bittermelon</h3>
          <p class="card-text">Price : Rs.150/KG.</p> </center> 
          <center>
                                          <form action="fruit.jsp">
 <input type="number" min="0" value="1" name="quantity" placeholder="Enter Quantity"style="text-align: center;">
              <button type="submit" class="btn btn-success" value="10" name="btna"style="border: 5px solid black"><i class="fas fa-plus" aria-hidden="true"style="border: 1px solid"></i> Add To Cart</button>
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
          <img src="vege/spinach.jpg">
             <center><h3 style="color:red">Spinach</h3>
   <p class="card-text">Price : Rs.60/KG.</p> </center> 
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
          <img src="vege/bottle gaurd.jpg">
             <center><h3 style="color:red">Bottle Guard</h3>
  <p class="card-text">Price : Rs.10/Pcs.</p> </center> 
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
          <img src="vege/lemon.jpg">
             <center><h3 style="color:red">Lemon</h3>
   <p class="card-text">Price : Rs.5/Pcs.</p> </center> 
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
          <img src="vege/green chilli.jpg">
             <center><h3 style="color:red">Green chilli</h3>
       <p class="card-text">Price : Rs.150/KG.</p> </center> 
          <center>
                                          <form action="fruit.jsp">
 <input type="number" min="0" value="1" name="quantity" placeholder="Enter Quantity"style="text-align: center;">
              <button type="submit" class="btn btn-success" value="10" name="btna"style="border: 5px solid black"><i class="fas fa-plus" aria-hidden="true"style="border: 1px solid"></i> Add To Cart</button>
                                          </form>
          </center>
          </div>
        </div>
    </div>

<!--5th row-->
     <br>
    <div class="row">

      <div class="col-lg-3">
      </div>
      
          <!-- Card -->
         <div class="col-lg-2">
           <div class="card">
          <img src="vege/cl.jpg">
             <center><h3 style="color:red">Corianderleaves</h3>
   <p class="card-text">Price : Rs.60/KG.</p> </center> 
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
          <img src="vege/cabbage.jpg">
             <center><h3 style="color:red">Cabbage</h3>
  <p class="card-text">Price : Rs.20/Pcs.</p> </center> 
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
          <img src="vege/cauliflower.jpg">
             <center><h3 style="color:red">Cauliflower</h3>
   <p class="card-text">Price : Rs.25/Pcs.</p> </center> 
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
          <img src="vege/Cucumber.jpg" style="margin-top: 15%">
             <center><h3 style="color:red">Cucumber</h3>
       <p class="card-text">Price : Rs.15/KG.</p> </center> 
          <center>
                                          <form action="fruit.jsp">
 <input type="number" min="0" value="1" name="quantity" placeholder="Enter Quantity"style="text-align: center;">
              <button type="submit" class="btn btn-success" value="10" name="btna"style="border: 5px solid black"><i class="fas fa-plus" aria-hidden="true"style="border: 1px solid"></i> Add To Cart</button>
          
                                          </form>
          </center>
          </div>
        </div>
    </div>

       <br>
    <div class="row">

      <div class="col-lg-3">
      </div>
      
          <!-- Card -->
         <div class="col-lg-2">
           <div class="card">
          <img src="vege/tomato.jpg">
             <center><h3 style="color:red">Tomato</h3>
   <p class="card-text">Price : Rs.60/KG.</p> </center> 
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
          <img src="vege/beet.jpg"style="margin-top: 27%">
             <center><h3 style="color:red">Beet Root</h3>
  <p class="card-text">Price : Rs.10/Pcs.</p> </center> 
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
          <img src="vege/mushroom.jpg"style="margin-top: 27%">
             <center><h3 style="color:red">Mushrooms</h3>
   <p class="card-text">Price : Rs.5/Pcs.</p> </center> 
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
          <img src="vege/potato.jpg"style="margin-top: 40%">
             <center><h3 style="color:red"></h3>
       <p class="card-text">Price : Rs.150/KG.</p> </center> 
          <center>
                                          <form action="fruit.jsp">
 <input type="number" min="0" value="1" name="quantity" placeholder="Enter Quantity"style="text-align: center;">
              <button type="submit" class="btn btn-success" value="10" name="btna"style="border: 5px solid black"><i class="fas fa-plus" aria-hidden="true"style="border: 1px solid"></i> Add To Cart</button>
                                          </form>
          
          </center>
          </div>
        </div>
    </div>
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


</body>
</html>