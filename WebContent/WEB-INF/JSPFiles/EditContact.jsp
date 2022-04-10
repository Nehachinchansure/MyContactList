<%@page import="edu.jsp.mycontactlist.dto.Person"%>
<%@page import="edu.jsp.mycontactlist.dao.ContactListDataBaseOperations"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Contact Form</title>
	<link rel="stylesheet" type="text/css" href="./CSSFiles/style-edit.css">	
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Inter&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/6b20b1c14d.js" crossorigin="anonymous"></script>
</head>
<body>
	<%
		String name=request.getParameter("name");
		ContactListDataBaseOperations operations=new ContactListDataBaseOperations();
		Person p=operations.searchContact(name);
	%>
	
	<div class="container">
		<header class="hero">
			
			<a href="./allContacts">
			     <i class="fas fa-chevron-circle-left back-btn"></i>
			</a>
		</header>
		<form action="update">
		<section class="contact-info">

			<div class="info-line">
				<i class="fa-solid fa-user fas icon-gradient"></i>
				<input type="text" class="type" name="name" readonly="readonly" required Value="<%=p.getName() %>">
			</div>

			<div class="info-line">
				<i class="fas fa-phone icon-gradient"></i>
				<input type="text" class="type" name="phone-number" required Value="<%=p.getPhoneNumber() %>">
			</div>			

			<div  class="info-line">
				<i class="fas fa-envelope icon-gradient"></i>
				<input type="text" class="type" name="e-mail" required Value="<%=p.getEmailId() %>">
			</div>			

			<div class="info-line">
				<i id="calender" class="fas fa-solid fa-calendar icon-gradient"></i>
				<input type="date" class="type" name="dob" required Value="<%=p.getDob() %>">
			</div>
		</section>

		<section class="button-container">
			<div class="update-contact">
				<i  class="fas fa-check-circle icon-gradient"></i>
				<input type="submit" class="button" value="Update Contact">
			</div>
		</section>
	</form>
	</div>
</body>
</html>