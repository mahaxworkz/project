<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="ISO-8859-1">
<title> Admin</title>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
     
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

 

</head>
<body>


<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <!-- Container wrapper -->
    <div class="container-fluid">
        <!-- Navbar brand -->
        <a class="navbar-brand mt-2 mt-lg-0" href="#">
            <h5 class="pt-1">LandRecord</h5>
        </a>
        <!-- Toggle button -->
        <button class="navbar-toggler" type="button" data-mdb-toggle="collapse" data-mdb-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <i class="fas fa-bars"></i>
        </button>

        <!-- Collapsible wrapper -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <!-- Left links -->
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                
                
                
            </ul>
            <!-- Left links -->

            <!-- Right elements -->
            <div class="d-flex align-items-center justify-content-start">
                <!-- Icon -->
                <a class="text-reset me-3" href="#">
                    <i class="fas fa-shopping-cart text-white"></i>
                </a>

                 
                
            </div>
            <!-- Right elements -->
        </div>
        <!-- Collapsible wrapper -->
    </div>
    <!-- Container wrapper -->
</nav>
<!-- Navbar -->
<section>
<div class="signup-form">
<form action="sign" method="post" style="text-align: center">
	<h2> Login </h2>
				 <h6 style="color: red;">${check}</h6>
				 <h6 style="color: green;">${saved}</h6>
				 <h6 style="color: red;">${findotp1}</h6>
				 <h6 style="color: red;">${findotp}</h6>
				 <h6 style="color: red;">${findotp2}</h6>
				 <h6 style="color: red;">${find}</h6>
				<br>
				 
				<div class="inputbox">
					<ion-icon name="mail-outline"></ion-icon>
			  <input type="email"  name="email" id="t3" value="<%= (request.getParameter("email") != null) ? request.getParameter("email") : "" %>"  placeholder="email"  >
					 

				</div>
				<div>
				<button type="submit" value="sendOTP" class="btn btn-primary">send OTP</button>
				</div>
				 
				</form>
			 <br>
				  
			<form action="otpcheck" method="post">
				
				<div class="inputbox" style="text-align: center">
			 
					<input type="password" name="OTP" placeholder="OTP" class="tb" id="t4">
					 <br>
					 <br>
				 <div style="text-align: center">
					<button type="submit"    value="login"  class="btn btn-primary"  >Login</button> </td>
				</div>

				</div>
			</form>
				 <br>
</div>

</section>


 
<!-- Footer -->
<footer class="bg-primary text-center text-white fixed-bottom">
     
    <!-- Copyright -->
    <div class="text-center p-3" style="background-color:primary;">
        � 2023 Copyright:
        <a class="text-white" href="mahalakshmi.xworkz@gmail.com">LandRecords</a>
    </div>
    <!-- Copyright -->
</footer>
<!-- Footer -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.5.0/dist/js/bootstrap.min.js"></script>


  
	<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

</body>
</html>