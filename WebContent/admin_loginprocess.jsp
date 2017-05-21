<%@ page language="java" import="java.util.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="org.omg.CORBA.PUBLIC_MEMBER"%>
<%
		String username=getServletContext().getInitParameter("Username");
		String password=getServletContext().getInitParameter("Password");
		
if(request.getParameter("username").equalsIgnoreCase(username)&& request.getParameter("userpass").equalsIgnoreCase(password))
{
session.setAttribute("islogin","plz sign in first");
%>
<jsp:forward page="ahome.jsp"></jsp:forward>
<% 
}

else{
request.setAttribute("Error","Sorry! Username or Password Error. Please Enter Correct Detail");
session.setAttribute("Loginmsg","plz sign in first");
%>
<jsp:forward page="admin_log.jsp"></jsp:forward>
<% 
}
%>

    