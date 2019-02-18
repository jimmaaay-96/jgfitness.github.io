

<!DOCTYPE html>
<html>
<head>
<title>Landing page</title>
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7; IE=EmulateIE9">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
    <link rel="stylesheet" type="text/css" href="css/register.css" media="all" />
    <link rel="stylesheet" type="text/css" href="css/demo.css" media="all" />
    
    
</head>
<body>
<div class="container">
			
            <div >
						    <div class="topnav">
  <a class="active" href="landing.html">Back</a>
  <a href="contact.html">Contact</a>
  
  
  <a   href="landing.html"> Home </a>
</div>
                        
                        
            </div>
			<header>
				<h1>Upload Trainer Details <span> </span></h1>
            </header>       
                        <div  class="form"><form action="trainer.jsp" method="post">
    		<form id="contactform">
                    
                        <p class="contact"><label for="email">User Email</label></p> 
    			<input id="email" name="email" placeholder="email" required="" tabindex="1" type="text">
                    
    			<p class="contact"><label for="sport">Sport</label></p> 
    			<input id="sport" name="sport" placeholder="sport" required="" tabindex="2" type="text">
                        
                        <p class="contact"><label for="location">Your location for lessons</label></p> 
    			<input id="location" name="location" placeholder="location" required="" tabindex="3" type="text"> 
                        
                        <p class="contact"><label for="price">Your price in Euro NOTE PAYPAL PRICES ARE FIXED AT e25</label></p> 
    			<input id="price" name="price" placeholder="price" required="" tabindex="4" type="text"> 
                        
                        <p class = "days"<label for="days">Choose your days and time in the format Mon 12:00 - 1:00 am:</label></p>
                        
                        <p class="contact"><label for="day1">Day 1</label></p> 
    			<input id="day1" name="day1" placeholder="day1" required="" tabindex="5" type="text">
                        
                        <p class="contact"><label for="day2">Day 2</label></p> 
    			<input id="day2" name="day2" placeholder="day2" required="" tabindex="6" type="text">
                        
                        <p class="contact"><label for="day3">Day 3</label></p> 
    			<input id="day3" name="day3" placeholder="day3" required="" tabindex="7" type="text">
                        
            
            <input type="submit" class="button" name="submit" id="submit" tabindex="5" value="Save!" >
            
            
   </form> 
</div>      
</div>

</body>
</html>
