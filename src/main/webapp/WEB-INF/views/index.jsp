<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Welcome</title>
		<link rel="stylesheet" type="text/css" href="assets/css/indexStyle.css">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
	</head>
	<body>
		
		<nav class="navbar navbar-light">
		  <div class="container">
		    <a class="navbar-brand my-n5" href="#">
		      <img src="assets/images/logo.png" alt="" width="80" height="65">
		    </a>   
		   <ul class="nav me-5">
			  <li class="nav-item">
			    <a class="nav-link  fs-5 text-dark" href="#">Home</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link   fs-5  text-dark" href="#team">Team</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link   fs-5 text-dark" href="#">About</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link   fs-5  disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
			  </li>
			</ul>   
		  </div>	
		</nav>
		
				<img alt="" src="assets/images/wing1.png" class="bg">
		
		
		<div class="container my-5">
		  <div class="row"> 
		  	<div class="col-4 col-md-8 ">
				<img alt="" src="assets/images/WelcomeColour/welcome.png" width="5%" class="hehe" >
				<div class="col-6 my-3"><a href="<c:url value="/login.do"/>"><button type="button" class="btn btn-primary btn-lg joinButton ">JOIN US NOW</button></a></div>
				
		    </div>
		    <div class="col-8 col-md-4 ">
				<h1 class=" h1">Welcome to vision  your IT guide </h1>
				<h3 class="my-5 text-justify">Sign up or Sign in and get to know what IT domain you should get into and why not find a job ! </h3>
				<!-- 
		   			 <div class="row text-center">
		
				      <div class="col-sm-6 ms-n3 ">
				            <div class="rounded "><img src="assets/images/team/mehdi.jpg" alt="" width="100" class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm ">
				                <h5 class="mb-0">Nizar Stitou</h5><span class="small text-uppercase text-muted">CEO - Founder</span>
				                <ul class="social mb-0 list-inline mt-1">
				                    <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-github"></i></a></li>
				                    <li class="list-inline-item"><a href="linkedin.com/in/nizarst" class="social-link"><i class="fa fa-linkedin"></i></a></li>
				                </ul>
				            </div>
				        </div>
				        
				        <div class="col-sm-6 mb-5 ">
				            <div class="rounded "><img src="assets/images/team/mehdi.jpg" alt="" width="100" class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
				                <h5 class="mb-0">Ismail Yahyaoui</h5><span class="small text-uppercase text-muted">CEO - Founder</span>
				                <ul class="social mb-0 list-inline mt-1">
				                   <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-github"></i></a></li>
				                    <li class="list-inline-item"><a href="linkedin.com/in/mehdi-safi-98b938205" class="social-link"><i class="fa fa-linkedin"></i></a></li>
				                </ul>
				            </div>
				        </div>
				        <div class=" col-sm-6 mb-5 ">
				            <div class=" rounded "><img src="assets/images/team/ismail.JPG" alt="" width="100" class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
				                <h5 class="mb-0">Ismail Yahyaoui</h5><span class="small text-uppercase text-muted">CEO - Founder</span>
				                <ul class="social mb-0 list-inline mt-1">
				                    <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-github"></i></a></li>
				                    <li class="list-inline-item"><a href="linkedin.com/in/ismailyahyaoui" class="social-link"><i class="fa fa-linkedin"></i></a></li>
				                </ul>
				            </div>
				        </div>	        
				    </div>
				</div> -->
				<div class="pic-ctn">
				    <img src="https://picsum.photos/200/300?t=1" alt="" class="pic">
				    <img src="https://picsum.photos/200/300?t=2" alt="" class="pic">
				    <img src="https://picsum.photos/200/300?t=3" alt="" class="pic">
				</div>
		    </div>		    
		  </div>
				
		
		
		<a id="team"><h1 class="h1"></h1></a> 
		
			
		
		
		
		<script src="https://use.fontawesome.com/d531c8d913.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	</body>
</html>