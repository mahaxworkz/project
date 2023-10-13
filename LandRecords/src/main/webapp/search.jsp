<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> save Records</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <!-- Include Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
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
<div class="container">
			
			<br>
			<h1 align="center">Land Records</h1> 
			<br> 
			<form class="search" action="saverecords" method="post">
		 		<div class="row">
		 	 		<div class="col-md-3"> 
		 				<fieldset class="form-group">
	 						<label for="statek"   class="form-lbl">State</label> 
	 					 	<select id="statek"   class="form-control" name="state"  >
	 					 		<option selected>Open this select menu</option>
	 					 	 	 
	 					 		<option value="Karnataka">Karnataka</option>
	 					 		 
	 					 	</select>
 					 	</fieldset> 
		 			</div> 
		 			<div class="col-md-3"> 
		 				<fieldset class="form-group">
	 						 
	 					 	 <label for="stateSelect">Select district:</label>
                <select id="stateSelect" class="form-control" name="district">
                    <option value=""> select district</option>
                    <option value="Mysore">Mysore</option>
                    <option value="belguam"> belgaum</option>
                    <option value="Shivmoga">Shivmoga</option>
                    <option value="Mandya">Mandya</option>

                </select>
 					 	</fieldset> 
		 			</div> 
		 			<div class="col-md-3"> 
		 				 
	 						<div class="form-group">
                <label for="districtSelect">Select taluk:</label>
                <select id="districtSelect" class="form-control">
                    <option value="">Select taluk</option>
                </select>
            </div>
 					 	 
		 			</div> 
		 			 
           <div class="col-md-3"> 
		 				<fieldset class="form-group">
	 						<label  for="talukSelect"    class="form-lbl">Hobli</label> 
	 					 	<select id="talukSelect" class="form-control select2" name="hobli">
	 					 		<option value="">Select hobli</option>
	 					 		 
                  
	 					 	</select>
 					 	</fieldset> 
		 			</div> 
		 			 <div class="form-group">
                <label for="hobliSelect">Select village:</label>
                <select id="hobliSelect" class="form-control" name="village">
                    <option value="">Select village</option>
                </select>
            </div>
		 			<br>
		 			<button type="submit" class="btn btn-primary">go</button>
