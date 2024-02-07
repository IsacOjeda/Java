<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>
<head>
<style><%@include file="/WEB-INF/view/style/styles.css"%></style>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<nav style="height:110px; width:1221px;" class="navbar navbar-light bg-dark mt-5 sticky-top me-auto m-auto">
  		<div style="background-color:#191A2E;"  class="container h-75">
    	<a  style="color:#D6E5E2; font-family:century-gothic;" class="navbar-brand fs-1" href="/">The Tipton</a>
    	<h4 class="fs-2" style="color:#D6E5E2; font-family:century-gothic;">Stay</h4>
    	<h4 class="fs-2" style="color:#D6E5E2; font-family:century-gothic;">Dine</h4>
    	<h4 class="fs-2" style="color:#D6E5E2; font-family:century-gothic;">Gather</h4>
    	<h4 class="fs-2" style="color:#D6E5E2; font-family:century-gothic;">Contact</h4>
    	
    	<button class="fs-1 " style="color:black; border-color:#FFFFFF; font-family:century-gothic; background-color:#191A2E;">	<a style="color:#D6E5E2;" class="text-decoration-none" href=/rooms>Book Now</a>  </button>
  		</div>
	</nav>
	
	<div style="height:710px; width:1221px;" id="carouselWithControls" class="carousel slide me-auto m-auto " data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="3010">
      <img style="height:710px; width:1550px;" src="/images/R.png" class="d-block " alt="Slide 1">
      	      <div class="carousel-caption d-none d-sm-block">
        <h5>MODERN LUXURY</h5>
        <p>VINTAGE CHARM MEETS.</p>
      </div>
    </div>
    <div class="carousel-item" data-bs-interval="3010">
      <img style="height:710px; width:1550px;" src="/images/pinterest4.jpg" class="d-block" alt="Slide 2">
            <div class="carousel-caption d-none d-sm-block">
        <h5>SINCE 1982</h5>
        <p>THE PERFECT DESTINATION.</p>
      </div>
    </div>
    <div class="carousel-item" data-bs-interval="3010">
      <img style="height:710px; width:1221px;" src="/images/52527155_959623550908050_5088189421325385728_o.jpg" class="d-block " alt="Slide 3">
            <div class="carousel-caption d-none d-sm-block">
        <h5>EXLUSIVE OFFERS</h5>
        <p>TRAVEL IN STYLE.</p>
      </div>
    </div>
    <div class="carousel-item" data-bs-interval="3010">
      <img style="height:710px; width:1221px;" src="/images/best-pools-miami-1-hotel-cr-courtesy.jpg" class="d-block " alt="Slide 4">
            <div class="carousel-caption d-none d-sm-block">
        <h5>EXLUSIVE OFFERS</h5>
        <p>TRAVEL IN STYLE.</p>
      </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselWithControls" role="button" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselWithControls" role="button" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </a>
</div>

<div class="me-auto m-auto d-flex flex-row" style="width:1218px; height:488px;">
	<div class="me-auto m-auto d-flex align-content-center flex-wrap border border-2 border-dark"  style="width:540px; height:400px;">
	<p style="font-family:century-gothic;" class="text-center d-flex justify-content-center p-2 " >
	The Tipton is a premier boutique hotel renowned for its unparalleled blend of sophistication and personalized service. Located in the heart of the city, our establishment offers a luxurious retreat for discerning travelers. With meticulously appointed rooms and suites, exquisite dining options, and a commitment to exceeding guest expectations, The Tipton promises an unforgettable stay for both leisure and business travelers alike. </p></div>
	<img style="width:612px; height:488px;"  src=/images/alfond-inn-cr-courtesy.jpg/>
</div>



<div class="me-auto m-auto d-flex flex-wrap align-items-start"  style="width:1218px; height:330px;   ">

<img style="width:280px; height:330px;" src=/images/geometric-peel-and-stick-wallpaper-24.jpg/>

<img style="width:326px; height:330px;" src=/images/4b73aa8471f42dbff555b38e89ce5466.jpg>

<div class="me-auto m-auto d-flex flex-wrap flex-column align-items-center justify-content-center gap-4 " style="width:612px; height:330px; background-color:#212529">

	<h2 style="color:#D6E5E2; font-size:100px; font-family:century-gothic;" >TIPTON</h2>
	
	<button style=" width:205px; height:55px; font-size:35px; border-color:#D6E5E2;  background-color:#212529; color:#D6E5E2; font-family:century-gothic;" >Contact Us</button>
	
</div>

</div>

<div style="height:40px"></div>


