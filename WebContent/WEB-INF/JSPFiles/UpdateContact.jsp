<%@page import="edu.jsp.mycontactlist.dto.Person"%>
<%@page import="edu.jsp.mycontactlist.dao.ContactListDataBaseOperations"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Contact</title>
</head>
<body>
	<% 
		String oldName=request.getParameter("Name");
		String name=request.getParameter("name");
		String ph=request.getParameter("phone-number");
		long phoneNumber=Long.parseLong(ph);
		String emailID=request.getParameter("e-mail");
		String dob=request.getParameter("dob");
		
		Person p=new Person();
		p.setName(name);
		p.setPhoneNumber(phoneNumber);
		p.setEmailId(emailID);
		p.setDob(dob);
		
		ContactListDataBaseOperations operations=new ContactListDataBaseOperations();
		if(operations.updateContact(p))
		{		
	%>
	<jsp:include page="/allContacts"/>
	<%
		}
		else
		{
	%>
	<jsp:include page="/edit"/>
	<%
		}
	%>
		
		

</body>
</html>