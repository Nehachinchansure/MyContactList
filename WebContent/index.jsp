<%@page import="java.util.Iterator"%>
<%@page import="edu.jsp.mycontactlist.dto.Person"%>
<%@page import="java.util.List"%>
<%@page import="edu.jsp.mycontactlist.dao.ContactListDataBaseOperations"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HomePage</title>
	<link rel="stylesheet" type="text/css" href="./CSSFiles/Style.css">	
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Inter&display=swap" rel="stylesheet">
	<script src="https://kit.fontawesome.com/fe39a92598.js" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/6b20b1c14d.js" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		
		<header class="header">	
			
			<a href="./allContacts"><i class="fa-solid fa-address-book fas fa-1x"><h1>My Contact List</h1></i></a>		
		</header>
		<section class="contacts-library">
		<br><br><br><br><br><br><br><br><br>
			<center>
			<a href="./allContacts"><i class="fa-solid fa-address-book fas fa-10x"></i></a>
			</center>
		</section>
		</div>
		
</body>
</html>