

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- Bootstrap core CSS -->

    <!-- Custom styles for this template -->
    
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


    
    <div class="container">
			
            <div >
						    <div class="topnav">
  <a class="active" href="landing.html">Home</a>
  <a href="contact.html">Contact</a>
  
 
        
  
  
  
    
  </div>
  
</div>
</div>
    
    
<title>JSP List Tutor Records</title>
</head>
<body>
    
    
    <sql:setDataSource
        var="myDS"
        driver="org.gjt.mm.mysql.Driver"
        url="jdbc:mysql://localhost:3306/FYP?autoReconnect=true&useSSL=false"
        user="root" password="Ucc*62229"/> <%-- establish database connection --%>
     
    <sql:query var="listUsers"   dataSource="${myDS}"> <%-- create variable called list users and query from table Trainer_Time --%>
        SELECT * FROM Trainer_Time;
    </sql:query>
     
        <caption><h2>List of Tutors</h2></caption> 
        <div class="row large-centered">
    <div align="center">
        
        <div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100">
        <table border="1" cellpadding="5">
            
            <thead>
            <tr class="table100-head">
                <th>Email</th>    <%-- headings for columns --%>
                <th>Sport</th>
                <th>Location</th>
                <th>Cash PRICE - € </th>
                <th>Day 1</th>
                <th>Day 2</th>
                <th>Day 3</th>
                
                <th>Book</th>
            </tr>
            </thead>
            <c:forEach var="Trainer_Time" items="${listUsers.rows}"> <%-- call variable declared above and print from table --%>
                <tbody>     
                <tr>
                    
                    
                    <td><c:out value="${Trainer_Time.email}" /></td>   <%-- get values --%>
                    <td><c:out value="${Trainer_Time.sport}" /></td>
                    <td><c:out value="${Trainer_Time.location}" /></td>
                    <td><c:out value="${Trainer_Time.price}" /></td>
                    <td><c:out value="${Trainer_Time.day1}" /></td>
                    <td><c:out value="${Trainer_Time.day2}" /></td>
                    <td><c:out value="${Trainer_Time.day3}" /></td>
                   
                    <td>
                        <form name="bookSubmitForm" action="book.jsp">
                            
				<input type="submit" name="bookButton" value="book"</input>
				<input type="hidden" name="email" value="${Trainer_Time.email}"</input>
				<input type="hidden" name="sport" value="${Trainer_Time.sport}"</input>
				<input type="hidden" name="location" value="${Trainer_Time.location}"</input>
				<input type="hidden" name="price" value="${Trainer_Time.price}"</input>
				<input type="hidden" name="day1" value="${Trainer_Time.day1}"</input>
                                <input type="hidden" name="day2" value="${Trainer_Time.day2}"</input>
                                <input type="hidden" name="day3" value="${Trainer_Time.day3}"</input>
                                
			</form>
                    </td>
                 
                </tr>
                
                </tbody>
            </c:forEach>
        </table>
            
        
    </div>
        </div>    
                
                <!--===============================================================================================-->	
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
 
<%-- code taken from https://www.codejava.net/java-ee/jsp/how-to-list-records-in-a-database-table-using-jsp-and-jstl
     code taken from http://www.javaquizplayer.com/blogposts/jsp-select-and-process-table-row-data-9.html for booking method
template css and bootstrap taken from https://colorlib.com/wp/template/responsive-table-v1/ 
--%>