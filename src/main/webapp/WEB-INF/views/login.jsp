<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Welcome</title>
		<link rel="stylesheet" type="text/css" href="assets/css/signupStyle.css">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
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
			    <a class="nav-link   fs-5  text-dark" href="#">Team</a>
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
		
		
		<div class="container ">
		  <div class="row">
		    <div class="col-6 col-md-4 form">
				<div class="section">
							<div class="col-12 text-center align-self-center ">
								<div class="section pb-5 pt-5 pt-sm-2 text-center">
									<h6 class="mb-0 pb-3"><span>Log In </span><span>Sign Up</span></h6>
						          	<input class="checkbox" type="checkbox" id="reg-log" name="reg-log"/>
						          	<label for="reg-log"></label>
									<div class="card-3d-wrap mx-auto">
										<div class="card-3d-wrapper">
											<div class="card-front">
												<div class="center-wrap">
													<div class="section text-center">
														<h4 class="mb-4 pb-3 text-white">Log In</h4>
														<form class="form-horizontal" action="" method="post">
														<div class="form-group">
															<input type="email" name="email" class="form-style" placeholder="Your Email" id="logemail" autocomplete="off">
														</div>	
														<div class="form-group mt-2">
															<input type="password" name="password" class="form-style" placeholder="Your Password" id="logpass" autocomplete="off">
														</div>
														<button type="submit" class="btn mt-4">submit</button>
			                            				<p class="mb-0 mt-4 text-center"><a href="#0" class="link">Forgot your password?</a></p>
			                            				</form>
							      					</div>
						      					</div>
						      				</div>
											<div class="card-back">
												<div class="center-wrap">
													<div class="section text-center">
														<h4 class="mb-4 pb-3 text-white">Sign Up</h4>
														<form class="form-horizontal" action="<c:url value="/New_account"/>" method="post">
														<div class="form-group">
															<input type="text" name="first_name" class="form-style" placeholder="Your First Name" id="logfname" autocomplete="off">
														</div>	
														<div class="form-group mt-2">
															<input type="text" name="last_name" class="form-style" placeholder="Your Last Name" id="loglname" autocomplete="off">
														</div>
														<div class="form-group mt-2">
															<input type="email" name="email" class="form-style" placeholder="Your Email" id="logemail" autocomplete="off">
														</div>	
														<div class="form-group mt-2">
															<input type="password" name="password" class="form-style" placeholder="Your Password" id="logpass" autocomplete="off">
														</div>
														<button type="submit" class="btn mt-4">submit</button>
														</form>
							      					</div>
						      					</div>
						      				</div>
						      			</div>
						      		</div>
						      	</div>
					      	</div>
				      	</div>
				    </div>
				    <div class="col-6 col-md-8">
						<lottie-player src="assets/images/Login Animation/Lottie Animation/Login Colored.json" background="transparent"  speed="1"  class="hehe" loop  autoplay></lottie-player>
				    </div>
				</div>				
		    </div> 

		<script src="https://use.fontawesome.com/d531c8d913.js"></script>
		<script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
	</body>
</html>