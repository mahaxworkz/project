<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <!-- //web font -->
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
 
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
     
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg" style="background-color:#3e4f4c;">
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
                    <a class="nav-link" href="index.jsp">home</a>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link" href="admin.jsp">LogOut</a>
                </li>
                
             </ul>   
                
           
            <!-- Right elements -->
        </div>
        <!-- Collapsible wrapper -->
    </div>
    <!-- Container wrapper -->
</nav>
<!-- Navbar -->
<!-- main -->
	 
	 <div class="container" style="text-align: center">
    
    <br><br><br><br><br><br>
    
    <a class="btn btn-primary" href="Register.jsp" role="button" style="padding: 20px;background-color:#3e4f4c; padding-left: 40px;padding-right: 30px;">USER SIGNUP</a>
     
        
      <a class="btn btn-primary" href="userSignin.jsp" role="button"style="padding: 20px;background-color:#3e4f4c; padding-left: 40px;padding-right: 30px;">USER SIGNIN</a>
</div>

	 
	
 
 
  
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

 
</body>
</html>