</div>
		 		 

		 		 
			</form>
			
			
			
			<br>
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
			
		</div>

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
 
    <!-- Include Bootstrap and jQuery scripts -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>

    <script>
        // Sample data (in a real application, you would fetch this data from a server)
        const districts = {
            "Mysore": ["mysore", "hunsur","nanjangudi","Heggada Devana kote"],
            "belguam": ["raibag", "ramdurg"  ,"gokak","khanapur"],
            "Shivmoga" :["sagara" ,"saroba" ,"hosanagara","THIRTHAHALLI"],
            "Mandya" :["maddur","krishnarajpet","nagamangala","pandavapura"]
        };

        const taluks = {
            "mysore": ["kasaba", "varuna"],
            "hunsur": ["Bilikere", "Gavadagere"],
            "nanjangudi": ["Chikkayyanachatra", "Hullahalli"],
            "Heggada Devana kote":["Antarasante","Hampapura"],
            "raibag": ["kudachi ", "raibaga"],
            "ramdurg": ["K Chandaragi", "katakola"],
            "gokak": ["gokak ", "kowjalagi"],
            "khanapur": ["Beedi", "Gunji"],
            "sagara": ["ANANDAPURA", "AVINAHALLI"],
            "saroba": ["JADE ", "ULAVI"],
            "hosanagara": ["HUNCHA", "NAGARA"],
            "THIRTHAHALLI": ["AGRAHARA", "AGUMBE"],
            "maddur": ["ATAGURU HOBLI", "KOPPA HOBLI"],
            "krishnarajpet": ["AKKIHEBBAL", "BUKINAKERE"],
            "nagamangala": ["Belluru", "Bindiganaville"],
            "pandavapura": ["chinakurali", "melukote"]
            

        };

        const hoblis={
            "kasaba":["Bogadi","Goruru","Kesare","Satagalli"],
            "varuna":["Dandikere","Hongate","Marashe","Yadakola"],
            "Bilikere":["Asvalu","Dallalu","Tippuru","Mudlapura"],
            "Gavadagere":["Agrahara","Attiguppe","Belatturu","Harave"],
            "Chikkayyanachatra":["Adakanahalli","Alatturu","Basavanapura","Bidaragudu"],
            "Hullahalli":["Akala","Amakalli","Ambale","Ariyuru"],
            "Antarasante":["Anagatti","Anemala","Hosuru","Jiyara"],
            "Hampapura":["Bettahalli","Devalapura","Karigala","Pura"],

            "kudachi":["mugalakhoda","neelaji","moraba","kudachi"],
            "raibaga":["bavachi","chinchali","devanakatti","jodatti"],
            "kowjalagi":["adibatti","betageri","kandrattti","mannikeri"],
            "katakola":["Aribenchi","bannura","bochabala","budanura"],
            "gokak":["balobal","budihala","dandapur","gokaka"],
            "K Chandaragi":["beedaki","bhagojikoppa","bijagupi","budanura"],
            "Beedi":["adi","balagunda","beedi","bhuranaki"],
            "Gunji":["Abanalle","Akralli","Ambevadi","Anagadi"],

            "ANANDAPURA":["ACHAPURA","ADURU","ATAVDI","BALLIBYELU"],
            "AVINAHALLI":["AMBARAGODLU","ARALEEKOPPA","BESURU","DEVASA"],
            "JADE":["ARETALAGADDE","BANKSANA","BANKAVALLI","BILAGALI"],
            "ULAVI":["AVALAGODU","BALAGODU","BARIGE","BHADRAPURA"],
            "HUNCHA":["AMRUTA","ANEGADDA","BILLODI","BORIKOPPA"],
            "NAGARA":["ANDAGADUDURU","BAISE","KABALE","KADIGERI"],
            "AGRAHARA":["AGALABAGILU","AGASADI","ALURU","ARALASURALI"],
            "AGUMBE":["AREHALLI","BALEHALLI","CHAKKODABILU","CHANGARA"],

            "ATAGURU HOBLI":["ALANSHETTIHALLI","ANKANATHAPURA","ATAGURU","BYALADAKERE"],
            "KOPPA HOBLI":["BEKKALALE","BOLARE","HOSAGALI","KIRANGURU"],
            "AKKIHEBBAL":["AIPANAHALLI","AKKIHEBBAL","ALAMBADI","ALENAHALLI"],
            "BUKINAKERE":["AGASARAHALLI","AICHANAHALLI","ARALAKUPPE","ATTUPPE"],
            "Belluru":["Adakatahalli","Agachahalli","Ambalajeerahalli","Anakanahalli"],
            "Bindiganaville":["A Chennapura","A Nagattihalli","Addihalli","Avverahalli"],
            "chinakurali":["Alpahalli","Antanahalli","Aralakuppe","Aralakuppenala"],
            "melukote":["Amruthi","Anunahalli","anuvallu","Arakanakere"]


        };

        $(document).ready(function() {
            // Populate the District dropdown based on the selected State
            $('#stateSelect').on('change', function() {
                const selectedState = $(this).val();
                const districtSelect = $('#districtSelect');
                districtSelect.html('<option value="">Select taluk</option>');

                if (selectedState !== "") {
                    districts[selectedState].forEach(function(district) {
                        districtSelect.append(`<option value="${district}">${district}</option>`);
                    });
                }
            });

            // Populate the Taluk dropdown based on the selected District
            $('#districtSelect').on('change', function() {
                const selectedDistrict = $(this).val();
                const talukSelect = $('#talukSelect');
                talukSelect.html('<option value="">Select hobli</option>');

                if (selectedDistrict !== "") {
                    taluks[selectedDistrict].forEach(function(taluk) {
                        talukSelect.append(`<option value="${taluk}">${taluk}</option>`);
                    });
                }
            });

             // Populate the Taluk dropdown based on the selected taluk
             $('#talukSelect').on('change', function() {
                const selectedTaluk = $(this).val();
                const hobliSelect = $('#hobliSelect');
                hobliSelect.html('<option value="">Select village</option>');

                if (selectedTaluk !== "") {
                    hoblis[selectedTaluk].forEach(function(hobli) {
                        hobliSelect.append(`<option value="${hobli}">${hobli}</option>`);
                    });
                }
            });



        });
    </script>
 
 
 
 
  


</body>

</html>