<div class="me-auto m-auto d-flex text-lg-center" style="width:1219px; height:435px;  ">

	<div class="d-flex flex-wrap flex-column  justify-content-center " style=" width:609px; height:380px;">
	<p style="color:#191A2E; font-size:50px; font-family:century-gothic;">A unique stay </p>
	<p style="color:#191A2E; font-size:50px; font-family:century-gothic;">At The Tipton</p>
	
	<img style="width:430px; height:600px;  position:absolute; left:20px; top:1750px;" src="/images/114efb2545d1733392730080cff02c8d-removebg-preview.png"/>	
	
	<img style="width:430px; height:600px; position:absolute; right:-5px; top:2400px; object-fit: cover; object-position: -200% 0;"  src="/images/vine-hi.png"/>	
	
 	</div>
 	
 		<img style="width:370px; height:380px; object-fit: cover;" src="/images/dubai-suite-skyline-view-bedroom.jpeg"/>
 	
 	 	<img style="width:237px; height:380px; object-fit: cover;" src="/images/a1da2b4d82071322197c8737c9bdcad5.jpg"/>
 	
</div>

<div class="me-auto m-auto d-flex align-items-center justify-content-center  " style="width:1221px; height:387px;  ">
	<div style="width:502px; height:300px;" class="d-flex flex-wrap flex-column align-items-center justify-content-center text-wrap gap-4">
			<p class="text-center" style="color:#191A2E; font-size:20px; font-family:century-gothic;">OUR HOTEL ROOMS </p>
			<p class="text-center" style="color:#191A2E; font-size:20px; font-family:century-gothic;">Whether you're seeking a tranquil retreat after a busy day of exploration or a lavish haven for relaxation, our rooms at "The Tipton" set the standard for refined comfort and unparalleled elegance.</p>
		<button style=" width:205px; height:55px; font-size:35px; border-color:#191A2E;  color:#212529; font-family:century-gothic;" > <a style="color:black;" class="text-decoration-none" href="/rooms"/>View Rooms </a>   </button>
		
	
	</div>
	

</div>


<div class="me-auto m-auto" style="width:1218px; height:472px; background-color:grey;  ">
	<img style=" width:1218px; height:472px; object-fit: cover;"  src="/images/a38c11d9dd42ccfa96b4121fd62a4fde.jpg" />

</div>

<div  style="background-color:#191A2E; height:21px; width:1229px; position:absolute; top:3120px; left:334px"></div>


<div class="me-auto m-auto" style="width:1229px; height:136px;">
	<p style="font-size:80px; font-family:century-gothic;">@THETIPTONHOTEL</p>
	</div>

<div style="height:80px"></div>



<div  style=" height:30px; width:1229px;"></div>

<div class="me-auto m-auto d-flex  " style="width:1229px; height:188px; background-color:green;">

	<div style="width:270px; height:188px; background-color:#212529;">
			<p class="text-center" style="color:#D6E5E2; font-size:15px; font-family:century-gothic;">The Tipton</p>
			<p class="text-center" style="color:#D6E5E2; font-size:15px; font-family:century-gothic;">123 Ocean View Avenue</p>
			<p class="text-center" style="color:#D6E5E2; font-size:15px; font-family:century-gothic;">Harbor Heights, Rivertown</p>
			<p class="text-center" style="color:#D6E5E2; font-size:15px; font-family:century-gothic;">Sunset Bay, CA 90210</p>
			<p class="text-center" style="color:#D6E5E2; font-size:15px; font-family:century-gothic;">United States</p>

	</div>
	
		<div style="width:270px; height:188px; background-color:#212529;">
			<p class="text-center" style="color:#D6E5E2; font-size:15px; font-family:century-gothic;"> <a style="color:#D6E5E2;" href=#>Sitemap</a></p>
			<p class="text-center" style="color:#D6E5E2; font-size:15px; font-family:century-gothic;"> <a style="color:#D6E5E2;" href=#>Careers</a></p>
			<p class="text-center" style="color:#D6E5E2; font-size:15px; font-family:century-gothic;"> <a style="color:#D6E5E2;" href=#>Media</a></p>
			<p class="text-center" style="color:#D6E5E2; font-size:15px; font-family:century-gothic;"> <a style="color:#D6E5E2;" href=/admin/register/login>Admin login</a></p>
			<p class="text-center" style="color:#D6E5E2; font-size:15px; font-family:century-gothic;"> <a style="color:#D6E5E2;" href=#>Privacy Policy</a></p>
		</div>
	
	<div style="width:688px; height:188px; background-color:#212529;">
		<img style="width:688px; height:188px; object-fit: cover;" src="/images/0_CErpSUz_aT1zX9be.png"/>
	
	
	</div>



</div>

</body>
</html>