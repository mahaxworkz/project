<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
     
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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
                <form action="read" method="post">
<button type="submit" class="btn btn-primary">View Records</button>
</form>
                </li>
             </ul>   
                
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
<form action="read" method="post">
<button type="submit" class="btn btn-primary">View Records</button>
</form>
                
  <table class="table">

  <thead class="table-dark">
  <tr>
      <th scope="col">State</th>
      <th scope="col">district</th>
      <th scope="col">taluk</th>
      <th scope="col">hobli</th>
      <th scope="col">village</th>
      <th scope="col">owner name</th>
      <th scope="col">mobileNo</th>
      <th scope="col">Adhar No</th>
      <th scope="col">hissa No</th>
      <th scope="col">Survey No</th>
      <th scope="col">year</th>
      
    </tr></thead>
  
  <tbody>     
  <c:forEach var="list" items="${read}">
<tr>
<td>${list.state}</td>
<td>${list.district}</td>
<td>${list.taluk}</td>
<td>${list.hobli}</td>
<td>${list.village}</td>
<td>${list.ownerName}</td>
<td>${list.phoneNumber}</td>
<td>${list.adharNumber}</td>
<td>${list.hissaNumber}</td>
<td>${list.surveyNumber}</td>
<td>${list.year}</td>

</tr>

</c:forEach>
  </tbody>
  
  </tbody>
</table>
  <button type="submit">edit</button>
   <!-- Footer -->
<footer class="bg-primary text-center text-white fixed-bottom">
    <!-- Grid container -->
    <div class="container p-4 pb-0">
        <!-- Section: Social media -->
                 <!-- Section: Social media -->
    </div>
    <!-- Grid container -->

    <!-- Copyright -->
    <div class="text-center p-3" style="background-color:grey;">
        © 2023 Copyright:
        <a class="text-white" href="mahalakshmi.xworkz@gmail.com">LandRecords</a>
    </div>
    <!-- Copyright -->
</footer>
<!-- Footer -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.5.0/dist/js/bootstrap.min.js"></script>

</body>
</html>        
                