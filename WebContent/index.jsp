<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.1.1">
    <title>GRI Tesla Dealership,Inc</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/carousel/">
	<link rel="stylesheet" type="text/css" href="./styles/styles.css">
 	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
 
   <!-- Bootstrap core CSS -->
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    <!-- Custom styles for this template -->
    <link href="./styles/styles.css">
  </head>
  <body>
  
 <jsp:include page="/carDisplay"/>
  
    <header>
  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <a class="navbar-brand" href="#">GRI Tesla Dealership, Inc</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
        </li>
        
        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Inventory
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="NewCars">New Cars</a>
         <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="UsedCars" >Used Cars</a>
         </div>
         
         </li>
         <li class="nav-item">
         <a class="nav-link" href="carDisplay.jsp" >Shop</a>
         </li>
                <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Learn More
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="https://tesla.com/support/software-updates" target="_blank">Tesla Up Dates</a>
         <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="https://www.tesla.com/blog" target="_blank">Tesla Blog</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="https://electrek.co/2020/08/10/tesla-smartwatch-why/"target="_blank">Tesla Smartwatch</a>
        </div>
      </li>
      </ul>
      <form action="search" class="form-inline mt-2 mt-md-0">
        <input class="form-control mr-sm-2" type="search" name="carSearch" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
      </form>
    </div>
  </nav>
</header>

<main role="main">

  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active">
      <img width="300" height="auto" class="d-block w 100" src="https://www.teslamotors.com/sites/default/files/red-tesla-model-s.jpg">
        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xsMinYMin slice" focusable="false" role="img"><rect width="100%" height="100%" fill="#777"/></svg>
        <div class="container">
          <div class="carousel-caption text-left">
            <h1>402 mil.</h1>
            <p>Go any where with up to 402 miles of range on a single charge.</p>
           
          </div>
        </div>
      </div>
      <div class="carousel-item">
      <img style="width: 300px; height:auto;" class="d-block w 100" src="https://bensmann.no/wp-content/uploads/2016/10/teslas-supercharger-global-network-reaches-almost-400-charging-stations-93146_1.jpg">
         <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xsMinYMin slice" focusable="false" role="img"><rect width="100%" height="100%" fill="#777"/></svg>
        <div class="container">
          <div class="carousel-caption">
          <br>
            <h1>Charge in 15 Mins!.</h1>
            <p>Recharge up 163 miles in 15 minutes at any supercharger location.</p>
            <p><a class="btn btn-lg btn-primary" href="https://www.pluglesspower.com/learn/tesla-model-s-charging-home-public-autonomously/" target="_blank" role="button">Learn more</a></p>
          </div>
        </div>
      </div>
      <div class="carousel-item">
      <img style="width: 300px; height:auto;" class="d-block w 100" src="https://hips.hearstapps.com/hmg-prod/amv-prod-cad-assets/wp-content/uploads/2017/11/Tesla-Roadster-103.jpg">
        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xsMinYMin slice" focusable="false" role="img"><rect width="100%" height="100%" fill="#777"/></svg>
        <div class="container">
          <div class="carousel-caption text-right">
            <h1>17,000 Plus Charging Stations.</h1>
            <p>Superchargers palace along well travelled routes around the world.</p>
            <p><a class="btn btn-lg btn-primary" href="carDisplay.jsp" role="button">Browse gallery</a></p>
          </div>
        </div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
