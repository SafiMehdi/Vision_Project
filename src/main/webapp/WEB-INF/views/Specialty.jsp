<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
  <head>
  	<title>Find your specialty</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.2.13/dist/semantic.min.css">
	<link rel="stylesheet" href="assets/specialty/css/style.css">

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
		
				<img alt="" src="../assets/images/wing1.png" class="bg">
	
	<section class="ftco-section">
		<div class="container">
			
			<div class="row justify-content-center">
				<div class="col-lg-4 col-md-6 d-flex justify-content-center align-items-center eh">
					<div class="inline w-100 field ">
				    <label>Discover your specialty</label>
						    <select name="skills" multiple="multiple" class="label ui selection fluid dropdown " id="skills" form="skills">
						      <option value="" >Select Your Skills</option>
						      
						      <optgroup label="fullStack"  >
							      <option value="html">HTML</option>
							      <option value="css">CSS</option>
							      <option value="bootstrap">Bootstrap</option>
							      <option value="symfony">Symfony</option>
							      <option value="laravel">Laravel</option>
							      <option value="php">PHP</option>
							      <option value="node">Node.js</option>
							      <option value="react">React js</option>
							      <option value="vue.">Vue.js</option>
							      <option value="angular">Angular</option>
							      <option value="javascript">Javascript</option>
							      <option value="mongodb">MongoDB</option>
							      <option value="mariadb">MariaDB</option>
							      <option value="oracle">Oracle</option> 
							      <option value="sql">SQL</option>
							      <option value="hibernate">Hibernate</option>
							      <option value="spring">Spring</option>  
							      <option value="c++">C++</option>
							      <option value="c#">C#</option>
							      <option value="api">API</option>    
							      <option value=".net">.NET</option>
						      </optgroup>
						      <optgroup label="devOps" >
							      <option value="bitbucket">BitBucket</option>
							      <option value="git">Git</option>
							      <option value="mesos">Mesos</option>
							      <option value="kubernetes">Kubernetes</option>
							      <option value="dokcer">Docker</option>
							      <option value="puppet">Puppet</option>
							      <option value="terraform">Terraform</option>
							      <option value="ansible">Ansible</option>
							      <option value="jenkins">Jenkins</option>
							      <option value="chef">Chef</option>
							      <option value="linux">Linux</option>
							      <option value="unix">Unix</option>
							      <option value="windows">Windows</option> 
						      </optgroup>
						      <optgroup label="dataAnalyst">
							      <option value="scala">scala</option>
							      <option value=" r ">R</option>
							      <option value="python">Python</option>
							      <option value="data">Big Data</option>
							      <option value="businnes intelligence">Business intelligence</option>
							      <option value="power bi">Power BI</option>
							      <option value="cloudera">Cloudera</option>
							      <option value="azure">Azure</option>
							      <option value="gcp">GCP</option>
							      <option value="aws">AWS</option>
							      <option value="sas">SAS</option>
							      <option value="cloud">cloud</option>
							      <option value="hadoop">Hadoop</option>
							      <option value="spark">Spark</option>
							      <option value="storm">Storm</option>
							      <option value="kafka">Kafka</option>
							      <option value="nifi">Nifi</option>
							      <option value="ranger">Ranger</option>
							      <option value="hive">Hive</option>
						      </optgroup>		
						    </select>
							<button type="submit" value="Submit" id="submit" class="btn mt-3 text-white submit" >SUBMIT</button>
							<button type="submit" value="Submit" id="show" class="btn mt-3 text-white submit" data-toggle="modal" data-target="#exampleModalCenter" hidden >show</button>
				  </div>
				</div>
				<div class="col-lg-8 col-md-6 d-flex justify-content-center align-items-center ">
					<img alt="" src="../assets/images/Web Dev Colour/web-development.png" class="hehe" >
				</div>
				
				 <!-- Modal -->
			    <div class="modal fade" id="exampleModalCenter"  role="dialog" aria-labelledby="exampleModalCenterTitle">
			      <div class="modal-dialog modal-md  modal-dialog-centered" role="document">
			        <div class="modal-content rounded-0">
			          <div class="modal-body py-0">
  			            <div class="d-block main-content">
						  	<lottie-player src="assets/images/Growth Animation/Growth Coloured/Growth Animation.json" background="transparent"  speed="1"  class="img-fluid" loop  autoplay></lottie-player>  
			              <div class="content-text p-4">			                
			                <h3 class="mb-4">Nta khask tkhdm f hadchi : full stack</h3>
			                <p class="mb-4">All their equipment and instruments are alive. The sky was this is cloudless and of a deep dark blue. A shining crescent far beneath the flying vessel.</p>
			              </div>
			            </div>
			          </div>
			        </div>
			      </div>
			    </div>	    
			</div>			
		</div>
	</section>
	
	
		<script type="text/javascript">
			document.getElementById('submit').onclick = function() {
				var selected = [];
				for (var option of document.getElementById('skills').options) {
					if (option.selected) {
						selected.push(option.value);
					}
				}
				
				$.ajax({
					url: "http://localhost:8081/Specialty.do",
					method: "POST",
					dataType: "text",
				    data: {
				    	skills : JSON.stringify(selected) 
				    },
				    success: function(result){
				    	console.log("hahouwa result akhuya : " + result);
				    	document.getElementById("show").click();
				    	
					},
					error: function(xhr, status, error) {
						console.log("warah error akhua");
					}
				});	
			}
	</script>
	
  	  <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
	  <script src="https://use.fontawesome.com/d531c8d913.js"></script>
	  <script src="assets/specialty/js/jquery.min.js"></script>
	  <script src="assets/specialty/js/popper.js"></script>
	  <script src="assets/specialty/js/bootstrap.min.js"></script>
	  <script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.2.13/dist/semantic.min.js"></script>
	  <script src="assets/specialty/js/main.js"></script>
	  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	
	</body>
</html>





















<!-- <script>
		$(document).on('click', '#speciatly', function() {
		var data = "ismail yahyaoui"
		var base_url = "http://localhost:8081/Specialty.do";
				$.ajax({
					url: base_url,
					method: "POST",
					data: {
						skills: data
					},
					dataType: "json",
					success: function(result){
						Swal.fire({
                                type: "succes",
								timer: 1000,
                                showConfirmButton: true,
                                title: result
                        });
					},
					error: function(xhr, status, error) {
						var err = eval("(" + xhr.responseText + ")");
						Swal.fire({
							type: "error",
							title: "Error !",
							text: err.Message,
							confirmButtonText: "Close",
						})
					}
				});
		})

</script> -->

