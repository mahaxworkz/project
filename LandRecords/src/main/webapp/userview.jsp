<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style type="text/css">
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, dl, dt, dd, ol, nav ul, nav li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video {
  margin: 0;
  padding: 0;
  border: 0;
  font-size: 100%;
  font: inherit;
  vertical-align: baseline;
}

article, aside, details, figcaption, figure, footer, header, hgroup, menu, nav, section {
  display: block;
}

ol, ul {
  list-style: none;
  margin: 0px;
  padding: 0px;
}

blockquote, q {
  quotes: none;
}

blockquote:before, blockquote:after, q:before, q:after {
  content: '';
  content: none;
}

table {
  border-collapse: collapse;
  border-spacing: 0;
}

/*-- start editing from here --*/
a {
  text-decoration: none;
}

.txt-rt {
  text-align: right;
}

/* text align right */
.txt-lt {
  text-align: left;
}

/* text align left */
.txt-center {
  text-align: center;
}

/* text align center */
.float-rt {
  float: right;
}

/* float right */
.float-lt {
  float: left;
}

/* float left */
.clear {
  clear: both;
}

/* clear float */
.pos-relative {
  position: relative;
}

/* Position Relative */
.pos-absolute {
  position: absolute;
}

/* Position Absolute */
.vertical-base {
  vertical-align: baseline;
}

/* vertical align baseline */
.vertical-top {
  vertical-align: top;
}

/* vertical align top */
nav.vertical ul li {
  display: block;
}

/* vertical menu */
nav.horizontal ul li {
  display: inline-block;
}

/* horizontal menu */
img {
  max-width: 100%;
}

