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
<title>Display All Contacts</title>
	<link rel="stylesheet" type="text/css" href="./CSSFiles/Style.css">	
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Inter&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/6b20b1c14d.js" crossorigin="anonymous"></script>
</head>
<body>
	<%
		ContactListDataBaseOperations operations=new ContactListDataBaseOperations();
		List<Person> allContacts=operations.displayAllContacts();
		
		Iterator<Person> itr=allContacts.iterator();
		
		if(allContacts.isEmpty())
		{
	%>
	<h1>No Contacts Found</h1>
	<%
		}
		else
		{	
	%>
	<div class="container">
		<!--  SEARCH FORM -->
		<header class="header">					
			<form class="search-bar" action="search">
				<input type="search-name" class="contact-search" name="search-area" placeholder="Search">
			</form>

			<!--  ADD-CONTACT BUTTON/ICON -->
			<a href="./add"><i class="fas fa-plus-circle add"></i></a>
			<!--  View-CONTACT BUTTON/ICON -->
			<a href="./allContacts"><i class="fa-solid fa-address-card fas"></i></a>			
		</header>
	<section class="contacts-library">
			<ul class="contacts-list">
	<%
			while(itr.hasNext())
			{
				Person p=itr.next();
	%>
					
				<a href="./contactProfile?name=<%=p.getName() %>">
					<div class="contact-section">
						<li class="list__item">
							<p class="contact-name"><%= p.getName() %></p>							
						</li>
						<div>
						<li class="list__item">
							<a href="#"><i class="fas fa-phone"></i></a>
							<a href="./edit?name=<%=p.getName() %>"><i class="fa-solid fa-pen fas"></i></a>
							<a href="./delete?name=<%=p.getName() %>"><i class="fa-solid fa-trash fas"></i></a>							
						</li>
						</div>
					</div>
				</a>
				<hr>
		<%
			}
		%>
		</ul>
		</section>
		</div>
		<%			
		}
		%>
</body>
</html>