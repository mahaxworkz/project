<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script type="text/javascript">

document.getElementById("unique").readOnly=true;
document.getElementById("unique"). ;

</script>

</head>
<body>
<!-- Navbar -->
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
                <li class="nav-item">
                    <a class="nav-link" href="#">Dashboard</a>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link" href="admin.jsp">LogOut</a>
                </li>
                <li class="nav-item">
                <form action="readAll" method="post">
<button type="submit" class="btn btn-primary">View Records</button>
</form>
                </li>
             </ul>   
                
             
        </div>
        <!-- Collapsible wrapper -->
    </div>
    <!-- Container wrapper -->
</nav>
<!-- Navbar -->
<div class="container">
			
			<br>
			<h1 align="center">Land Records</h1> 
			<h5 style="color: green">${edited}</h5>
			<br> <br>
			 
        

 			<form class="form" action="updateRecords" method="post">
		 		<div class="row">
		 		      
		 			<div class="col-md-3"> 
	 					 
	 						<label class="form-lbl"><b>OwnerName</b></label>
	 						<input type="text" name="ownerName"class="form-control" id="" placeholder="">
	 					  
		 			</div>
		 			   <h5 style="color: red">${nameError}</h5>
		 			   &nbsp;  &nbsp;&nbsp;
		 			<div class="col-md-3">  
	 					 
	 						<label class="form-lbl"><b>phoneNumber</b></label>
	 						<input type="number" name="phoneNumber" class="form-control" id="" placeholder="">
	 					 
		 			</div>
		 			   <h5 style="color: red">${pnError}</h5>
		 			   &nbsp;  &nbsp;&nbsp;
		 			<div class="col-md-3"> 
	 					<fieldset class="form-group">
	 						<label class="form-lbl"><b>Adhar number</b></label>
	 						<input type="number" name="adharNumber" class="form-control" id="" placeholder="">
	 					</fieldset> 
		 			</div>
		 			   <h5 style="color: red">${anError}</h5>
		 			 
		 			</div>
		 		</div>
		 		 
		 		<div class="row">
		 		&nbsp;  &nbsp;&nbsp;  &nbsp;&nbsp;  &nbsp;
		 		 <div class="col-md-3">      
	 					 	<fieldset class="form-group">
	 						 <label class="form-lbl"><b>Hissa Number</b></label>
	 						<input type="number" name="hissaNumber" value="${param.hissaNumber}" readonly    class="form-control" id="unique" placeholder="">
	 					  </fieldset>
		 			</div>
		 			<div class="col-md-3"> 
	 					 <fieldset class="form-group">
	 						 <label class="form-lbl"><b>Survey Number</b></label>
	 						 
	 						<input type= "number" name="surveyNumber" value="${param.surveyNumber}" readonly class="form-control" id="unique" placeholder="">
	 					  </fieldset>
		 			</div>
		 			 
</div></div><br><br>

		 		<center><button type="submit" class="btn btn-primary"  >edit</button></center>
		 	</form>		
		 			 


<!-- Footer -->
<footer class="bg-primary text-center text-white fixed-bottom">
     
    <!-- Grid container -->

    <!-- Copyright -->
    <div class="text-center p-3" style="background-color:primary;">
        � 2023 Copyright:
        <a class="text-white" href="mahalakshmi.xworkz@gmail.com">LandRecords</a>
    </div>
    <!-- Copyright -->
</footer>
<!-- Footer -->
 
    <!-- Include Bootstrap and jQuery scripts -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>

 

</body>
</html>