<br>

  <!-- Marketing messaging and featurettes
  ================================================== -->
  <!-- Wrap the rest of the page in another container to center all the content. -->

  <div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <h1>Testimonies</h1>
    <div class="row">
      <div class="col-lg-6">
        <svg width="450" height="350" padding-right="10px">
         <defs>
            <clipPath id="myCircle">
               <circle cx="250" cy="145" r="120" fill="#FFFFFF" />
            </clipPath>
         </defs>
         <image width="500" height="350" xlink:href="https://usatgolfweek.files.wordpress.com/2020/08/gty-1267666183-e1598106064413.jpg?w=1000&h=600&crop=1" clip-path="url(#myCircle)" />
      </svg>

        <h2>Tiger Woods</h2>
        <p>Most energy efficient high performance vehicles on the market. The technology is next gen and is actually quite impressive. Best part ever is hands free driving with a piping hot coffee and donut. 0 to 60 miles per hour in 3.2 seconds with all wheel drive twin turbos.</p>
        
      </div><!-- /.col-lg-4 -->
      <div class="col-lg-6">
       <svg width="450" height="350" padding-top="10px">
         <defs>
            <clipPath id="myCircle">
               <circle cx="250" cy="145" r="120" fill="#FFFFFF" />
            </clipPath>
         </defs>
         <image width="500" height="350" xlink:href="https://s1.stabroeknews.com/images/2020/01/Eliud-Kipchoge.jpg?w=1000&h=600&crop=1" clip-path="url(#myCircle)" />
      </svg>
        <h2>Eliud Kipchoge</h2>
        <p>This vehicle is amazing. It drives beautifully. The take off is out of this world. I wish I would have gotten into this vehicle sooner. The technology inside the vehicle sets it apart from any other vehicle I have ever owned before. It is truly a work of art, not just by its design but by the technology and the easiness that brings to my drive.</p>
        
      </div><!-- /.col-lg-4 -->
     
    </div><!-- /.row -->


    <!-- START THE FEATURETTES -->

    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading">Model 3 | Tesla. <span class="text-muted">It 'll blow your mind.</span></h2>
        <p class="lead">Model 3 is designed for electric-powered performance, with dual motor AWD, quick acceleration, long range and fast charging. Quickest acceleration-from zero to 60 mph in as little as 3.2 seconds. Improved handling and aerodynamics allows for a top speed of 162 mph.</p>
      </div>
      <div class="col-md-5">
      <img src="https://www.tesla.com/sites/default/files/model3-new/compare/compare_model3_center.png" alt="model3" class="compare-vehicle-image" style="width: 600px; height: 350px; padding-top: 10px;">
        </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7 order-md-2">
        <h2 class="featurette-heading"> Model S | Tesla. <span class="text-muted">See for yourself.</span></h2>
        <p class="lead">The quickest acceleration on earth-from zero to 60 mph in as little as 2.3 seconds. Go anywhere with up to 402 miles of range on a single charge. Model S was designed for speed and endurance-with incredible aerodynamics, ludicrous performance and uncompromised aesthetics. Automatic door handles auto-present upon approach and withdraw when closed.</p>
      </div>
      <div class="col-md-5 order-md-1">
       <img src="https://s.aolcdn.com/dims-global/dims3/GLOB/legacy_thumbnail/640x400/quality/80/https://s.aolcdn.com/commerce/autodata/images/USC70TSC024B021001.jpg" style="width: 400px; height: 250px; padding-top: 2px;">
      </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading">Model X | Tesla. <span class="text-muted">You Want More Room!.</span></h2>
        <p class="lead">Go anywhere with up to 351 miles of range on a single charge. Enhanced accessibility to the second and third rows. Falcon Wing, Full Self-Driving Capability</p>
      </div>
      <div class="col-md-5">
        <img src="https://www.irishtimes.com/polopoly_fs/1.4147923.1579705390!/image/image.jpg_gen/derivatives/ratio_4x3_w1200/image.jpg" style="width: 500px; height: 350px; padding-top: 10px;">
      </div>
    </div>
    
      <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7 order-md-2">
        <h2 class="featurette-heading">Cybertruck. <span class="text-muted">The Ultimate.</span></h2>
        <p class="lead"> Cybertruck is built with an exterior shell made for ultimate durability and passenger protection with up to 3,500 pounds of payload capacity and adjustable air suspension, Cybertruck is the most powerful tool we have ever built, engineered with 100 cubic feet of exterior, lockable storage-including a magic tonneau cover that is strong enough to stand on.The powerful drivetrain and low center of gravity provides extraordinary traction control and torque-enabling acceleration from 0-60 mph in as little as 2.9 seconds and up to 500 miles of range.</p>
      </div>
      <div class="col-md-5 order-md-1" class="padding-top: 30px;">
       <img src="https://media.ed.edmunds-media.com/tesla/ot/tesla_actf34_ot_1121191_717.jpg" alt="" class="compare-vehicle-image" style="width: 450px; height: 400px; padding-top: 80px;">
      </div>
    </div>

    <hr class="featurette-divider">

    <!-- /END THE FEATURETTES -->

  </div><!-- /.container -->


  <!-- FOOTER -->
  <footer class="container">
    <p class="float-right"><a href="#">Back to top</a></p>
    <p>&copy; 2020 GRI Tesla Dealership, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
  </footer>
</main>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="../assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
      
</html>