/*-- end reset --*/
body {
  background: #54caeb;
  /* fallback for old browsers */
  background: -webkit-linear-gradient(to top, #54caeb, #54caeb);
  background: -moz-linear-gradient(to top, #54caeb, #54caeb);
  background: -o-linear-gradient(to top, #54caeb, #54caeb);
  background: linear-gradient(to top, #6edbd0, #147c9c);
  background-size: cover;
  background-attachment: fixed;
  font-family: 'Roboto', sans-serif;
}

h1 {
  font-size: 3em;
  text-align: center;
  color: #fff;
  font-weight: 100;
  text-transform: capitalize;
  letter-spacing: 4px;
  font-family: 'Roboto', sans-serif;
}

  
 
 

  

@-webkit-keyframes square {
  0% {
    -webkit-transform: translateY(0);
    -moz-transform: translateY(0);
    -o-transform: translateY(0);
    -ms-transform: translateY(0);
    transform: translateY(0);
  }

  100% {
    -webkit-transform: translateY(-700px) rotate(600deg);
    -moz-transform: translateY(-700px) rotate(600deg);
    -o-transform: translateY(-700px) rotate(600deg);
    -ms-transform: translateY(-700px) rotate(600deg);
    transform: translateY(-700px) rotate(600deg);
  }
}

@keyframes square {
  0% {
    -webkit-transform: translateY(0);
    -moz-transform: translateY(0);
    -o-transform: translateY(0);
    -ms-transform: translateY(0);
    transform: translateY(0);
  }

  100% {
    -webkit-transform: translateY(-700px) rotate(600deg);
    -moz-transform: translateY(-700px) rotate(600deg);
    -o-transform: translateY(-700px) rotate(600deg);
    -ms-transform: translateY(-700px) rotate(600deg);
    transform: translateY(-700px) rotate(600deg);
  }
}

/*-- responsive-design --*/
@media(max-width:1440px) {
  input[type="text"], input[type="email"], input[type="password"] {
    width: 94%;
  }
}

@media(max-width:1366px) {
  h1 {
    font-size: 2.6em;
  }

  .agileits-top {
    padding: 2.5em;
  }

  .main-agileinfo {
    margin: 2em auto;
  }

  .main-agileinfo {
    width: 36%;
  }
}

@media(max-width:1280px) {
  .main-agileinfo {
    width: 40%;
  }
}

@media(max-width:1080px) {
  .main-agileinfo {
    width: 46%;
  }
}

@media(max-width:1024px) {
  .main-agileinfo {
    width: 49%;
  }
}

@media(max-width:991px) {
  h1 {
    font-size: 2.4em;
  }

  .main-w3layouts {
    padding: 2em 0 1em;
  }
}

@media(max-width:900px) {
  .main-agileinfo {
    width: 58%;
  }

  input[type="text"], input[type="email"], input[type="password"] {
    width: 93%;
  }
}

@media(max-width:800px) {
  h1 {
    font-size: 2.2em;
  }
}

@media(max-width:736px) {
  .main-agileinfo {
    width: 62%;
  }
}

@media(max-width:667px) {
  .main-agileinfo {
    width: 67%;
  }
}

@media(max-width:600px) {
  .agileits-top {
    padding: 2.2em;
  }

  input.email,input.number, input.text.w3lpass {
    margin: 1.5em 0;
  }

  input[type="submit"] {
    margin: 2em 0;
  }

  h1 {
    font-size: 2em;
    letter-spacing: 3px;
  }
}

@media(max-width:568px) {
  .main-agileinfo {
    width: 75%;
  }

  .colorlibcopy-agile p {
    padding: 0 2em;
  }
}

@media(max-width:480px) {
  h1 {
    font-size: 1.8em;
    letter-spacing: 3px;
  }

  .agileits-top {
    padding: 1.8em;
  }

  input[type="text"], input[type="email"], input[type="password"] ,input[type="number"]{
    width: 91%;
  }

  .agileits-top p {
    font-size: 0.9em;
  }
}

@media(max-width:414px) {
  h1 {
    font-size: 1.8em;
    letter-spacing: 2px;
  }

  .main-agileinfo {
    width: 85%;
    margin: 1.5em auto;
  }

  .text:focus, .text:valid {
    background-position: 0 0px;
  }

  .wthree-text ul li, .wthree-text ul li:nth-child(2) {
    display: block;
    float: none;
  }

  .wthree-text ul li:nth-child(2) {
    margin-top: 1.5em;
  }

  input[type="submit"] {
    margin: 2em 0 1.5em;
    letter-spacing: 3px;
  }

  input[type="submit"] {
    margin: 2em 0 1.5em;
  }

  .colorlibcopy-agile {
    margin: 1em 0 1em;
  }
}

@media(max-width:384px) {
  .main-agileinfo {
    width: 88%;
  }

  .colorlibcopy-agile p {
    padding: 0 1em;
  }
}

@media(max-width:375px) {
  .agileits-top p {
    letter-spacing: 0px;
  }
}

@media(max-width:320px) {
  .main-w3layouts {
    padding: 1.5em 0 0;
  }

  .agileits-top {
    padding: 1.2em;
  }

  .colorlibcopy-agile {
    margin: 0 0 1em;
  }

  input[type="text"], input[type="email"], input[type="password"],input[type="number"]{
    width: 89.5%;
    font-size: 0.85em;
  }

  h1 {
    font-size: 1.7em;
    letter-spacing: 0px;
  }

  .main-agileinfo {
    width: 92%;
    margin: 1em auto;
  }

  .text:focus, .text:valid {
    background-position: 0 0px;
  }

  input[type="submit"] {
    margin: 1.5em 0;
    padding: 0.8em;
    font-size: .85em;
  }

  .colorlibcopy-agile p {
    font-size: .85em;
  }

  .wthree-text label {
    font-size: 0.85em;
  }

  .main-w3layouts {
    padding: 1em 0 0;
  }
}

</style>
 
 
 
 
 <script type="text/javascript">

function populateDropdowns() {
	var selectedState = document.getElementById("state");
    var districtDropdown = document.getElementById("district");
    var talukDropdown = document.getElementById("taluk"); // Fix this line
    var hobliDropdown = document.getElementById("hobli");
    var villageDropdown = document.getElementById("village");

  
	
    if (selectedState === "KARNATAKA") {
        populateDropdown(districtDropdown, [
            "--Select District--",
            "BELGAUM",
            "MYSORE",
            "SHIVAMOGGA",
            "PANDAVAPURA",
            
            
        ]);
    }
	
    
    document.getElementById("district").addEventListener("change", function() {
        var selectedDistrict = this.value;
        var talukDropdown = document.getElementById("taluk");
        talukDropdown.innerHTML = ""; // Clear existing options 
        
        if (selectedDistrict === "SHIVAMOGGA") {
           
            populateDropdown(talukDropdown, [
                "--SELECT TALHUK--",
                "HOSANAGARA",
                "SAGARA",
                "SORABA",
                "THIRTHAHALLI"
                
            ]);

            
            
        } else if (selectedDistrict === "MANDYA") {
            populateDropdown(talukDropdown, [
                "--SELECT TALHUK--",
                "KRPET",
                "MADDUR",
                "NAGAMANGALA",
                "PANDAVAPURA"
                
            ]);
           
        }

        else if (selectedDistrict === "MYSORE") {
            populateDropdown(talukDropdown, [
                "--SELECT TALHUK--",
                "HEGGADADEVANAKOTE",
                "HUNSUR",
                "MYSORE",
                "NANJANGUD"
                
                
            ]);
            
        }


        else if (selectedDistrict === "BELGAUM") {
            populateDropdown(talukDropdown, [
                "--SELECT TALHUK--",
                "GOKAK",
                "KHANAPUR",
                "RAIBAG",
                "RAMDURG"
               
               
                
                
            ]);
            
        }
    });

    document.getElementById("taluk").addEventListener("change", function() {
    var selectedTaluk  = this.value;
    var hobliDropdown = document.getElementById("hobli");
    hobliDropdown.innerHTML =" ";
      
    if (selectedTaluk === "HOSANAGARA") {
        populateDropdown(hobliDropdown, [
            "--SELECT HOBLI--",
            "HUNCHA",
            "NAGARA"
        ]);
       
    } else if (selectedTaluk === "THIRTHAHALLI") {
        populateDropdown(hobliDropdown, [
            "--SELECT HOBLI--",
            "AGRAHARA",
            "AGUMBE"
        ]);
    } else if (selectedTaluk === "SAGARA") {
        populateDropdown(hobliDropdown, [
            "--SELECT HOBLI--",
            "ANANDAPURA",
            "AVINAHALLI"
        ]);
    } else if (selectedTaluk === "SORABA") {
        populateDropdown(hobliDropdown, [
            "--SELECT HOBLI--",
            "JADE",
            "ULAVI"
        ]);
    }

    else if (selectedTaluk === "KRPET") {
        populateDropdown(hobliDropdown, [
            "--SELECT HOBLI--",
            "AKKIHEBBAL",
            "BUKINAKERE"
        ]);  
    }else if (selectedTaluk === "MADDUR") {
        populateDropdown(hobliDropdown, [
            "--SELECT HOBLI--",
            "ATAGURU HOBLI",
            "KOPPA HOBALI"
        ]);  
    }else if (selectedTaluk === "PANDAVAPURA") {
        populateDropdown(hobliDropdown, [
            "--SELECT HOBLI--",
          
            "CHINAKURALI",
            "MELUKOTE"
             
        ]);  
    }else if (selectedTaluk === "NAGAMANGALA") {
        populateDropdown(hobliDropdown, [
            "--SELECT HOBLI--",
             
            "BELLURU",
            "BINDIGANAVILLE"
            
            
        ]);  
    }else if (selectedTaluk === "MYSORE") {
        populateDropdown(hobliDropdown, [
            "--SELECT HOBLI--",
            "KASABA",
            "VARUNA",
           
          
        ]);  
    }else if (selectedTaluk ===  "HEGGADADEVANAKOTE") {
        populateDropdown(hobliDropdown, [
            "--SELECT HOBLI--",
            "ANTARASANTE",
            "HAMPAPURA"
        ]);  
    }else if (selectedTaluk === "HUNSUR") {
        populateDropdown(hobliDropdown, [
            "--SELECT HOBLI--",
            "BILIKERE",
            "GAVADAGERE",
           
        ]);  
    }else if (selectedTaluk === "NANJANGUD") {
        populateDropdown(hobliDropdown, [
            "--SELECT HOBLI--",
            "CHIKKAYYANACHATRA",
            "HULLAHALLI"
        ]);  
    }else if (selectedTaluk === "RAIBAG") {
        populateDropdown(hobliDropdown, [
            "--SELECT HOBLI--",
            "KUDACHI",
            "RAYBAGA"
        ]);  
    }else if (selectedTaluk === "GOKAK") {
        populateDropdown(hobliDropdown, [
            "--SELECT HOBLI--",
            "GOKAK",
            "KOWJALAGI"
        ]);  
    }else if (selectedTaluk === "RAMDURG") {
        populateDropdown(hobliDropdown, [
            "--SELECT HOBLI--",
            "K CHANDARAGI",
            "KATAKOLA",
           
            
        ]);  
    }else if (selectedTaluk === "KHANAPUR") {
        populateDropdown(hobliDropdown, [
            "--SELECT HOBLI--",
            "BEEDI",
			"GUNJI"
        ]);  
    }
 
});


document.getElementById("hobli").addEventListener("change", function() {
    var selectedHobli  = this.value;
    var villageDropdown = document.getElementById("village");
    villageDropdown.innerHTML = ""; // Clear existing options

     if (selectedHobli === "HUNCHA") {
        populateDropdown(villageDropdown, [
            "--SELECT VILLAGE--",
            "AMRUTA",
            "ANEGADDE",
            "BILLODI",
            "BORIKOPPA"
           
            
            
        ]);  
    } else if (selectedHobli === "NAGARA") {
        populateDropdown(villageDropdown, [
            "--SELECT VILLAGE--",
           "ANDAGADUDURU",
           "BAISE",
           "KABALE",
           "KADIGERI"
        ]);  
    }else if (selectedHobli === "AGRAHARA") {
        populateDropdown(villageDropdown, [
            "--SELECT VILLAGE--",
            "AGALABAGILU",
             "AGASADI",
             "ALURU",
            "ARALASURALI"
        ]);  
    }else if (selectedHobli === "AGUMBE") {
        populateDropdown(villageDropdown, [
            "--SELECT VILLAGE--",
            "AREHALLI",
            "BALEHALLI",
            "CHAKKODABILU",
            "CHANGARA"
        ]);  
    }else if (selectedHobli === "ANANDAPURA") {
        populateDropdown(villageDropdown, [
            "--SELECT VILLAGE--",
           "ACHAPURA",
             "ADURU",
            "ATAVDI",
           "BALLIBYELU"
        ]);  
    }else if (selectedHobli === "AVINAHALLI") {
        populateDropdown(villageDropdown, [
            "--SELECT VILLAGE--",
           "AMBARAGODLU",
          "ARALEEKOPPA",
             "BESURU",
             "DEVASA"
        ]);  
    }else if (selectedHobli === "JADE") {
        populateDropdown(villageDropdown, [
            "--SELECT VILLAGE--",
           "ARETALAGADDE",
            "BANKSANA",
            "BANKAVALLI",
             "BILAGALI"
        ]);  
    }else if (selectedHobli === "ULAVI") {
        populateDropdown(villageDropdown, [
            "--SELECT VILLAGE--",
           "AVALAGODU",
           "BALAGODU",
           "BARIGE",
           "BHADRAPURA",
          
        ]);  
    }else if (selectedHobli === "AKKIHEBBAL") {
        populateDropdown(villageDropdown, [
            "--SELECT VILLAGE--",
            "AIPANAHALLI",
             "AKKIHEBBAL",
              "ALAMBADI",
              "ALENAHALLI"
                            
        ]);  
    }else if (selectedHobli === "BUKINAKERE") {
        populateDropdown(villageDropdown, [
            "--SELECT VILLAGE--",
            "AGASARAHALLI",
            "AICHANAHALLI",
             "ARALAKUPPE",
            "ATTUPPE"
                            
                            
        ]);  
    }else if (selectedHobli === "ATAGURU HOBLI") {
        populateDropdown(villageDropdown, [
            "--SELECT VILLAGE--",
          "ALANSHETTIHALLI",
          "ANKANATHAPURA" , 
           "ATAGURU",
        "BYALADAKERE"
                            
                            
        ]);  
    }else if (selectedHobli === "KOPPA HOBALI") {
        populateDropdown(villageDropdown, [
            "--SELECT VILLAGE--",
            "BEKKALALE",
             "BOLARE",
            "HOSAGALI",
           "KIRANGURU"
                            
                            
        ]);  
    }else if (selectedHobli === "BELLURU") {
        populateDropdown(villageDropdown, [
            "--SELECT VILLAGE--",
                "ADAKATAHALLI",  
                "AGACHAHALLI",
               "AMBALAJEERAHALLI",
                "ANAKANAHALLI"
                            
                            
        ]);  
    }else if (selectedHobli === "BINDIGANAVILLE") {
        populateDropdown(villageDropdown, [
            "--SELECT VILLAGE--",
            "A CHENNAPURA",
            "A NAGATTIHALLI",
            "ADDIHALLI",
            "ALEESANDRA",
           
           
           
                            
        ]);  
    }else if (selectedHobli === "CHINAKURALI") {
        populateDropdown(villageDropdown, [
            "--SELECT VILLAGE--",
            "ALPHALLI",
           "ANTANAHALLI",
            "ARALAKUPPE",
            "ARALAKUPPENALA"
                                   
                            
        ]);  
    }else if (selectedHobli === "MELUKOTE") {
        populateDropdown(villageDropdown, [
            "--SELECT VILLAGE--",
            "AMRUTHI",
            "ANUNAHALLI",
            "ANUVALLU",        
            "ARAKANAKERE"
                                   
                            
        ]);  
    }else if (selectedHobli === "KASABA") {
        populateDropdown(villageDropdown, [
            "--SELECT VILLAGE--",
            "BOGADI",
		    "GORURU",
		     "KESARE",
			"SATAGALLI"         
                            
        ]);  
    }else if (selectedHobli === "VARUNA") {
        populateDropdown(villageDropdown, [
            "--SELECT VILLAGE--",
           "DANDIKERE",
			"HONGATE",
			"MARASHE",
			"YADAKOLA"
						 
                            
        ]);  
    }else if (selectedHobli === "ANTARASANTE") {
        populateDropdown(villageDropdown, [
            "--SELECT VILLAGE--",
           "ANAGATTI",
			"ANEMALA",
			"HOSURU",
			"JIYARA",
						
                            
        ]);  
    }else if (selectedHobli === "HAMPAPURA") {
        populateDropdown(villageDropdown, [
            "--SELECT VILLAGE--",
            "BETTAHALLI",
			"DEVALAPURA",
			"KARIGALA",
			 "PURA",
             		
                            
        ]);  
    }else if (selectedHobli === "BILIKERE") {
        populateDropdown(villageDropdown, [
            "--SELECT VILLAGE--",
            "ASVALU",
			"DALLALU",
            "MADLAPURA",
			"TIPPURU",
			
						
                            
        ]);  
    }else if (selectedHobli === "GAVADAGERE") {
        populateDropdown(villageDropdown, [
            "--SELECT VILLAGE--",
            "AGRAHARA",
			"ATTIGUPPE",
			"BELATTURU",
			"HARAVE",
						
                            
        ]);  
    }else if (selectedHobli === "CHIKKAYYANACHATRA") {
        populateDropdown(villageDropdown, [
            "--SELECT VILLAGE--",
          "ADAKANANAHALLI",
			"ALATTURU",
			"BASAVANAPURA",
			"BIDARAGUDU"

        ]);  
    }else if (selectedHobli === "HULLAHALLI") {
        populateDropdown(villageDropdown, [
            "--SELECT VILLAGE--",
             "AKALA",
			 "AMAKALLI",
			 "AMBALE",
			 "ARIYURU"

        ]);  
    }else if (selectedHobli === "KUDACHI") {
        populateDropdown(villageDropdown, [
            "--SELECT VILLAGE--",
            "KUDACHI",
           
            "MORABA",
            "MUGALAKHODA",
			"NEELAJI",
			
		   
        ]);  
    }else if (selectedHobli === "RAYBAGA") {
        populateDropdown(villageDropdown, [
            "--SELECT VILLAGE--",
             "BAVACHI",
		     "CHINCHALI",
		    "DEVANAKATTI",
		      "JODATTI"
        ]);  
    }else if (selectedHobli === "GOKAK") {
        populateDropdown(villageDropdown, [
            "--SELECT VILLAGE--",
            "BALOBAL",
			"BUDIHALA",
			"DANDAPUR",
			"GOKAKA"

        ]);  
    }else if (selectedHobli === "KOWJALAGI") {
        populateDropdown(villageDropdown, [
            "--SELECT VILLAGE--",
                "ADIBATTI",
				"BETAGERI",
				"KANDRATTI",
				"MANNIKERI"

        ]);  
    }else if (selectedHobli === "K CHANDARAGI") {
        populateDropdown(villageDropdown, [
            "--SELECT VILLAGE--",
           "BEEDAKI",
		   "BHAGOJIKOPPA",
			"BIJAGUPI",
			"BUDANURA"
        ]);  
    }else if (selectedHobli === "KATAKOLA") {
        populateDropdown(villageDropdown, [
            "--SELECT VILLAGE--",
            "ARIBENCHI",
			"BANNURA",
			"BOCHABALA",
			"CHILAMURA"
						
        ]);  
    }else if (selectedHobli === "BEEDI") {
        populateDropdown(villageDropdown, [
            "--SELECT VILLAGE--",
           "ADI",
			"BALAGUNDA",
			"BEEDI",
			"BHURANAKI"
						
						
        ]);  
    }else if (selectedHobli === "GUNJI") {
        populateDropdown(villageDropdown, [
            "--SELECT VILLAGE--",
          "ABANALLE",
		  "AKRALLI",
		  "AMBEVADI",
		  "ANAGADI",
						
						
        ]);  
    }


});

function populateDropdown(dropdown, options) {
    for (var i = 0; i < options.length; i++) {
        var option = document.createElement("option");
        option.value = options[i];
        option.text = options[i];
        dropdown.appendChild(option);
    }
}


}
 </script>
  
</head>
<body>
 
<nav class="navbar navbar-expand-lg navbar-dark " style="background-color:#3e4f4c;">
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
			<h1 align="center" style="color: white;">Land Records</h1> 
			<br> <br><br> <br>
			<form   class="search" action="User" method="post">
		 		   <div  class="form-row">
		 			<div class="col-2"> 
		 				 
	 						<label    class="form-lbl">State</label> 
	 					 	<select    class="form-control" id="state" name="state"  onchange="populateDropdowns()" required>
                            <option value="">SELECT A STATE</option>
                            <option value="KARNATAKA">KARNATAKA</option>
	 					 		 
	 					 	</select>
 					 	 
		 			</div> 
		 			<div class="col-2"> 
		 				 
	 						<label for="district"    class="form-lbl">District</label> 
	 					 	<select  id="district" class="form-control" name="district"  required  >
	 					 		 
	 					 		 <option value="">SELECT A DISTRICT</option>
	 					 	     	<option value="SHIVAMOGGA">SHIVAMOGGA</option>
                           <option value="MANDYA">MANDYA</option>
                            <option value="MYSORE">MYSORE</option>
                           <option value="BELGAUM">BELGAUM</option>
                          
	 					 	</select>
 					 	 
		 			</div> 
		 			<div class="col-2"> 
		 				 
	 						<label  for="taluk"    class="form-lbl">Taluk</label> 
	 					 	<select id="taluk" class="form-control" name="taluk" required>
	 					 		 <option value="">SELECT A TALUK</option>
	 				  	 	 	<option value="HOSANAGARA">HOSANAGARA</option>
                            <option value="THIRTHAHALLI">THIRTHAHALLI</option>
                            <option value="SAGARA">SAGARA</option>
                            <option value="SORABA">SORABA</option>
                            
                            
                               
                               <option value="KRPET">KRPET</option>
                              <option value="MADDUR">MADDUR</option>
                               <option value="PANDAVAPURA">PANDAVAPURA</option>
                               <option value="NAGAMANGALA">NAGAMANGALA</option>
                               
                               
                              <option value="mysore">MYSORE</option>
						     <option value="HeggadaDevanakote">HEGGADADEVANAKOTE</option>
					      	 <option value="Hunsur">HUNSUR</option>
						    <option value="Nanjangud">NANJANGUD</option>
						    
						    
						    <option value="Raibag">RAIBAG</option>
						<option value="gokak">GOKAK</option>
						<option value="ramdurg">RAMDURG</option>
						<option value="khanapur">KHANAPUR</option>
                            
	 					 		
	 					 		  
	 					 		
	 					 	</select>
 					 	  
		 			</div> 
		 			 
           <div class="col-2"> 
		 				 
	 						<label class="form-lbl" for="hobli"> Hobli</label> 
	 					 	<select class="form-control" name="hobli" id="hobli" required>
	 					 		<option value="">Select a HOBLI</option>
	 					 		<option value="HUNCHA">HUNCHA</option>
                            <option value="NAGARA">NAGARA</option>
                            
                            <option value="AGRAHARA">AGRAHARA</option>
                            <option value="AGUMBE">AGUMBE</option>
                            
                            
                            <option value="ANANDAPURA">ANANDAPURA</option>
                            <option value="AVINAHALLI">AVINAHALLI</option>
                            
                            <option value="JADE">JADE</option>
                            <option value="ULAVI">ULAVI</option>
                            
                            
                           <!-- MANDYA:KRPET AND MADDUR  -->
                           
                            <option value="AKKIHEBBAL">AKKIHEBBAL</option>
                             <option value="BUKINAKERE">BUKINAKERE</option>
                               
                             <option value="ATAGURU HOBLI">ATAGURU HOBLI</option>
                            <option value="KOPPA HOBALI">KOPPA HOBALI</option>
                            
                            
                            <!-- mandya:nagamangala -->
                       <option value="Belluru">BELLURU</option>
                       <option value="Bindiganaville">BINDIGANAVILLE</option>
                  <!-- mandya:pandavapura-->
                     <option value="chinakurali">CHINAKURALI</option>
                      <option value="melukote">MELUKOTE</option>
                      
                      <!-- Mysuru -->
                      <option value="Kasaba">KASABA</option>
						<option value="Varuna">VARUNA</option>
						
						<!-- Heggada Devana kote -->
						<option value="Antarasante">ANTARASANTE</option>
						<option value="Hampapura">HAMPAPURA</option>
						
						<!-- Hunsur -->
						<option value="Bilikere">BILIKERE</option>
						<option value="Gavadagere">GAVADAGERE</option>
						
						<!-- Nanjangud -->
						<option value="Chikkayyanachatra">CHIKKAYYANACHATRA</option>
						<option value="Hullahalli">HULLAHALLI</option>
						
						
						<option value="kudachi">KUDACHI</option>
						<option value="raybaga">RAYBAG</option>

						<option value="gokak">GOKAK</option>
						<option value="kowjalagi">KOWJALAGI</option>

						<option value="K Chandaragi">K CHANDARAGI</option>
						<option value="katakola">KATAKOLA</option>

						<option value="Beedi">BEEDI</option>
						<option value="Gunji">GUNJI</option>
                            
                  
	 					 	</select>
 					 	  
		 			</div> 
		 			<div class="col-2"> 
		 				 
	 						<label class="form-lbl" for="village">Village</label> 
	 					 	<select class="form-control select2" name="village" id="village" required>
	 					 		<option selected>Open this select menu</option>
	 					 		   <option value="">SELECT A VILLAGE</option>
                            <option value="AMRUTA">AMRUTA</option>
                            <option value="ANEGADDE">ANEGADDE</option>
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
                            
                            <!-- MANDTA -->
                            
                            
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
                            
                            
                             <option value="Adakatahalli">ADAKATAHALLI</option>
                                   <option value="Agachahalli"> ADACHAHALLI</option>
                                   <option value="Ambalajeerahalli"> AMBALAJEERAHALLI</option>
                                   <option value="Anakanahalli">AMAKANAHALLI</option>
                                     <!-- mandya :Bindiganaville -->
                                     <option value="A Chennapura">A CHENNAPURA</option>
                                   <option value="A Nagattihalli">A NAGATTIHALLI</option>
                                   <option value="Addihalli">ADDIHALLI</option>
                                   <option value="Aleesandra"> ALEESANDRA</option>
                                   
                                   <!-- mandya :chinakurali -->
                                   <option value="Alpahalli">ALPAHALLI</option>
                                   <option value="Antanahalli"> ANTANAHALLI</option>
                                   <option value="Aralakuppe">ARALAKUPPE</option>
                                   <option value="Aralakuppenala">ARALAKUPPENALA</option>
                                   
                                   <!-- mandya :mekote -->
                                   <option value="Amruthi"> AMRUTHI</option>
                                   <option value="Anunahalli">  ANUNAHALLI</option>
                                   <option value="anuvallu">ANUVALLU</option>
                                   <option value="Arakanakere">ARAKANAKERE</option>
                                   
                                   
                                   <!-- Mysore(kasaba)  -->
						<option value="Bogadi">BOGADI</option>
						<option value="Goruru">GORURU</option>
						<option value="Kesare">KESARE</option>
						<option value="Satagalli">SATAGALLI</option>
						
						<!-- Mysore(varuna)  -->
						<option value="Dandikere">DANDIKERE</option>
						<option value="Hongate">HONGATE</option>
						<option value="Marashe">MARASHE</option>
						<option value="Yadakola">YADAKOLA</option>
						
						<!-- Antarasante -->
						<option value="Anagatti">ANAGATTI</option>
						<option value="Anemala">ANEMALA</option>
						<option value="Hosuru">HOSURU</option>
						<option value="Jiyara">JIYARA</option>
						
						<!-- Hampapura -->
						<option value="Bettahalli">BETTAHALLI</option>
						<option value="Devalapura">DEVALAPURA</option>
						<option value="Karigala">KARIGALA</option>
						<option value="Pura">PURA</option>
						
						<!-- Bilikere -->
						<option value="Asvalu">ASVALU</option>
						<option value="Dallalu">DALLALU</option>
						<option value="Tippuru">TIPPURU</option>
						<option value="Mudlapura">MUDLAPURA</option>
						
						<!-- Gavadagere -->
						<option value="Agrahara">AGRAHARA</option>
						<option value="Attiguppe">ATTIGUPPE</option>
						<option value="Belatturu">BELATTURU</option>
						<option value="Harave">HARAVE</option>
						
						<!-- Chikkayyanachatra -->
						<option value="Adakanahalli">ADAKANAHALLI</option>
						<option value="Alatturu">ALATTURU</option>
						<option value="Basavanapura">BASAVANAPURA</option>
						<option value="Bidaragudu">BIDARAGUDU</option>
						
						<!-- Hullahalli -->
						<option value="Akala">AKALA</option>
						<option value="Amakalli">AMAKALLI</option>
						<option value="Ambale">AMBALE</option>
						<option value="Ariyuru">ARIYURU</option>
						
						
						
						<option value="mugalakhoda">MUGALAKHODA</option>
						<option value="neelaji">NEELAJI</option>
						<option value="moraba">MORABA</option>
						<option value="kudachi">KUDACHI</option>
						
						<!-- raybaga  -->
						<option value="bavachi">BAVACHI</option>
						<option value="chinchali">CHINCHALI</option>
						<option value="devanakatti">DEVANAKATTI</option>
						<option value="jodatti">JODATTI</option>

						<!-- gokak  -->
						<option value="balobal">BALOBAL</option>
						<option value="budihala">BUDIHALA</option>
						<option value="dandapur">DANDAPUR</option>
						<option value="gokaka">GOKAKA</option>

						<!-- kowjalagi -->
						<option value="adibatti">ADIBATTI</option>
						<option value="betageri">BETAGERI</option>
						<option value="kandrattti">KANDRATTI</option>
						<option value="mannikeri">MANNIKERI</option>
						<!-- K Chandaragi -->

						<option value="beedaki">BEEDAKI</option>
						<option value="bhagojikoppa">BHAGOJIKOPPA</option>
						<option value="bijagupi">BIJAGUPI</option>
						<option value="budanura">BUDANURA</option>
						
						<!-- katakola -->
						<option value="Aribenchi">ARIBENCHI</option>
						<option value="bannura">BANNURA</option>
						<option value="bochabala">BOCHABALA</option>
						<option value="CHILAMURA">CHILAMURA</option>
						
						<!-- beedi -->
						<option value="adi">ADI</option>
						<option value="balagunda">BALAGUNDA</option>
						<option value="beedi">BEEDI</option>
						<option value="bhuranaki">BHURANAKI</option>
						
						<!-- Gunji -->
						<option value="Abanalle">ABANALLE</option>
						<option value="Akralli">AKRALLI</option>
						<option value="Ambevadi">AMBEVADI</option>
						<option value="Anagadi">ANAGADI</option>
                            
	 					 	</select>
 					 	 
		 			</div>
		 			 <div class="form-outline mb-3">
		 			 
		 			  <label    class="form-lbl" > .</label> 
		 			 <button type="submit" class="btn btn-primary form-control"   >GO</button>
		 			 </div>
		 			</div> 
		 			 
		 			 
</div>
<br>
</form>
		 		  
		<form  id="myForm" action="viewCard" method="post"  >
		 	
		 	<div  class="row"  >
		 		 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 		 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 		 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 		 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 		 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 		  &nbsp;&nbsp;&nbsp;&nbsp;
		 		   &nbsp;&nbsp; 
		 		 
		 		 
		 		 
		 		 	<div class="col-2" style="width:190px" > 
		 				 
	 						<label    class="form-lbl" >Survey Number</label> 
	 					 	<select    class="form-control" id="surveyNumber" name="surveyNumber"  >
                            <option value="" >SELECT A SURVEY NUMBER</option>
                             <c:forEach var="list" items="${read}">
                            <option value="${list.surveyNumber}"> ${list.surveyNumber}</option>
                             </c:forEach>
	 					 		 
	 					 	</select>
 					 	 
		 			</div> 
		 			<div class="col-2"> 
		 				 
	 						<label for="district"    class="form-lbl">Hissa Number</label> 
	 					 	<select  id="hissaNumber" class="form-control" name="hissaNumber"     >
	 					 		 
	 					 		 <option value="">SELECT A HISSA NUMBER</option>
	 					 		 <c:forEach var="list" items="${read}">
	 					 	     	<option value="${list.hissaNumber}">${list.hissaNumber} </option>
                            </c:forEach>
                          
	 					 	</select>
 					 	 
		 			</div> 
		 			 <div class="form-outline mb-3">
		 			 
		 			  <label    class="form-lbl" > .</label> 
		 			 <button type="submit" class="btn btn-primary form-control"    >GO</button>
		 			 </div>
		 			 <br>
		 			  
		 				 </div>
		 			 
			</form>
			<br><br>
			<center>  <div class="form-outline mb-3">
		 			 
		 			  
		 			 <a class="btn btn-primary"  id="showCard" role="button" style="text-align: center;">View Records</a>
		 			  </div></center>
		 			 <br>
		 			  
		 				 
			<br>
			 
		 			   
		 			 
		 			  
			<br>
		<center>   	<div class="card" id="myCard" style="width: 18rem; display:none;text-align: center; ">
  <div class="card-body" style="text-align: center;">
 
    <h5 class="card-title">LAND  OWNER DETAILS</h5>
     
    <img alt="owner" src="${read1.image}">
     <h6 class="card-subtitle mb-2 text-muted">OWNER IMAGE: ${read1.image}</h6>
    <h6 class="card-subtitle mb-2 text-muted">OWNER NAME: ${read1.ownerName}</h6>
    <h6 class="card-subtitle mb-2 text-muted">AADHAR NUMBER: ${read1.adharNumber}</h6>
    <h6 class="card-subtitle mb-2 text-muted">MOBILE NUMBER: ${read1.phoneNumber}</h6>
    <h6 class="card-subtitle mb-2 text-muted">YEAR OF REGISTERATION: ${read1.year}</h6> 
     
  </div>
 </div>	
	</center>		
	 
			  
<h5 style="color: red">${findnot1}</h5>
			
	
<!-- Footer -->
<footer class="bg-primary text-center text-white fixed-bottom">
     
    <!-- Grid container -->

    <!-- Copyright -->
    <div class="text-center p-3" style="background-color:#3e4f4c;">
        © 2023 Copyright:
        <a class="text-white" href="mahalakshmi.xworkz@gmail.com">LandRecords</a>
    </div>
    <!-- Copyright -->
</footer>
<!-- Footer -->
 
    <!-- Include Bootstrap and jQuery scripts -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>

    
 <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>

<script>
  document.getElementById("showCard").addEventListener("click", function() {
     $("#myCard").show();
     
     
    setTimeout(function(){
    	 $("#myCard").hide();
     },15000);
     
  });
  
 
</script>
 
 
 
  


</body>

</html>