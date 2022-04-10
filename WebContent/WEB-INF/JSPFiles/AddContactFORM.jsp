<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Contact Form</title>
	<link rel="stylesheet" type="text/css" href="./CSSFiles/style-edit.css">	
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Inter&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/6b20b1c14d.js" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<header class="hero">
			
			<a href="./index">
			     <i class="fas fa-chevron-circle-left back-btn"></i>
			</a>
		</header>
		<form action="addContact">
		<section class="contact-info">

			<div class="info-line">
				<i class="fa-solid fa-user fas icon-gradient"></i>
				<input type="text" class="type" name="name" placeholder="Name">
			</div>

			<div class="info-line">
				<i class="fas fa-phone icon-gradient"></i>
				<input type="text" class="type" name="phone-number" placeholder="Phone Number">
			</div>			

			<div  class="info-line">
				<i class="fas fa-envelope icon-gradient"></i>
				<input type="text" class="type" name="e-mail" placeholder="Email">
			</div>			

			<div class="info-line">
				<i id="calender" class="fas fa-solid fa-calendar icon-gradient"></i>
				<input type="date" class="type" name="dob" placeholder="DOB">
			</div>
		</section>

		<section class="button-container">
			<div class="update-contact">
				<i  class="fas fa-check-circle icon-gradient"></i>
				<input type="submit" class="button" value="Save Contact">
			</div>
		</section>
	</form>
	</div>
	
</body>
</html>