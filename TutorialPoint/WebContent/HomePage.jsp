<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
.mySlides {display:none;}
</style>
<title>eduOnline</title>
</head>
<body>

<header>
eduOnline
</header>


<ul id="mainmenu" style="list-style-type:none;">
	<li><a class="active" href="HomePage.jsp">Home</a></li>
	<li><a href="ViewAllCourses.jsp">Courses</a></li>
	<li><a href="About.jsp">About Us</a></li>
</ul>

<ul style= "list-style-type:none; margin:0px 0px 0px 900px ; padding:0px; background:none; text-shadow:2px 2px 5px #ff0000;" >
<!-- top right bottom left -->
	<li><a style="float:right;" href="UserLogin.jsp">Sign In</a></li>
	<li><a href="UserAccRegister.jsp">Sign Up</a></li>
</ul>
<br/><br/><br/>


<div class="w3-content w3-section">
  <img class="mySlides" src=".\Images\yellow banner.png" style="width:100% ; height:500px">
  <img class="mySlides" src=".\Images\Elearning-banner.jpg" style="width:100% ; height:500px">
  <img class="mySlides" src=".\Images\e-learning-concept_23-2147507067.jpg" style="width:100% ; height:500px">
   <img class="mySlides" src=".\Images\2.jpg" style="width:100% ; height:500px">
    <img class="mySlides" src=".\Images\learning+4.jpg" style="width:100% ; height:500px">
</div>


<!-- <img  src=".\Images\3347125-vector-image-books-fly-into-your-laptop.jpg" width=100%; height=300px> -->


<form action="SearchResullts.jsp">
<p style = " text-align: center; font-size:30px"> Search courses
<input style="height:50px; width:350px" type="search" name="search" autofocus placeholder="Search by coursename" autocomplete="on">
<input type="image" src=".\Images\images.png" width="40" height="40">

</p>
</form>

<h1>Welcome to eduOnline! Start learning now!!</h1>

<div class="img">
  <a href="C++Page.jsp">
    <img src=".\Images\C++ image.jpg" alt="C++" width="600" height="400">
  </a>
  <div class="desc">C++</div>
</div>


<div class="img">
  <a href="CPage.jsp">
    <img src=".\Images\C.jpg" alt="C" width="300" height="100">
  </a>
  <div class="desc">Programming in C</div>
</div>

<div class="img">
  <a  href="HTMLPage.jsp">
    <img src=".\Images\html.jpg" alt="HTML" width="600" height="400">
  </a>
  <div class="desc">HTML</div>
</div>

<!-- <div class="img">
  <a target="_blank" href="img_mountains.jpg">
    <img src="img_mountains.jpg" alt="Mountains" width="600" height="400">
  </a>
  <div class="desc">Add a description of the image here</div>
</div> -->
<br/>

<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 3000); // Change image every 5 seconds
}
</script>


<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>


</body>
</html>