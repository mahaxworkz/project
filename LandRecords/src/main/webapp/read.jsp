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
			<form class="form" action="saverecords" method="post">
		 		<div class="row">
		 			<div class="col-md-3"> 
	 					<fieldset class="form-group">
	 						<label class="form-lbl">OwnerName</label>
	 						<input type="text" name="ownerName"class="form-control" id="" placeholder="">
	 					</fieldset> 
		 			</div>
		 			<div class="col-md-3">  
	 					<fieldset class="form-group">
	 						<label class="form-lbl">phoneNumber</label>
	 						<input type="number" name="phoneNumber" class="form-control" id="" placeholder="">
	 					</fieldset> 
		 			</div>
		 			<div class="col-md-3"> 
	 					<fieldset class="form-group">
	 						<label class="form-lbl">Adhar number</label>
	 						<input type="number" name="adharNumber" class="form-control" id="" placeholder="">
	 					</fieldset> 
		 			</div>
		 			<div class="col-md-3">
		 				<div class="form-group view-password">  
                            <label class="form-lbl"> Hissa Number</label> 
                            	<input type="number" name="hissaNumber" class="form-control" id="" placeholder="">
                         </div> 
		 			</div>
		 		</div>
		 		<div class="row">
		 			<div class="col-md-3">  
	 					<fieldset class="form-group">
	 						<label class="form-lbl"> survey Number</label>
	 						<input type="number" name="surveyNumber" class="form-control" id="" placeholder="">
	 					</fieldset> 
		 			</div>

		 			<div class="col-md-3">  
	 					<fieldset class="form-group">
	 						<label  class="form-lbl">Year</label>
	 						<input type="number"name="year" class="form-control" id="" placeholder=""> 
	 					</fieldset> 
		 			</div>
		 			
		 			 
		 			<div class="col-md-3"> 
		 				<fieldset class="form-group">
	 						<label for="stateSelect"   class="form-lbl">State</label> 
	 					 	<select id="stateSelect"   class="form-control" name="state"  onchange="loadDistricts()">
	 					 		<option selected>Open this select menu</option>
	 					 		<option value="TamilNadu">TamilNadu</option>
	 					 		 
	 					 		<option value="Karnataka">Karnataka</option>
	 					 		 
	 					 	</select>
 					 	</fieldset> 
		 			</div> 
		 			<div class="col-md-3"> 
		 				<fieldset class="form-group">
	 						<label for="districtSelect"    class="form-lbl">District</label> 
	 					 	<select  id="districtSelect" class="form-control" name="district" onchange="loadTaluks()">
	 					 		<option selected>Open this select menu</option>
	 					 		 <option value=''>-- Select District --</option>
	 					 	     	<option value="Mysuru">Mysuru</option>
	 					 		<option value="Mandya">Mandya</option>
	 					 		<option value="Shivamogga">Shivamogga</option>
	 					 		<option value="belgaum">belgaum</option> 
	 					 	</select>
 					 	</fieldset> 
		 			</div> 
		 			<div class="col-md-3"> 
		 				<fieldset class="form-group">
	 						<label  for="talukSelect"    class="form-lbl">Taluk</label> 
	 					 	<select id="talukSelect" class="form-control" name="taluk" >
	 					 		 <option value=''>-- Select Taluk --</option>
	 				  	 	 	<option value="mysuru">Mysuru</option>
	 					 		<option value="Heggada Devana kote">Heggada Devana kote</option>
	 					 		<option value="hunsur">hunsur</option>
	 					 		<option value="Nanjangudi">Nanjangudi</option>
	 					 		 
	 					 		 <option value="maddur">maddur</option>
	 					 		<option value="krishnarajpet ">krishnarajpet</option>
	 					 		<option value="nagamangala"> nagamangala</option>
	 					 		<option value="pandavapura">pandavapura</option>
	 					 		
	 					 		 <option value="HOSANAGARA">HOSANAGARA</option>
                            <option value="THIRTHAHALLI">THIRTHAHALLI</option>
                            <option value="SAGARA">SAGARA</option>
                            <option value="SORABA">SORABA</option>
	 					 		 
	 					 		 <option value="Raibag">Raibag</option>
	 					 		<option value="gokak">gokak</option>
	 					 		<option value="ramdurg">ramdurg</option>
	 					 		<option value="khanapur">khanapur</option>
	 					 		
	 					 		  
	 					 		
	 					 	</select>
 					 	</fieldset> 
		 			</div> 
		 			 
           <div class="col-md-3"> 
		 				<fieldset class="form-group">
	 						<label class="form-lbl"> Hobli</label> 
	 					 	<select class="form-control select2" name="hobli">
	 					 		<option selected>Open this select menu</option>
	 					 		<!-- belgaum -->
	 			 <option value="b"></option>
                  <option value="kudachi"> kudachi</option>
                  <option value="raybaga"> raybaga</option>
                   
                  <option value="gokak"> gokak</option>
                  <option value="kowjalagi">kowjalagi</option>
                     
                   <option value=" K Chandaragi"> K Chandaragi</option>
                  <option value="katakola">  katakola</option>
                   
                  <option value="Beedi"> Beedi</option>
                  <option value="Gunji">   Gunji</option>
                  
                  
                  <!-- mandya:nagamangala -->
                  <option value="Belluru">Belluru</option>
                  <option value="Bindiganaville">Bindiganaville</option>
                  <!-- mandya:pandavapura-->
                  <option value="chinakurali">chinakurali</option>
                  <option value="melukote">melukote</option>
                  <!-- MANDYA:KRPET AND MADDUR  -->
                           
                            <option value="AKKIHEBBAL">AKKIHEBBAL</option>
                            <option value="BUKINAKERE">BUKINAKERE</option>
                               
                             <option value="ATAGURU HOBLI">ATAGURU HOBLI</option>
                            <option value="KOPPA HOBLI">KOPPA HOBLI</option>
                            
                            <!-- Mysore -->
						<option value="Kasaba">Kasaba</option>
						<option value="Varuna">Varuna</option>
						
						<!-- Heggada Devana kote -->
						<option value="Antarasante">Antarasante</option>
						<option value="Hampapura">Hampapura</option>
						
						<!-- Hunsur -->
						<option value="Bilikere">Bilikere</option>
						<option value="Gavadagere">Gavadagere</option>
						
						<!-- Nanjangud -->
						<option value="Chikkayyanachatra">Chikkayyanachatra</option>
						<option value="Hullahalli">Hullahalli</option>
						
						<option value="HUNCHA">HUNCHA</option>
                            <option value="NAGARA">NAGARA</option>
                            
                            <option value="AGRAHARA">AGRAHARA</option>
                            <option value="AGUMBE">AGUMBE</option>
                            
                            
                            <option value="ANANDAPURA">ANANDAPURA</option>
                            <option value="AVINAHALLI">AVINAHALLI</option>
                            
                            <option value="JADE">JADE</option>
                            <option value="ULAVI">ULAVI</option>
                  
	 					 	</select>
 					 	</fieldset> 
		 			</div> 
		 			<div class="col-md-3"> 
		 				<fieldset class="form-group">
	 						<label class="form-lbl">Village</label> 
	 					 	<select class="form-control select2" name="village">
	 					 		<option selected>Open this select menu</option>
	 					 		 
                                   
                                   
                                   <!-- kudachi -->
                                   <option value="mugalakhoda"> mugalakhoda</option>
                                   <option value="neelaji"> neelaji</option>
                                   <option value="moraba"> moraba</option>
                                   <option value="kudachi">  kudachi</option>
                                   <!-- raybaga  -->
                                   <option value="bavachi">  bavachi</option>
                                   <option value="chinchali"> chinchali</option>
                                   <option value="devanakatti">devanakatti</option>
                                   <option value="jodatti">jodatti</option>
                                   <!-- gokak  -->
                                    <option value="balobal">  balobal</option>
                                   <option value="budihala">  budihala</option>
                                   <option value="dandapur"> dandapur</option>
                                   <option value="gokaka"> gokaka</option>
                                   
                                   <!-- kowjalagi -->
                                   <option value="adibatti">   adibatti</option>
                                   <option value="betageri">   betageri</option>
                                   <option value="kandrattti">  kandrattti</option>
                                   <option value="mannikeri">  mannikeri</option>
                                    <!-- K Chandaragi -->
                                    
                                     <option value="beedaki"> beedaki</option>
                                   <option value="bhagojikoppa">bhagojikoppa    </option>
                                   <option value="bijagupi">bijagupi  </option>
                                   <option value="budanura">budanura</option>
                                   <!-- katakola -->
                                   <option value="Aribenchi">Aribenchi</option>
                                   <option value="bannura"> bannura  </option>
                                   <option value="bochabala"> bochabala</option>
                                   <option value="budanura">budanura</option>
                                   <!-- beedi -->
                                   <option value="adi">adi</option>
                                   <option value="balagunda"> balagunda  </option>
                                   <option value="beedi">beedi</option>
                                   <option value="bhuranaki">bhuranaki</option>
                                   <!-- kunji -->
                                   <option value="Abanalle"> Abanalle</option>
                                   <option value="Akralli">Akralli</option>
                                   <option value="Ambevadi">Ambevadi</option>
                                   <option value="Anagadi">Anagadi</option>
                                   
                                   
                                   <!-- mandya :belluru -->
                                   <option value="Adakatahalli">Adakatahalli</option>
                                   <option value="Agachahalli"> Agachahalli</option>
                                   <option value="Ambalajeerahalli"> Ambalajeerahalli</option>
                                   <option value="Anakanahalli">Anakanahalli</option>
                                     <!-- mandya :Bindiganaville -->
                                     <option value="A Chennapura">A Chennapura</option>
                                   <option value="A Nagattihalli">A Nagattihalli</option>
                                   <option value="Addihalli">Addihalli</option>
                                   <option value="Avverahalli"> Avverahalli</option>
                                   
                                   <!-- mandya :chinakurali -->
                                   <option value="Alpahalli">Alpahalli</option>
                                   <option value="Antanahalli"> Antanahalli</option>
                                   <option value="Aralakuppe">Aralakuppe</option>
                                   <option value="Aralakuppenala">Aralakuppenala</option>
                                   
                                   <!-- mandya :mekote -->
                                   <option value="Amruthi"> Amruthi</option>
                                   <option value="Anunahalli">  Anunahalli</option>
                                   <option value="anuvallu">anuvallu</option>
                                   <option value="Arakanakere">Arakanakere</option>
                                   
                                    
                             <option value="AIPANAHALLI">AIPANAHALLI</option>
                            <option value="AKKIHEBBAL">AKKIHEBBAL</option>
                             <option value="ALAMBADI">ALAMBADI</option>
                            <option value="ALENAHALLI">ALENAHALLI</option>
                            
                            <option value="AGASARAHALLI">AGASARAHALLI</option>
                            <option value="AICHANAHALLI">AICHANAHALLI</option>
                             <option value="ARALAKUPPE">ARALAKUPPE</option>
                            <option value="ATTUPPE">ATTUPPE</option>
                            
                            
                             <option value="ALANSHETTIHALLI">ALANSHETTIHALLI</option>
                            <option value="ANKANATHAPURA">ANKANATHAPURA</option>
                             <option value="ATAGURU">ATAGURU</option>
                            <option value="BYALADAKERE">BYALADAKERE</option>
                            
                            <option value="BEKKALALE">BEKKALALE</option>
                            <option value="BOLARE">BOLARE</option>
                             <option value="HOSAGALI">HOSAGALI</option>
                            <option value="KIRANGURU">KIRANGURU</option>
                             <!-- Mysore   -->
                            <!-- Mysore(kasaba)  -->
						<option value="Bogadi">Bogadi</option>
						<option value="Goruru">Goruru</option>
						<option value="Kesare">Kesare</option>
						<option value="Satagalli">Satagalli</option>
						
						<!-- Mysore(varuna)  -->
						<option value="Dandikere">Dandikere</option>
						<option value="Hongate">Hongate</option>
						<option value="Marashe">Marashe</option>
						<option value="Yadakola">Yadakola</option>
						
						<!-- Antarasante -->
						<option value="Anagatti">Anagatti</option>
						<option value="Anemala">Anemala</option>
						<option value="Hosuru">Hosuru</option>
						<option value="Jiyara">Jiyara</option>
						
						<!-- Hampapura -->
						<option value="Bettahalli">Bettahalli</option>
						<option value="Devalapura">Devalapura</option>
						<option value="Karigala">Karigala</option>
						<option value="Pura">Pura</option>
						
						<!-- Bilikere -->
						<option value="Asvalu">Asvalu</option>
						<option value="Dallalu">Dallalu</option>
						<option value="Tippuru">Tippuru</option>
						<option value="Mudlapura">Mudlapura</option>
						
						<!-- Gavadagere -->
						<option value="Agrahara">Agrahara</option>
						<option value="Attiguppe">Attiguppe</option>
						<option value="Belatturu">Belatturu</option>
						<option value="Harave">Harave</option>
						
						<!-- Chikkayyanachatra -->
						<option value="Adakanahalli">Adakanahalli</option>
						<option value="Alatturu">Alatturu</option>
						<option value="Basavanapura">Basavanapura</option>
						<option value="Bidaragudu">Bidaragudu</option>
						
						<!-- Hullahalli -->
						<option value="Akala">Akala</option>
						<option value="Amakalli">Amakalli</option>
						<option value="Ambale">Ambale</option>
						<option value="Ariyuru">Ariyuru</option>
                            
                          <option value="AMRUTA">AMRUTA</option>
                            <option value="ANEGADDA">ANEGADDA</option>
                             <option value="BILLODI">BILLODI</option>
                            <option value="BORIKOPPA">BORIKOPPA</option>
                            
                            
                             <option value="ANDAGADUDURU">ANDAGADUDURU</option>
                            <option value="BAISE">BAISE</option>
                             <option value="KABALE">KABALE</option>
                            <option value="KADIGERI">KADIGERI</option>
                            
                            <option value="AGALABAGILU">AGALABAGILU</option>
                            <option value="AGASADI">AGASADI</option>
                             <option value="ALURU">ALURU</option>
                            <option value="ARALASURALI">ARALASURALI</option>
                            
                             <option value="AREHALLI">AREHALLI</option>
                            <option value="BALEHALLI">BALEHALLI</option>
                             <option value="CHAKKODABILU">CHAKKODABILU</option>
                            <option value="CHANGARA">CHANGARA</option>
                            
                            <option value="ACHAPURA">ACHAPURA</option>
                            <option value="ADURU">ADURU</option>
                             <option value="ATAVDI">ATAVDI</option>
                            <option value="BALLIBYELU">BALLIBYELU</option>
                            
                            <option value="AMBARAGODLU">AMBARAGODLU</option>
                            <option value="ARALEEKOPPA">ARALEEKOPPA</option>
                             <option value="BESURU">BESURU</option>
                            <option value="DEVASA">DEVASA</option>
                            
                             <option value="ARETALAGADDE">ARETALAGADDE</option>
                            <option value="BANKSANA">BANKSANA</option>
                             <option value="BANKAVALLI">BANKAVALLI</option>
                            <option value="BILAGALI">BILAGALI</option>
                            
                             <option value="AVALAGODU">AVALAGODU</option>
                            <option value="BALAGODU">BALAGODU</option>
                             <option value="BARIGE">BARIGE</option>
                            <option value="BHADRAPURA">BHADRAPURA</option>  
                            
                            
	 					 	</select>
 					 	</fieldset> 
		 			</div> 
		 			<br>
		 			<button type="submit" class="btn btn-primary">save</button>
</div>
		 		 
		 			
		 			

		 			
		 			 
		 		 

		 		 

		 		 
			</form>
			<br>
			 
			
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.5.0/dist/js/bootstrap.min.js"></script>

 
 
 
  


</body>
 </html>