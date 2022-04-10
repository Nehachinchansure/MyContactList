<%@page import="edu.jsp.mycontactlist.dto.Person"%>
<%@page import="edu.jsp.mycontactlist.dao.ContactListDataBaseOperations"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Contact</title>
</head>
<body>
	<%
		String name=request.getParameter("name");
		ContactListDataBaseOperations operations=new ContactListDataBaseOperations();
		if(operations.deleteContact(name))
		{
	%>
	<jsp:include page="/allContacts"/>
	<%
		}
		else
		{
	%>
	<h1>Contact Could not Delete !!</h1>
	<%
		}
	%>
	
</body>
</html>