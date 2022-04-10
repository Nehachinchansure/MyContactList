<%@page import="edu.jsp.mycontactlist.dto.Person"%>
<%@page import="edu.jsp.mycontactlist.dao.ContactListDataBaseOperations"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact Profile</title>
	<link rel="stylesheet" type="text/css" href="./CSSFiles/style-profile.css">	
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Inter&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="./CSSFiles/Style.css">	
    <script src="https://kit.fontawesome.com/6b20b1c14d.js" crossorigin="anonymous"></script>
</head>
<body>
	<%
		String name=request.getParameter("name");
		ContactListDataBaseOperations operations=new ContactListDataBaseOperations();
		Person p=operations.searchContact(name);
	%>
	<div class="container">
		<!--  SEARCH FORM -->
		<header class="header">	
			<a href="./allContacts">
			     <i class="fas fa-chevron-circle-left back-btn"></i>
			</a>		
			<form class="search-bar" action="search">
				<input type="search-name" class="contact-search" name="search-area" placeholder="Search">
			</form>

			<!--  ADD-CONTACT BUTTON/ICON -->
			<a href="./add"><i class="fas fa-plus-circle add"></i></a>
			<!--  View-CONTACT BUTTON/ICON -->
			<a href="./allContacts"><i class="fa-solid fa-address-card fas"></i></a>			
		</header>
		<section class="contact-info">
			
			<div class="info-line">
				<i class="fa-solid fa-user fas icon-gradient"></i>
				<p class="user"><%=p.getName() %></p>
			</div>
			
			<div class="info-line">
				<i class="fas fa-phone icon-gradient"></i>
				<p class="phone-number"><%=p.getPhoneNumber()%></p>
			</div>

			<div class="info-line">
				<i class="fas fa-envelope icon-gradient"></i>
				<p class="email"><%=p.getEmailId()%></p>
			</div>

			<div class="info-line">
				<i id="calender" class="fas fa-solid fa-calendar icon-gradient"></i>
				<p class="address"><%=p.getDob() %></p>
			</div>
			<div class="edit-button">
				<a href="./edit?name=<%=p.getName() %>">			
					<i class="fa-solid fa-pen fas icon-gradient"></i>
				</a>				
			</div>
			
		</section>

		
	</div>
</body>
</html>