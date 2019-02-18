<%-- 
    Document   : book
    Created on : 07-Jan-2019, 15:21:35
    Author     : jim
--%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN"
          "http://www.w3.org/TR/html4/strict.dtd">


<html>
<head>
  <title>Book Tutor</title>
   <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap1.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
    
  <h2>Booking Details</h2>
  
  
    <div class="row large-centered">
    <div align="center">
<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100">
        <table border="1" cellpadding="5">
            
            <thead>The following tutor is available at the these times and locations. Please note their cash price per lesson.<br>
   
            At JGFitness We offer our own set price of 25 Euro + tax if paid through PayPal
            </thead>
            <tbody>
		<tr>
		<td>Email</td>
		<td name="email">${param.email}</td>
		</tr>
		<tr>
		<td>Sport</td>
		<td name="sport">${param.sport}</td>
		</tr>
		<tr>
		<td>Location</td>
		<td name="location">${param.location}</td>
		</tr>
		<tr>
		<td>Price</td>
		<td name="price">${param.price}</td>
		</tr>
            </tbody>
               
          
          
                
	
	</table>
                            
                    <form name="f1" method="get" action="payment.jsp">
                <select name="day">
                    <option><td>${param.day1}</td></option>
                    <option><td>${param.day2}</td></option>
                    <option><td>${param.day3}</td></option>

  </select>
  <input type="submit" name="submit" value="Select Day">
                    </form>
                    </div>
                        </div>
                </div>
</div>
    </div>
    </div>
                
    
<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap1.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
</body>
</html>	

<%-- select record code taken from http://www.javaquizplayer.com/blogposts/jsp-select-and-process-table-row-data-9.html
    template css and bootstrap taken from https://colorlib.com/wp/template/responsive-table-v1/ 

--%>